from __future__ import annotations
 
import struct
import os
import csv
from pathlib import Path
from typing import Optional
from ROSys.roDemangler import demangle, is_special_cro_symbol
 
from ROSys.roUtil import (
    HDR, HEADER_SIZE, CRO_MAGIC, CRO_ALIGN, CRO_PAD, INVALID_SEG,
    SIZEOF_SEGMENT_ENTRY, SIZEOF_NAMED_EXPORT, SIZEOF_INDEXED_EXPORT,
    SIZEOF_TRIE_NODE, SIZEOF_NAMED_IMPORT, SIZEOF_INDEXED_IMPORT,
    SIZEOF_ANON_IMPORT, SIZEOF_MODULE_ENTRY, SIZEOF_EXT_RELOC,
    SIZEOF_INT_RELOC,
    SegType, RelocType,
    SegmentEntry, NamedExportEntry, IndexedExportEntry,
    NamedImportEntry, IndexedImportEntry, AnonImportEntry,
    ImportModuleEntry, RelocationEntry, CROModule,
    read_u32, write_u32, align_up, pad_to, compute_cro_hashes,
    build_export_trie, pack_trie_nodes, make_seg_tag, decode_seg_tag,
)
 
 
# Elf Consts, to load them
 
ELF_MAGIC       = b"\x7fELF"
SHT_NULL        = 0
SHT_PROGBITS    = 1
SHT_SYMTAB      = 2
SHT_STRTAB      = 3
SHT_RELA        = 4
SHT_NOBITS      = 8   # .bss
SHT_REL         = 9
SHT_ARM_EXIDX   = 0x70000001
 
SHF_ALLOC       = 0x2
SHF_EXECINSTR   = 0x4
SHF_WRITE       = 0x1
 
STB_GLOBAL      = 1
STB_WEAK        = 2
STT_FUNC        = 2
STT_OBJECT      = 1
STT_NOTYPE      = 0
 
R_ARM_NONE      = 0
R_ARM_ABS32     = 2
R_ARM_REL32     = 3
R_ARM_CALL      = 28
R_ARM_JUMP24    = 29
R_ARM_TARGET1   = 38
 
 
# ARM 32 elf loader
#
# Minimalized
 
class ELFSection:
    def __init__(self, name: str, sh_type: int, sh_flags: int,
                 sh_addr: int, sh_offset: int, sh_size: int,
                 sh_link: int, sh_info: int, sh_entsize: int,
                 data: bytes):
        self.name      = name
        self.sh_type   = sh_type
        self.sh_flags  = sh_flags
        self.sh_addr   = sh_addr
        self.sh_offset = sh_offset
        self.sh_size   = sh_size
        self.sh_link   = sh_link
        self.sh_info   = sh_info
        self.sh_entsize = sh_entsize
        self.data      = data
 
 
class ELFSymbol:
    def __init__(self, name: str, value: int, size: int,
                 bind: int, stype: int, shndx: int):
        self.name  = name
        self.value = value
        self.size  = size
        self.bind  = bind
        self.stype = stype
        self.shndx = shndx
 
 
class ELFReloc:
    def __init__(self, offset: int, sym_idx: int, rtype: int, addend: int = 0):
        self.offset  = offset
        self.sym_idx = sym_idx
        self.rtype   = rtype
        self.addend  = addend
 
 
def _read_elf(data: bytes) -> tuple[list[ELFSection], list[ELFSymbol], list[tuple[int, list[ELFReloc]]]]:
    if data[:4] != ELF_MAGIC:
        raise ValueError("ROSys: Not an ELF file")
 
    e_shoff     = struct.unpack_from("<I", data, 0x20)[0]
    e_shentsize = struct.unpack_from("<H", data, 0x2E)[0]
    e_shnum     = struct.unpack_from("<H", data, 0x30)[0]
    e_shstrndx  = struct.unpack_from("<H", data, 0x32)[0]
 
    def read_section_header(i):
        base = e_shoff + i * e_shentsize
        return struct.unpack_from("<IIIIIIIIII", data, base)  # 10 × u32
 
    # Read all section headers
    raw_sections = [read_section_header(i) for i in range(e_shnum)]
 
    # String table for section names
    sh_name_strtab_off = raw_sections[e_shstrndx][4]
    sh_name_strtab_sz  = raw_sections[e_shstrndx][5]
    shstrtab = data[sh_name_strtab_off : sh_name_strtab_off + sh_name_strtab_sz]
 
    def read_cstr(strtab: bytes, off: int) -> str:
        end = strtab.index(b"\x00", off)
        return strtab[off:end].decode("ascii", errors="replace")
 
    sections: list[ELFSection] = []
    for raw in raw_sections:
        sh_name_off, sh_type, sh_flags, sh_addr, sh_offset, sh_size, \
            sh_link, sh_info, sh_addralign, sh_entsize = raw
        name = read_cstr(shstrtab, sh_name_off)
        if sh_type == SHT_NOBITS:
            sec_data = b""
        elif sh_offset and sh_size:
            sec_data = data[sh_offset : sh_offset + sh_size]
        else:
            sec_data = b""
        sections.append(ELFSection(name, sh_type, sh_flags, sh_addr,
                                   sh_offset, sh_size, sh_link, sh_info,
                                   sh_entsize, sec_data))
 
    # Symbol table
    symbols: list[ELFSymbol] = []
    sym_strtab = b""
    for sec in sections:
        if sec.sh_type == SHT_SYMTAB:
            sym_strtab = sections[sec.sh_link].data
            entry_size = sec.sh_entsize or 16
            for i in range(0, len(sec.data), entry_size):
                st_name, st_value, st_size, st_info, st_other, st_shndx = \
                    struct.unpack_from("<IIIBBH", sec.data, i)
                sym_name  = read_cstr(sym_strtab, st_name) if sym_strtab else ""
                sym_bind  = (st_info >> 4) & 0xF
                sym_type  = st_info & 0xF
                symbols.append(ELFSymbol(sym_name, st_value, st_size,
                                         sym_bind, sym_type, st_shndx))
            break
 
    # Relocations
    reloc_table: list[tuple[int, list[ELFReloc]]] = []
    for sec in sections:
        if sec.sh_type == SHT_REL:
            target_sec = sec.sh_info
            relocs = []
            entry_size = sec.sh_entsize or 8
            for i in range(0, len(sec.data), entry_size):
                r_offset, r_info = struct.unpack_from("<II", sec.data, i)
                sym_idx = r_info >> 8
                rtype   = r_info & 0xFF
                relocs.append(ELFReloc(r_offset, sym_idx, rtype))
            reloc_table.append((target_sec, relocs))
        elif sec.sh_type == SHT_RELA:
            target_sec = sec.sh_info
            relocs = []
            entry_size = sec.sh_entsize or 12
            for i in range(0, len(sec.data), entry_size):
                r_offset, r_info, r_addend = struct.unpack_from("<IIi", sec.data, i)
                sym_idx = r_info >> 8
                rtype   = r_info & 0xFF
                relocs.append(ELFReloc(r_offset, sym_idx, rtype, r_addend))
            reloc_table.append((target_sec, relocs))
 
    return sections, symbols, reloc_table
 
 
# CROBuilder
 
class CROBuilder:
 
    def __init__(self, module_name: str, is_library: bool = False):
        self.module_name  = module_name
        self.is_library   = is_library  # ModuleLib builds as a linkable .cro
 
        # Segments
        self.text_data:   bytearray = bytearray()
        self.rodata_data: bytearray = bytearray()
        self.data_data:   bytearray = bytearray()
        self.bss_size:    int       = 0
 
        # Symbol tables
        self.named_exports:   list[NamedExportEntry]   = []
        self.indexed_exports: list[IndexedExportEntry] = []
        self.import_modules:  list[ImportModuleEntry]  = []
        self.named_imports:   list[NamedImportEntry]   = []
 
        # Patch lists
        self.internal_patches:     list[RelocationEntry] = []
        self.external_patches:     list[RelocationEntry] = []
        self.static_anon_patches:  list[RelocationEntry] = []
 
        # Special function tags
        self.ctrl_obj_tag:   int = INVALID_SEG
        self.on_load_tag:    int = INVALID_SEG
        self.on_exit_tag:    int = INVALID_SEG
        self.on_unresolved:  int = INVALID_SEG
 
        # Internal State
        self._elf_sections: list[ELFSection]  = []
        self._elf_symbols:  list[ELFSymbol]   = []
        self._elf_relocs:   list[tuple[int, list[ELFReloc]]] = []
        self._sec_to_seg:   dict[int, tuple[int, int]] = {}  # sec_idx → (seg_type, base_off)
 
    # Elf Loader
 
    def load_elf(self, elf_path: str, bin_path: str | None = None) -> None:
        data = Path(elf_path).read_bytes()
        self._elf_sections, self._elf_symbols, self._elf_relocs = _read_elf(data)
        self._map_sections_to_segments()
        self._process_relocations()
        self._find_special_symbols()
        if bin_path and Path(bin_path).exists():
            self._overlay_bin_data(bin_path)
 
    def _overlay_bin_data(self, bin_path: str) -> None:
        flat = Path(bin_path).read_bytes()
        cursor = 0

        for seg_type, data_attr in (
            (SegType.TEXT,   "text_data"),
            (SegType.RODATA, "rodata_data"),
            (SegType.DATA,   "data_data"),
        ):
            current: bytearray = getattr(self, data_attr)
            size = len(current)
            if size == 0:
                continue
            chunk = flat[cursor : cursor + size]
            if len(chunk) < size:

                chunk = chunk + bytes(size - len(chunk))
            setattr(self, data_attr, bytearray(chunk))
            cursor += size
 
    def _map_sections_to_segments(self) -> None:
        for i, sec in enumerate(self._elf_sections):
            if not (sec.sh_flags & SHF_ALLOC):
                continue
            if sec.sh_type in (SHT_NULL, SHT_STRTAB, SHT_SYMTAB,
                                SHT_REL, SHT_RELA, SHT_ARM_EXIDX):
                continue
            if sec.sh_type == SHT_NOBITS:
                if sec.sh_size > 0:
                    self._sec_to_seg[i] = (int(SegType.BSS), self.bss_size)
                    self.bss_size += align_up(sec.sh_size, 4)
            elif sec.sh_flags & SHF_EXECINSTR:
                if not sec.data:
                    continue
                # Split RO_REGION into text+rodata by finding end of last function
                text_end = self._find_text_end(i)
                if text_end > 0 and text_end < len(sec.data):
                    # Text portion
                    off = len(self.text_data)
                    self._sec_to_seg[i] = (int(SegType.TEXT), off)
                    self.text_data += sec.data[:text_end]
                    if len(self.text_data) % 4:
                        self.text_data += b"\x00" * (4 - len(self.text_data) % 4)
                    # Rodata portion (vtables, RTTI, const data after code shit)
                    self.rodata_data += sec.data[text_end:]
                    if len(self.rodata_data) % 4:
                        self.rodata_data += b"\x00" * (4 - len(self.rodata_data) % 4)
                else:
                    off = len(self.text_data)
                    self._sec_to_seg[i] = (int(SegType.TEXT), off)
                    self.text_data += sec.data
                    if len(self.text_data) % 4:
                        self.text_data += b"\x00" * (4 - len(self.text_data) % 4)
            elif sec.sh_flags & SHF_WRITE:
                if not sec.data or sec.sh_size == 0:
                    continue
                if all(b == 0 for b in sec.data):
                    self._sec_to_seg[i] = (int(SegType.BSS), self.bss_size)
                    self.bss_size += align_up(sec.sh_size, 4)
                else:
                    off = len(self.data_data)
                    self._sec_to_seg[i] = (int(SegType.DATA), off)
                    self.data_data += sec.data
                    if len(self.data_data) % 4:
                        self.data_data += b"\x00" * (4 - len(self.data_data) % 4)
            else:
                if not sec.data:
                    continue
                off = len(self.rodata_data)
                self._sec_to_seg[i] = (int(SegType.RODATA), off)
                self.rodata_data += sec.data
                if len(self.rodata_data) % 4:
                    self.rodata_data += b"\x00" * (4 - len(self.rodata_data) % 4)
 
    def _find_text_end(self, sec_idx: int) -> int:

        func_end = 0
        for sym in self._elf_symbols:
            if sym.shndx != sec_idx or sym.stype != STT_FUNC:
                continue
            addr = sym.value & ~1  # clear Thumb bit
            size = sym.size if sym.size > 0 else 4
            func_end = max(func_end, addr + size)
        return align_up(func_end, 4) if func_end > 0 else 0
 
    def _process_relocations(self) -> None:
        for target_sec_idx, relocs in self._elf_relocs:
            if target_sec_idx not in self._sec_to_seg:
                continue
            seg_type, seg_base = self._sec_to_seg[target_sec_idx]
 
            for rel in relocs:
                sym = self._elf_symbols[rel.sym_idx] if rel.sym_idx < len(self._elf_symbols) else None
                seg_tag = make_seg_tag(seg_type, seg_base + rel.offset)
                reloc_type = _arm_elf_to_cro_reloc(rel.rtype)
 
                if sym and sym.shndx != 0 and sym.shndx < len(self._elf_sections):
                    # Internal reloc – target is in the same module
                    ref_seg, ref_off = self._sec_to_seg.get(sym.shndx, (0, 0))
                    self.internal_patches.append(RelocationEntry(
                        seg_tag=seg_tag,
                        reloc_type=reloc_type,
                        addend=rel.addend + ref_off,
                        ref_seg=ref_seg,
                    ))
                elif sym and sym.bind in (STB_GLOBAL, STB_WEAK) and sym.name:
                    self._register_external_import(sym.name, seg_tag, reloc_type, rel.addend)
 
    def _register_external_import(self, sym_name: str, patch_loc: int,
                                   reloc_type: RelocType, addend: int) -> None:
        patch = RelocationEntry(seg_tag=patch_loc, reloc_type=reloc_type,
                                addend=addend, is_last=False)
        for ni in self.named_imports:
            if ni.name == sym_name:
                ni.patches.append(patch)
                return
        self.named_imports.append(NamedImportEntry(name=sym_name, patches=[patch]))
 
    # ASCII Exports
    #
    # As well as Special syms
    _PLAIN_EXPORT_MAP = {
        "EntryTask":          "EntryTask",
        "nnroControlObject_": "nnroControlObject_",
    }
 
    def _find_special_symbols(self) -> None:
        existing_export_names = {e.name for e in self.named_exports}
 
        for sym in self._elf_symbols:
            if not sym.name:
                continue
            if sym.shndx == 0 or sym.shndx >= len(self._elf_sections):
                continue
            if sym.shndx not in self._sec_to_seg:
                continue
            seg_type, seg_base = self._sec_to_seg[sym.shndx]
            sec = self._elf_sections[sym.shndx]
            off = sym.value - sec.sh_addr if sec.sh_addr else sym.value
            tag = make_seg_tag(seg_type, seg_base + off)
 
            clean = sym.name.strip("_")
 
            # Special header function tags
            if "nnroControlObject" in sym.name:
                self.ctrl_obj_tag = tag
            elif clean == "OnLoad": # recheck
                self.on_load_tag = tag
            elif clean == "OnExit": # recheck
                self.on_exit_tag = tag
            elif clean == "OnUnresolved": # recheck
                self.on_unresolved = tag
 
            for substr, plain_name in self._PLAIN_EXPORT_MAP.items():
                if substr in sym.name and plain_name not in existing_export_names:
                    self.named_exports.insert(0, NamedExportEntry(name=plain_name, seg_tag=tag))
                    existing_export_names.add(plain_name)
                    break
 
 
    # CSV symbol loader
 
    def add_exports_from_csv(self, csv_path: str) -> None:

        with open(csv_path, newline="") as f:
            for row in csv.DictReader(f):
                name    = row["symbol_name"].strip()
                seg_idx = int(row.get("segment_index", "0"), 0)
                offset  = int(row.get("offset", "0"), 0)
                indexed = row.get("indexed", "0").strip() == "1"
                tag     = make_seg_tag(seg_idx, offset)
                if indexed:
                    self.indexed_exports.append(IndexedExportEntry(seg_tag=tag))
                else:
                    self.named_exports.append(NamedExportEntry(name=name, seg_tag=tag))
 
    def add_imports_from_csv(self, csv_path: str) -> None:
        with open(csv_path, newline="") as f:
            for row in csv.DictReader(f):
                sym_name   = row["symbol_name"].strip()
                patch_seg  = int(row.get("patch_seg",    "0"), 0)
                patch_off  = int(row.get("patch_offset", "0"), 0)
                rtype_val  = int(row.get("reloc_type",   "2"), 0)
                addend     = int(row.get("addend",       "0"), 0)
 
                try:
                    reloc_type = RelocType(rtype_val)
                except ValueError:
                    reloc_type = RelocType.R_ARM_ABS32
 
                patch = RelocationEntry(seg_tag=make_seg_tag(patch_seg, patch_off),
                                        reloc_type=reloc_type, addend=addend)
                self._register_external_import_direct(sym_name, patch)
 
    def _register_external_import_direct(self, sym_name: str,
                                          patch: RelocationEntry) -> None:
        for ni in self.named_imports:
            if ni.name == sym_name:
                ni.patches.append(patch)
                return
        self.named_imports.append(NamedImportEntry(name=sym_name, patches=[patch]))
 
    # Manual segment data setters
 
    def set_text(self, data: bytes) -> None:
        self.text_data = bytearray(data)
 
    def set_rodata(self, data: bytes) -> None:
        self.rodata_data = bytearray(data)
 
    def set_data(self, data: bytes) -> None:
        self.data_data = bytearray(data)
 
    def set_bss_size(self, size: int) -> None:
        self.bss_size = size
 
    # Build RO
 
    def build(self) -> bytes:
        _mark_last_patches(self.named_imports)
 
        # VAILDATE ENTRYTASK
        #
        # If not, we will FAIL the CRO!
        #
        # No EntryTask no CRO.
        if not any(e.name == "EntryTask" for e in self.named_exports):
            raise RuntimeError(
                f"[CRO] {self.module_name}: EntryTask not found in ELF symbol table. "
                f"Ensure EntryTask is defined and exported in your module source."
            )
 
        # string tables
        exp_strings = bytearray()
        exp_name_offsets: list[int] = []
        for exp in self.named_exports:
            exp_name_offsets.append(len(exp_strings))
            exp_strings += exp.name.encode("ascii") + b"\x00"
        if not exp_strings:
            exp_strings = bytearray(b"\x00")
 
        imp_strings = bytearray()
        imp_name_offsets: list[int] = []
        for imp in self.named_imports:
            imp_name_offsets.append(len(imp_strings))
            imp_strings += imp.name.encode("ascii") + b"\x00"
        if not imp_strings:
            imp_strings = bytearray(b"\x00")
 
        mod_name_bytes = self.module_name.encode("ascii") + b"\x00"
 
        # Trie
        trie_nodes = build_export_trie([e.name for e in self.named_exports])
        trie_bytes  = pack_trie_nodes(trie_nodes)
 
        # LAYOUT FOR RO
 
        code_offset = HEADER_SIZE
 
        text_size = align_up(len(self.text_data), 4) if self.text_data else 0
 
        tables_start = align_up(code_offset + text_size, CRO_ALIGN)
        cursor = tables_start
 
        # Module name string magic
        mod_name_off = cursor
        cursor += len(mod_name_bytes)
        cursor = align_up(cursor, 4)
 
        #   [0] TEXT   [1] RODATA  [2] DATA  [3] BSS  [4] DUMMY  [5] DUMMY
        NUM_SEGS = 6
        seg_table_off = cursor
        num_segs = NUM_SEGS
        cursor += NUM_SEGS * SIZEOF_SEGMENT_ENTRY
 
        # Named export table
        exp_named_off = cursor
        cursor += len(self.named_exports) * SIZEOF_NAMED_EXPORT
 
        # Export trie
        exp_trie_off = cursor
        cursor += len(trie_bytes)
        cursor = align_up(cursor, 4)
 
        # Export strings (entrytask & nnrocontrolobj)
        exp_str_off = cursor
        cursor += len(exp_strings)
        cursor = align_up(cursor, 4)
 
        # Indexed export table — same offset as export strings
        exp_idx_off = exp_str_off
 
 
        # Import module table
        imp_mod_off = cursor
 
        # External patch table
        ext_patch_off = cursor
        num_ext_patches = sum(len(ni.patches) for ni in self.named_imports)
        cursor += num_ext_patches * SIZEOF_EXT_RELOC
 
        # Named import table
        imp_named_off = cursor
        cursor += len(self.named_imports) * SIZEOF_NAMED_IMPORT
 
        # Import strings (mangled names from static)
        imp_str_off = cursor
        cursor += len(imp_strings)
        cursor = align_up(cursor, 4)
 
        # Indexed/anon import tables — same offset as import strings (ref behavior)
        imp_idx_off  = imp_str_off
 
        # Anonymous import table
        imp_anon_off = imp_str_off
 
        # Static anon / internal / static patches
        static_anon_off  = cursor
        int_patch_off    = cursor
        cursor += len(self.internal_patches) * SIZEOF_INT_RELOC
        static_patch_off = cursor
 
        # .rodata
        rodata_offset = cursor
        rodata_size = align_up(len(self.rodata_data), 4) if self.rodata_data else 0
        cursor += rodata_size
 
        tables_end = cursor
 
        data_offset = align_up(tables_end, 4)
        data_size   = align_up(len(self.data_data), 4) if self.data_data else 0
        content_end = data_offset + data_size
 
        # PAD CC
        file_size = align_up(content_end, CRO_ALIGN)
 
        buf = bytearray(file_size)
        for i in range(content_end, file_size):
            buf[i] = CRO_PAD
 
        # header
        buf[HDR.MAGIC           : HDR.MAGIC + 4]     = CRO_MAGIC
        write_u32(buf, HDR.NAME_OFFSET,      mod_name_off)
        write_u32(buf, HDR.NEXT_MODULE,      0)
        write_u32(buf, HDR.PREV_MODULE,      0)
        write_u32(buf, HDR.FILE_SIZE,        file_size)
        write_u32(buf, HDR.BSS_SIZE,         self.bss_size)
        write_u32(buf, HDR.FIXED_SIZE,       0)
        write_u32(buf, HDR.UNK_9C,           0)
        write_u32(buf, HDR.CTRL_OBJ_TAG,     self.ctrl_obj_tag)
        write_u32(buf, HDR.ON_LOAD_TAG,      self.on_load_tag)
        write_u32(buf, HDR.ON_EXIT_TAG,      self.on_exit_tag)
        write_u32(buf, HDR.ON_UNRESOLVED,    self.on_unresolved)
        write_u32(buf, HDR.CODE_OFFSET,      code_offset)
        write_u32(buf, HDR.CODE_SIZE,        tables_start - code_offset)
        write_u32(buf, HDR.DATA_OFFSET,      data_offset)
        write_u32(buf, HDR.DATA_SIZE,        data_size)
        write_u32(buf, HDR.MOD_NAME_OFFSET,  mod_name_off)
        write_u32(buf, HDR.MOD_NAME_SIZE,    len(mod_name_bytes))
        write_u32(buf, HDR.SEG_TABLE_OFF,    seg_table_off)
        write_u32(buf, HDR.SEG_TABLE_CNT,    num_segs)
        write_u32(buf, HDR.EXP_NAMED_OFF,    exp_named_off)
        write_u32(buf, HDR.EXP_NAMED_CNT,    len(self.named_exports))
        write_u32(buf, HDR.EXP_IDX_OFF,      exp_idx_off)
        write_u32(buf, HDR.EXP_IDX_CNT,      len(self.indexed_exports))
        write_u32(buf, HDR.EXP_STR_OFF,      exp_str_off)
        write_u32(buf, HDR.EXP_STR_SIZE,     len(exp_strings))
        write_u32(buf, HDR.EXP_TRIE_OFF,     exp_trie_off)
        write_u32(buf, HDR.EXP_TRIE_CNT,     len(trie_nodes))
        write_u32(buf, HDR.IMP_MOD_OFF,      imp_mod_off)
        write_u32(buf, HDR.IMP_MOD_CNT,      0)
        write_u32(buf, HDR.EXT_PATCH_OFF,    ext_patch_off)
        write_u32(buf, HDR.EXT_PATCH_CNT,    num_ext_patches)
        write_u32(buf, HDR.IMP_NAMED_OFF,    imp_named_off)
        write_u32(buf, HDR.IMP_NAMED_CNT,    len(self.named_imports))
        write_u32(buf, HDR.IMP_IDX_OFF,      imp_idx_off)
        write_u32(buf, HDR.IMP_IDX_CNT,      0)
        write_u32(buf, HDR.IMP_ANON_OFF,     imp_anon_off)
        write_u32(buf, HDR.IMP_ANON_CNT,     0)
        write_u32(buf, HDR.IMP_STR_OFF,      imp_str_off)
        write_u32(buf, HDR.IMP_STR_SIZE,     len(imp_strings))
        write_u32(buf, HDR.STATIC_ANON_OFF,  static_anon_off)
        write_u32(buf, HDR.STATIC_ANON_CNT,  0)
        write_u32(buf, HDR.INT_PATCH_OFF,    int_patch_off)
        write_u32(buf, HDR.INT_PATCH_CNT,    len(self.internal_patches))
        write_u32(buf, HDR.STATIC_PATCH_OFF, static_patch_off)
        write_u32(buf, HDR.STATIC_PATCH_CNT, 0)
 
        # magic module name
        buf[mod_name_off : mod_name_off + len(mod_name_bytes)] = mod_name_bytes
 
        # .text
        if self.text_data:
            buf[code_offset : code_offset + len(self.text_data)] = self.text_data
 
        # .rodata
        if self.rodata_data:
            buf[rodata_offset : rodata_offset + len(self.rodata_data)] = self.rodata_data
 
        # SEGMENT TABLE
        # TEXT
        # RODATA
        # DATA
        # BSS
        # DUMMY
        # DUMMY
        bss_seg_type = SegType.BSS if self.bss_size > 0 else SegType.TEXT
        fixed_segs = [
            (code_offset,   tables_start - code_offset,           SegType.TEXT),
            (tables_start,  len(self.rodata_data) if self.rodata_data else 0, SegType.RODATA),
            (data_offset,   data_size,                             SegType.DATA),
            (0,             self.bss_size,                         bss_seg_type),
            (0,             0,                                     SegType.TEXT),
            (0,             0,                                     SegType.TEXT),
        ]
        for i, (off, sz, stype) in enumerate(fixed_segs):
            base = seg_table_off + i * SIZEOF_SEGMENT_ENTRY
            write_u32(buf, base,     off)
            write_u32(buf, base + 4, sz)
            write_u32(buf, base + 8, int(stype))
 
        # named export table
        for i, (exp, name_off_in_str) in enumerate(zip(self.named_exports, exp_name_offsets)):
            base = exp_named_off + i * SIZEOF_NAMED_EXPORT
            write_u32(buf, base,     exp_str_off + name_off_in_str)
            write_u32(buf, base + 4, exp.seg_tag)
 
        # indexed export table
        for i, iexp in enumerate(self.indexed_exports):
            write_u32(buf, exp_idx_off + i * SIZEOF_INDEXED_EXPORT, iexp.seg_tag)
 
        # export trie
        buf[exp_trie_off : exp_trie_off + len(trie_bytes)] = trie_bytes
 
        # export strings
        buf[exp_str_off : exp_str_off + len(exp_strings)] = exp_strings
 
        # extern patch tbl
        patch_cursor = ext_patch_off
        for ni in self.named_imports:
            for j, patch in enumerate(ni.patches):
                is_last = (j == len(ni.patches) - 1)
                buf[patch_cursor]     = patch.seg_tag & 0xFF
                buf[patch_cursor + 1] = (patch.seg_tag >> 8) & 0xFF
                buf[patch_cursor + 2] = (patch.seg_tag >> 16) & 0xFF
                buf[patch_cursor + 3] = (patch.seg_tag >> 24) & 0xFF
                buf[patch_cursor + 4] = int(patch.reloc_type) & 0xFF
                buf[patch_cursor + 5] = 0x01 if is_last else 0x00
                buf[patch_cursor + 6] = 0x00
                buf[patch_cursor + 7] = 0x00
                struct.pack_into("<i", buf, patch_cursor + 8, patch.addend)
                patch_cursor += SIZEOF_EXT_RELOC
 
        # named import tbl
        running_patch_off = ext_patch_off
        for i, (ni, name_off_in_str) in enumerate(zip(self.named_imports, imp_name_offsets)):
            base = imp_named_off + i * SIZEOF_NAMED_IMPORT
            write_u32(buf, base,     imp_str_off + name_off_in_str)
            write_u32(buf, base + 4, running_patch_off)
            running_patch_off += len(ni.patches) * SIZEOF_EXT_RELOC
 
        # import strings
        buf[imp_str_off : imp_str_off + len(imp_strings)] = imp_strings
 
        # interm patch table
        for i, patch in enumerate(self.internal_patches):
            base = int_patch_off + i * SIZEOF_INT_RELOC
            write_u32(buf, base, patch.seg_tag)
            buf[base + 4] = int(patch.reloc_type) & 0xFF
            buf[base + 5] = patch.ref_seg & 0xFF
            buf[base + 6] = 0
            buf[base + 7] = 0
            struct.pack_into("<i", buf, base + 8, patch.addend)
 
        # .data
        if self.data_data:
            buf[data_offset : data_offset + len(self.data_data)] = self.data_data
 
        # hashs
        compute_cro_hashes(buf)
 
        return bytes(buf)
 
 
# RO Helpers
 
def _mark_last_patches(imports: list[NamedImportEntry]) -> None:
    for ni in imports:
        if ni.patches:
            for p in ni.patches:
                p.is_last = False
            ni.patches[-1].is_last = True
 
 
def _arm_elf_to_cro_reloc(elf_type: int) -> RelocType:
    mapping = {
        R_ARM_NONE:    RelocType.R_ARM_NONE,
        R_ARM_ABS32:   RelocType.R_ARM_ABS32,
        R_ARM_REL32:   RelocType.R_ARM_REL32,
        R_ARM_CALL:    RelocType.R_ARM_CALL,
        R_ARM_JUMP24:  RelocType.R_ARM_JUMP24,
        R_ARM_TARGET1: RelocType.R_ARM_TARGET1,
    }
    return mapping.get(elf_type, RelocType.R_ARM_ABS32)
 
 
def build_module(
    module_name: str,
    elf_path: str,
    export_csv: Optional[str] = None,
    import_csv: Optional[str] = None,
    out_path: Optional[str] = None,
    is_library: bool = False,
    split_rodata: bool = False,
    bss_size_override: Optional[int] = None,
) -> bytes:

    builder = CROBuilder(module_name, is_library=is_library)
    builder.load_elf(elf_path)
    if bss_size_override is not None:
        builder.bss_size = bss_size_override
    if export_csv and Path(export_csv).exists():
        builder.add_exports_from_csv(export_csv)
    if import_csv and Path(import_csv).exists():
        builder.add_imports_from_csv(import_csv)
 
    data = builder.build()
 
    if out_path:
        Path(out_path).parent.mkdir(parents=True, exist_ok=True)
        Path(out_path).write_bytes(data)
        ext = ".cro" if not is_library else ".cro"
        print(f"Report ROSys: {module_name}: {len(data):#x} bytes → {out_path}")
 
    return data