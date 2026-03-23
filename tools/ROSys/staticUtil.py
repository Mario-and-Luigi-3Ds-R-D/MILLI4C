import struct
import csv
from pathlib import Path
from typing import BinaryIO
 
from ROSys.roUtil import (
    HDR, HEADER_SIZE, CRO_MAGIC, CRO_ALIGN, CRO_PAD, INVALID_SEG,
    SIZEOF_SEGMENT_ENTRY, SIZEOF_NAMED_EXPORT, SIZEOF_INDEXED_EXPORT,
    SIZEOF_TRIE_NODE,
    SegType, SegmentEntry, NamedExportEntry, IndexedExportEntry, CROModule,
    read_u32, write_u32, align_up, pad_to, compute_cro_hashes,
    build_export_trie, pack_trie_nodes, make_seg_tag, decode_seg_tag,
)

STATIC_TEXT_VA   = 0x00100000
STATIC_RODATA_VA = 0x00000000  # may vary; often contiguous after .text
STATIC_DATA_VA   = 0x00000000  # ditto
 
# The CRS has no "nnroControlObject_" you idiot
CRS_CTRL_OBJ_TAG = INVALID_SEG

 
class CRSParseError(Exception):
    pass
 
 
# Parses the crs,

def parse_crs(data: bytes) -> CROModule:
    if len(data) < HEADER_SIZE:
        raise CRSParseError(f"Report: File too small: {len(data)} bytes")
 
    magic = data[HDR.MAGIC : HDR.MAGIC + 4]
    if magic not in (CRO_MAGIC, b"FIXD"):
        raise CRSParseError(f"Report: Bad magic: {magic!r}")
 
    mod = CROModule(is_crs=True)
 
    name_off  = read_u32(data, HDR.NAME_OFFSET)
    name_size = read_u32(data, HDR.MOD_NAME_SIZE)
    if name_off and name_size:
        mod.name = data[name_off : name_off + name_size].rstrip(b"\x00").decode("ascii", errors="replace")
 
    mod.ctrl_obj_tag  = read_u32(data, HDR.CTRL_OBJ_TAG)   # should be INVALID_SEG
    mod.on_load_tag   = read_u32(data, HDR.ON_LOAD_TAG)
    mod.on_exit_tag   = read_u32(data, HDR.ON_EXIT_TAG)
    mod.on_unresolved = read_u32(data, HDR.ON_UNRESOLVED)
    mod.bss_size      = read_u32(data, HDR.BSS_SIZE)
 
    seg_off = read_u32(data, HDR.SEG_TABLE_OFF)
    seg_cnt = read_u32(data, HDR.SEG_TABLE_CNT)
    for i in range(seg_cnt):
        base = seg_off + i * SIZEOF_SEGMENT_ENTRY
        s_off  = read_u32(data, base)
        s_size = read_u32(data, base + 4)
        s_type = SegType(read_u32(data, base + 8))
        seg = SegmentEntry(seg_type=s_type)
        if s_type != SegType.BSS and s_off and s_size:
            seg.data = bytearray(data[s_off : s_off + s_size])
        seg.size = s_size
        mod.segments.append(seg)
 
    # Named export
    exp_named_off = read_u32(data, HDR.EXP_NAMED_OFF)
    exp_named_cnt = read_u32(data, HDR.EXP_NAMED_CNT)
    exp_str_off   = read_u32(data, HDR.EXP_STR_OFF)
    for i in range(exp_named_cnt):
        base    = exp_named_off + i * SIZEOF_NAMED_EXPORT
        n_off   = read_u32(data, base)
        seg_tag = read_u32(data, base + 4)
        name    = _read_cstring(data, n_off)
        mod.named_exports.append(NamedExportEntry(name=name, seg_tag=seg_tag))
 
    # Indexed export
    exp_idx_off = read_u32(data, HDR.EXP_IDX_OFF)
    exp_idx_cnt = read_u32(data, HDR.EXP_IDX_CNT)
    for i in range(exp_idx_cnt):
        base    = exp_idx_off + i * SIZEOF_INDEXED_EXPORT
        seg_tag = read_u32(data, base)
        mod.indexed_exports.append(IndexedExportEntry(seg_tag=seg_tag))
 
    return mod
 
 
def _read_cstring(data: bytes, offset: int) -> str:
    end = data.index(b"\x00", offset)
    return data[offset:end].decode("ascii", errors="replace")
 
 
# Start the building process
 
def build_crs(
    module_name: str,
    named_exports: list[NamedExportEntry],
    indexed_exports: list[IndexedExportEntry],
    text_va: int = STATIC_TEXT_VA,
    text_size: int = 0,
    rodata_va: int = 0,
    rodata_size: int = 0,
    data_va: int = 0,
    data_size: int = 0,
    bss_size: int = 0,
    on_unresolved_va: int = INVALID_SEG,
) -> bytes:

    exp_strings = bytearray()
    exp_name_offsets: list[int] = []
    for exp in named_exports:
        exp_name_offsets.append(len(exp_strings))
        exp_strings += exp.name.encode("ascii") + b"\x00"
 
    mod_name_bytes = module_name.encode("ascii") + b"\x00"
 
    trie_nodes = build_export_trie([e.name for e in named_exports])
    trie_bytes  = pack_trie_nodes(trie_nodes)
 
    # CRS LAYOUT START
    #
    # yuh
    CODE_OFFSET  = HEADER_SIZE   # 0x180
 
    mod_name_off = CODE_OFFSET
    cursor = mod_name_off + len(mod_name_bytes)
    cursor = align_up(cursor, 4)
 
    # Always 6 segment entries (CRO0 shit)
    NUM_SEGS = 6
    seg_table_off = cursor
    cursor += NUM_SEGS * SIZEOF_SEGMENT_ENTRY
 
    # Named export table
    exp_named_off = cursor
    cursor += len(named_exports) * SIZEOF_NAMED_EXPORT
 
    # Indexed export table
    exp_idx_off = cursor
    cursor += len(indexed_exports) * SIZEOF_INDEXED_EXPORT
 
    exp_trie_off = cursor
    cursor += len(trie_bytes)
    cursor = align_up(cursor, 4)
 
    # Export strings
    exp_str_off = cursor
    cursor += len(exp_strings)
    cursor = align_up(cursor, 4)
 
    content_end = align_up(cursor, 4)
    file_size   = align_up(content_end, CRO_ALIGN)
    data_offset = file_size
 
    buf = bytearray(file_size)
    for i in range(cursor, file_size):
        buf[i] = CRO_PAD
 
    # Header
    buf[HDR.MAGIC           : HDR.MAGIC + 4]     = CRO_MAGIC
    write_u32(buf, HDR.NAME_OFFSET,     mod_name_off)
    write_u32(buf, HDR.NEXT_MODULE,     0)
    write_u32(buf, HDR.PREV_MODULE,     0)
    write_u32(buf, HDR.FILE_SIZE,       file_size)
    write_u32(buf, HDR.BSS_SIZE,        bss_size)
    write_u32(buf, HDR.FIXED_SIZE,      0)
    write_u32(buf, HDR.UNK_9C,          0)
    write_u32(buf, HDR.CTRL_OBJ_TAG,    CRS_CTRL_OBJ_TAG)  # 0xFFFFFFFF
    write_u32(buf, HDR.ON_LOAD_TAG,     INVALID_SEG)
    write_u32(buf, HDR.ON_EXIT_TAG,     INVALID_SEG)
    write_u32(buf, HDR.ON_UNRESOLVED,   on_unresolved_va) #nndbgPanic
    write_u32(buf, HDR.CODE_OFFSET,     CODE_OFFSET)
    write_u32(buf, HDR.CODE_SIZE,       0) # No code in CRS
    write_u32(buf, HDR.DATA_OFFSET,     data_offset)
    write_u32(buf, HDR.DATA_SIZE,       0)
    write_u32(buf, HDR.MOD_NAME_OFFSET, mod_name_off)
    write_u32(buf, HDR.MOD_NAME_SIZE,   len(mod_name_bytes))
    write_u32(buf, HDR.SEG_TABLE_OFF,   seg_table_off)
    write_u32(buf, HDR.SEG_TABLE_CNT,   NUM_SEGS)
    write_u32(buf, HDR.EXP_NAMED_OFF,   exp_named_off)
    write_u32(buf, HDR.EXP_NAMED_CNT,   len(named_exports))
    write_u32(buf, HDR.EXP_TRIE_OFF,    exp_trie_off)
    write_u32(buf, HDR.EXP_TRIE_CNT,    len(trie_nodes))
    write_u32(buf, HDR.EXP_STR_OFF,     exp_str_off)
    write_u32(buf, HDR.EXP_STR_SIZE,    len(exp_strings))
    write_u32(buf, HDR.EXP_IDX_OFF,      exp_str_off)
    write_u32(buf, HDR.EXP_IDX_CNT,      len(indexed_exports))
    for field_off in (
        HDR.IMP_MOD_OFF,
        HDR.EXT_PATCH_OFF,
        HDR.IMP_NAMED_OFF,
        HDR.IMP_IDX_OFF,
        HDR.IMP_ANON_OFF,
    ):
        write_u32(buf, field_off, content_end)
    for field_off in (
        HDR.IMP_STR_OFF,
        HDR.STATIC_ANON_OFF,
        HDR.INT_PATCH_OFF,
        HDR.STATIC_PATCH_OFF,
    ):
        write_u32(buf, field_off, file_size)
    for field_off in (
        HDR.IMP_MOD_CNT,
        HDR.EXT_PATCH_CNT,
        HDR.IMP_NAMED_CNT,
        HDR.IMP_IDX_CNT,
        HDR.IMP_ANON_CNT,
        HDR.IMP_STR_SIZE,
        HDR.STATIC_ANON_CNT,
        HDR.INT_PATCH_CNT,
        HDR.STATIC_PATCH_CNT,
    ):
        write_u32(buf, field_off, 0)
    buf[mod_name_off : mod_name_off + len(mod_name_bytes)] = mod_name_bytes
 
    # Setup places
    #
    # Text, ROData, Data, two dummys and a Text sect
    bss_va = align_up(data_va + data_size, 0x1000) if data_va and data_size else 0
    fixed_segs = [
        (text_va,    text_size,   SegType.TEXT),
        (rodata_va,  rodata_size, SegType.RODATA),
        (data_va,    data_size,   SegType.DATA),
        (bss_va,     0,           SegType.RODATA),
        (0x4000000,  bss_size,    SegType.RODATA),
        (0,          0,           SegType.TEXT),
    ]
    for i, (va, sz, stype) in enumerate(fixed_segs):
        base = seg_table_off + i * SIZEOF_SEGMENT_ENTRY
        write_u32(buf, base,     va)
        write_u32(buf, base + 4, sz)
        write_u32(buf, base + 8, int(stype))

    for i, (exp, name_off_in_str) in enumerate(zip(named_exports, exp_name_offsets)):
        base = exp_named_off + i * SIZEOF_NAMED_EXPORT
        write_u32(buf, base,     exp_str_off + name_off_in_str)
        write_u32(buf, base + 4, exp.seg_tag)
 
    for i, iexp in enumerate(indexed_exports):
        base = exp_idx_off + i * SIZEOF_INDEXED_EXPORT
        write_u32(buf, base, iexp.seg_tag)
 
    buf[exp_trie_off : exp_trie_off + len(trie_bytes)] = trie_bytes
 
    buf[exp_str_off : exp_str_off + len(exp_strings)] = exp_strings
 
    compute_cro_hashes(buf)
 
    return bytes(buf)
 
 
# Load from CSV

def load_named_exports_from_csv(csv_path: str) -> list[NamedExportEntry]:
    entries: list[NamedExportEntry] = []
    with open(csv_path, newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            name    = row["symbol_name"].strip()
            seg_idx = int(row.get("segment_index", "0"), 0)
            offset  = int(row.get("offset", "0"), 0)
            tag     = make_seg_tag(seg_idx, offset)
            entries.append(NamedExportEntry(name=name, seg_tag=tag))
    return entries

# Save the file
 
def save_crs(path: str, data: bytes) -> None:
    Path(path).parent.mkdir(parents=True, exist_ok=True)
    Path(path).write_bytes(data)
    print(f"Report ROSys: Wrote {len(data):#x} bytes → {path}")