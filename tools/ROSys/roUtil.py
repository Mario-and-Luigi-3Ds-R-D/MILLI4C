import struct
import hashlib
from enum import IntEnum
from dataclasses import dataclass, field
from typing import Optional
 
CRO_MAGIC   = b"CRO0"
FIXD_MAGIC  = b"FIXD"
CRO_ALIGN   = 0x1000
CRO_PAD     = 0xCC
INVALID_SEG = 0xFFFFFFFF # if seg is invaild then do ts
 
# https://www.3dbrew.org/wiki/CRO0 
# CRO0 HEADER
#
# No comment names. Just look it up, bro.
 
class HDR(IntEnum):
    HASH0           = 0x0000
    HASH1           = 0x0020
    HASH2           = 0x0040
    HASH3           = 0x0060
    MAGIC           = 0x0080
    NAME_OFFSET     = 0x0084
    NEXT_MODULE     = 0x0088
    PREV_MODULE     = 0x008C
    FILE_SIZE       = 0x0090
    BSS_SIZE        = 0x0094
    FIXED_SIZE      = 0x0098
    UNK_9C          = 0x009C
    CTRL_OBJ_TAG    = 0x00A0
    ON_LOAD_TAG     = 0x00A4
    ON_EXIT_TAG     = 0x00A8
    ON_UNRESOLVED   = 0x00AC
    CODE_OFFSET     = 0x00B0
    CODE_SIZE       = 0x00B4
    DATA_OFFSET     = 0x00B8
    DATA_SIZE       = 0x00BC
    MOD_NAME_OFFSET = 0x00C0
    MOD_NAME_SIZE   = 0x00C4
    SEG_TABLE_OFF   = 0x00C8
    SEG_TABLE_CNT   = 0x00CC
    EXP_NAMED_OFF   = 0x00D0
    EXP_NAMED_CNT   = 0x00D4
    EXP_IDX_OFF     = 0x00D8
    EXP_IDX_CNT     = 0x00DC
    EXP_STR_OFF     = 0x00E0
    EXP_STR_SIZE    = 0x00E4
    EXP_TRIE_OFF    = 0x00E8
    EXP_TRIE_CNT    = 0x00EC
    IMP_MOD_OFF     = 0x00F0
    IMP_MOD_CNT     = 0x00F4
    EXT_PATCH_OFF   = 0x00F8
    EXT_PATCH_CNT   = 0x00FC
    IMP_NAMED_OFF   = 0x0100
    IMP_NAMED_CNT   = 0x0104
    IMP_IDX_OFF     = 0x0108
    IMP_IDX_CNT     = 0x010C
    IMP_ANON_OFF    = 0x0110
    IMP_ANON_CNT    = 0x0114
    IMP_STR_OFF     = 0x0118
    IMP_STR_SIZE    = 0x011C
    STATIC_ANON_OFF = 0x0120
    STATIC_ANON_CNT = 0x0124
    INT_PATCH_OFF   = 0x0128
    INT_PATCH_CNT   = 0x012C
    STATIC_PATCH_OFF= 0x0130
    STATIC_PATCH_CNT= 0x0134
 
HEADER_SIZE = 0x180
 
 
# entry sizez
 
SIZEOF_SEGMENT_ENTRY    = 12
SIZEOF_NAMED_EXPORT     = 8
SIZEOF_INDEXED_EXPORT   = 4
SIZEOF_TRIE_NODE        = 8
SIZEOF_NAMED_IMPORT     = 8
SIZEOF_INDEXED_IMPORT   = 8
SIZEOF_ANON_IMPORT      = 8
SIZEOF_MODULE_ENTRY     = 20
SIZEOF_EXT_RELOC        = 12
SIZEOF_INT_RELOC        = 12
SIZEOF_STATIC_ANON_BASE = 8
 
# Seg types
 
class SegType(IntEnum):
    TEXT   = 0
    RODATA = 1
    DATA   = 2
    BSS    = 3
 
 
# Patch
 
class RelocType(IntEnum):
    R_ARM_NONE      = 0
    R_ARM_ABS32     = 2
    R_ARM_REL32     = 3
    R_ARM_THM_PC22  = 10
    R_ARM_CALL      = 28
    R_ARM_JUMP24    = 29
    R_ARM_TARGET1   = 38
    R_ARM_PREL31    = 42
 
# CRO0 Seg Tags
#
# CRO0 Sucks.
 
def make_seg_tag(seg_idx: int, offset: int) -> int:
    if seg_idx > 0xF:
        raise ValueError(f"Segment index {seg_idx} out of 4-bit range")
    return ((offset & 0x0FFFFFFF) << 4) | (seg_idx & 0xF)
 
 
def decode_seg_tag(tag: int) -> tuple[int, int]:
    seg_idx = tag & 0xF
    offset  = (tag >> 4) & 0x0FFFFFFF
    return seg_idx, offset
 
 
def seg_tag_valid(tag: int) -> bool:
    return tag != INVALID_SEG
 
 
def read_u32(data: bytes | bytearray, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]
 
 
def write_u32(buf: bytearray, offset: int, value: int) -> None:
    struct.pack_into("<I", buf, offset, value & 0xFFFFFFFF)
 
 
def read_u8(data: bytes | bytearray, offset: int) -> int:
    return data[offset]
 
 
def align_up(value: int, alignment: int) -> int:
    return (value + alignment - 1) & ~(alignment - 1)
 
 
def pad_to(buf: bytearray, size: int, pad_byte: int = CRO_PAD) -> None:
    if len(buf) < size:
        buf += bytearray([pad_byte] * (size - len(buf)))

 
def sha256_region(data: bytes | bytearray, start: int, end: int) -> bytes:
    return hashlib.sha256(data[start:end]).digest()
 
# Define hashes

def compute_cro_hashes(buf: bytearray) -> None:
    code_off      = read_u32(buf, HDR.CODE_OFFSET)
    mod_name_off  = read_u32(buf, HDR.MOD_NAME_OFFSET)
    data_off      = read_u32(buf, HDR.DATA_OFFSET)
    data_size     = read_u32(buf, HDR.DATA_SIZE)
 
    h0 = sha256_region(buf, 0x80, code_off)
    h1 = sha256_region(buf, code_off, mod_name_off)
    h2 = sha256_region(buf, mod_name_off, data_off)
    h3 = sha256_region(buf, data_off, data_off + data_size)
 
    buf[HDR.HASH0 : HDR.HASH0 + 0x20] = h0
    buf[HDR.HASH1 : HDR.HASH1 + 0x20] = h1
    buf[HDR.HASH2 : HDR.HASH2 + 0x20] = h2
    buf[HDR.HASH3 : HDR.HASH3 + 0x20] = h3
 
 
# CRO0 Entries
 
@dataclass
class SegmentEntry:
    seg_type: SegType
    data: bytearray = field(default_factory=bytearray)  # raw bytes (empty for BSS)
    size: int = 0                                        # explicit for BSS
 
 
@dataclass
class NamedExportEntry:
    name: str
    seg_tag: int
 

@dataclass
class IndexedExportEntry:
    seg_tag: int
 
 
@dataclass
class RelocationEntry:
    seg_tag: int
    reloc_type: RelocType
    addend: int = 0
    is_last: bool = False
    ref_seg: int = 0
 
 
@dataclass
class NamedImportEntry:
    name: str
    patches: list[RelocationEntry] = field(default_factory=list)
 
 
@dataclass
class IndexedImportEntry:
    export_index: int
    patches: list[RelocationEntry] = field(default_factory=list)
 
 
@dataclass
class AnonImportEntry:
    export_seg_tag: int
    patches: list[RelocationEntry] = field(default_factory=list)
 
 
@dataclass
class ImportModuleEntry:
    module_name: str
    indexed_imports: list[IndexedImportEntry] = field(default_factory=list)
    anon_imports:    list[AnonImportEntry]    = field(default_factory=list)
 
 
@dataclass
class CROModule:
    name: str = ""
    segments:         list[SegmentEntry]     = field(default_factory=list)
    named_exports:    list[NamedExportEntry] = field(default_factory=list)
    indexed_exports:  list[IndexedExportEntry] = field(default_factory=list)
    import_modules:   list[ImportModuleEntry]  = field(default_factory=list)
    named_imports:    list[NamedImportEntry]   = field(default_factory=list)

    internal_patches: list[RelocationEntry]   = field(default_factory=list)
    external_patches: list[RelocationEntry]   = field(default_factory=list)
    static_anon_patches: list[RelocationEntry] = field(default_factory=list)

    ctrl_obj_tag:    int = INVALID_SEG
    on_load_tag:     int = INVALID_SEG
    on_exit_tag:     int = INVALID_SEG
    on_unresolved:   int = INVALID_SEG
    bss_size:        int = 0
    is_crs:          bool = False # used to determine if crs, crs is true duh
 
 
# Export name trie building stuffz
#
# Reference: wwylele's reimplementation gist
 
@dataclass
class TrieNode:
    bit_index: int = 0
    char_index: int = 0
    left_idx: int = 0
    left_leaf: bool = False
    right_idx: int = 0
    right_leaf: bool = True
    export_idx: int = 0

# Start building export trie
 
def build_export_trie(names: list[str]) -> list[TrieNode]:
    if not names:
        root = TrieNode(bit_index=7, char_index=0x1FFF, export_idx=0,
                        left_idx=0, left_leaf=False,
                        right_idx=0, right_leaf=False)
        return [root]
 
    encoded = [n.encode("ascii") + b"\x00" for n in names]
 
    def get_bit(s: bytes, pos: int) -> int:
        byte_i, bit_i = pos >> 3, 7 - (pos & 7)
        return (s[byte_i] >> bit_i) & 1 if byte_i < len(s) else 0
 
    def first_diff_bit(a: bytes, b: bytes) -> int:
        for i in range(max(len(a), len(b)) * 8):
            if get_bit(a, i) != get_bit(b, i):
                return i
        return max(len(a), len(b)) * 8
 
    n = len(names)
    nodes: list[TrieNode] = []
 
    dummy = TrieNode(bit_index=7, char_index=0x1FFF,
                     left_idx=1 if n > 1 else 0, left_leaf=False,
                     right_idx=0, right_leaf=False,
                     export_idx=n - 1)
    nodes.append(dummy)
 
    order = sorted(range(n), key=lambda i: encoded[i])
 
    for i in range(1, n):
        exp_idx = order[i - 1]
        if i < n - 1:
            diff = first_diff_bit(encoded[order[i-1]], encoded[order[i]])
            bit_idx  = diff & 0x7
            char_idx = (diff >> 3) & 0x1FFF
        else:
            bit_idx  = 0
            char_idx = 0
 
        node = TrieNode(
            bit_index=bit_idx, char_index=char_idx,
            left_idx=i - 1, left_leaf=True,
            right_idx=i,    right_leaf=True,
            export_idx=exp_idx
        )
        nodes.append(node)
 
    return nodes
 
 
def _convert_nodes(raw: list[dict]) -> list[TrieNode]:
    result = []
    for r in raw:
        n = TrieNode()
        n.bit_index   = r["bit"] & 0x7
        n.char_index  = r["char"] & 0x1FFF
        n.left_idx    = r["left"] & 0x7FFF
        n.left_leaf   = bool(r["left_leaf"])
        n.right_idx   = r["right"] & 0x7FFF
        n.right_leaf  = bool(r["right_leaf"])
        n.export_idx  = r["exp_idx"]
        result.append(n)
    return result


 
def pack_trie_nodes(nodes: list[TrieNode]) -> bytes:
    buf = bytearray()
    for n in nodes:
        flags      = (n.bit_index & 0x7) | ((n.char_index & 0x1FFF) << 3)
        left_info  = (n.left_idx & 0x7FFF) | (0x8000 if n.left_leaf else 0)
        right_info = (n.right_idx & 0x7FFF) | (0x8000 if n.right_leaf else 0)
        buf += struct.pack("<HHHH", flags, left_info, right_info, n.export_idx & 0xFFFF)
    return bytes(buf)