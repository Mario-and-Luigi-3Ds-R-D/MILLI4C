from __future__ import annotations
 
import csv
import struct
from pathlib import Path
import argparse
from Settings import getBuildPath
from ROSys.staticUtil import build_crs, save_crs
from ROSys.roDemangler import demangle
from ROSys.roUtil import (
    NamedExportEntry, IndexedExportEntry,
    make_seg_tag, SegType, INVALID_SEG,
)
 
# seg

STATIC_SEG_TEXT   = 0
STATIC_SEG_RODATA = 1
STATIC_SEG_DATA   = 2
STATIC_SEG_BSS    = 3
 
STATIC_TEXT_VA    = 0x00100000
 
# ARM32 Elf extractor
 
ELF_MAGIC    = b"\x7fELF"
SHT_SYMTAB   = 2
SHT_STRTAB   = 3
SHT_NOBITS   = 8
SHF_ALLOC    = 0x2
SHF_EXECINSTR= 0x4
SHF_WRITE    = 0x1
STB_LOCAL    = 0
STB_GLOBAL   = 1
STB_WEAK     = 2
STT_NOTYPE   = 0
STT_OBJECT   = 1
STT_FUNC     = 2
SHN_UNDEF    = 0
SHN_ABS      = 0xFFF1
 
 
def _read_cstr(data: bytes, off: int) -> str:
    end = data.index(b"\x00", off)
    return data[off:end].decode("ascii", errors="replace")
 
 
class _AXFSymbol:
    __slots__ = ("name", "value", "size", "bind", "stype", "shndx")
 
    def __init__(self, name: str, value: int, size: int,
                 bind: int, stype: int, shndx: int):
        self.name  = name
        self.value = value
        self.size  = size
        self.bind  = bind
        self.stype = stype
        self.shndx = shndx
 
 
class _AXFSection:
    __slots__ = ("name", "sh_type", "sh_flags", "sh_addr", "sh_size", "data")
 
    def __init__(self, name, sh_type, sh_flags, sh_addr, sh_size, data):
        self.name     = name
        self.sh_type  = sh_type
        self.sh_flags = sh_flags
        self.sh_addr  = sh_addr
        self.sh_size  = sh_size
        self.data     = data
 
#axf things
 
def _parse_axf(data: bytes) -> tuple[list[_AXFSection], list[_AXFSymbol]]:

    if data[:4] != ELF_MAGIC:
        raise ValueError("Not an ELF file")
 
    e_shoff     = struct.unpack_from("<I", data, 0x20)[0]
    e_shentsize = struct.unpack_from("<H", data, 0x2E)[0]
    e_shnum     = struct.unpack_from("<H", data, 0x30)[0]
    e_shstrndx  = struct.unpack_from("<H", data, 0x32)[0]
 
    def _raw_sh(i):
        b = e_shoff + i * e_shentsize
        return struct.unpack_from("<IIIIIIIIII", data, b)
 
    raw = [_raw_sh(i) for i in range(e_shnum)]
 
    # Section-name string table
    shstr_off  = raw[e_shstrndx][4]
    shstr_size = raw[e_shstrndx][5]
    shstrtab   = data[shstr_off : shstr_off + shstr_size]
 
    sections: list[_AXFSection] = []
    for r in raw:
        sh_name_off, sh_type, sh_flags, sh_addr, sh_offset, sh_size = r[0], r[1], r[2], r[3], r[4], r[5]
        name = _read_cstr(shstrtab, sh_name_off)
        if sh_type == SHT_NOBITS:
            sec_data = b""
        elif sh_offset and sh_size:
            sec_data = data[sh_offset : sh_offset + sh_size]
        else:
            sec_data = b""
        sections.append(_AXFSection(name, sh_type, sh_flags, sh_addr, sh_size, sec_data))
 
    # Symbol table
    symbols: list[_AXFSymbol] = []
    for sec in sections:
        if sec.sh_type != SHT_SYMTAB:
            continue
        strtab_data = sections[raw[sections.index(sec)][6]].data
        entry_size  = raw[sections.index(sec)][9] or 16
        for i in range(0, len(sec.data), entry_size):
            st_name, st_value, st_size, st_info, _st_other, st_shndx = \
                struct.unpack_from("<IIIBBH", sec.data, i)
            bind  = (st_info >> 4) & 0xF
            stype = st_info & 0xF
            name  = _read_cstr(strtab_data, st_name) if strtab_data else ""

            if bind not in (STB_GLOBAL, STB_WEAK):
                continue
            if st_shndx in (SHN_UNDEF,):
                continue
            if not name:
                continue
            symbols.append(_AXFSymbol(name, st_value, st_size, bind, stype, st_shndx))
        break
 
    return sections, symbols

 
def _classify_symbol(sym: _AXFSymbol, sections: list[_AXFSection]) -> tuple[int, int] | None:
    if sym.shndx == SHN_ABS or sym.shndx >= len(sections):
        return None
    sec = sections[sym.shndx]
    if not (sec.sh_flags & SHF_ALLOC):
        return None
    if sec.sh_flags & SHF_EXECINSTR:
        seg = STATIC_SEG_TEXT
    elif sec.sh_flags & SHF_WRITE:
        seg = STATIC_SEG_DATA
    else:
        seg = STATIC_SEG_RODATA
    # load VA
    offset = sym.value
    return seg, offset
 
 
# CSV Loaderz
 
def _load_functions_csv(path: str) -> dict[str, int]:
    result: dict[str, int] = {}
    if not Path(path).exists():
        return result
    with open(path, newline="") as f:
        for row in csv.DictReader(f):
            name = (row.get("symbol_name") or row.get("name") or "").strip()
            addr = row.get("address") or row.get("offset") or "0"
            if name:
                result[name] = int(addr, 0)
    return result
 
 
def _load_data_csv(path: str) -> dict[str, tuple[int, int]]:
    result: dict[str, tuple[int, int]] = {}
    if not Path(path).exists():
        return result
    with open(path, newline="") as f:
        for row in csv.DictReader(f):
            name    = (row.get("symbol_name") or row.get("name") or "").strip()
            seg_idx = int(row.get("segment_index", "2"), 0)
            offset  = int(row.get("offset", "0"), 0)
            if name:
                result[name] = (seg_idx, offset)
    return result
 
 
def _load_static_symbols_csv(path: str) -> dict[str, tuple[int, int]]:
    return _load_data_csv(path)
 
 
def _build_export_list(
    axf_symbols:     list[_AXFSymbol],
    axf_sections:    list[_AXFSection],
    func_csv:        dict[str, int],
    data_csv:        dict[str, tuple[int,int]],
    static_csv:      dict[str, tuple[int,int]],
    text_va:         int,
    verbose:         bool,
) -> list[NamedExportEntry]:
 
    # Build the allowed-name set from CSVs
    allowed: set[str] = set(func_csv) | set(data_csv) | set(static_csv)
 
    axf_lookup: dict[str, tuple[int, int]] = {}
    for sym in axf_symbols:
        mapped = _classify_symbol(sym, axf_sections)
        if mapped is None:
            continue
        seg_idx, abs_va = mapped
        axf_lookup[sym.name] = (seg_idx, abs_va)
 
    for name in sorted(static_csv):
        if name not in axf_lookup:
            if verbose:
                print(f"Report ROSys WARN: static_symbols.csv lists '{name}' "
                      f"but it was not found in MILLI4C.axf symbol table")
 
    entries: list[NamedExportEntry] = []
    seen: set[str] = set()
 
    for name in sorted(allowed):
        if name in seen:
            continue
        seen.add(name)
 
        static_has_addr = (
            name in static_csv and
            (static_csv[name][0] != 0 or static_csv[name][1] != 0)
        )
 
        if static_has_addr:
            seg_idx, offset = static_csv[name]
            tag = make_seg_tag(seg_idx, offset)
        elif name in func_csv and func_csv[name] != 0:
            abs_va = func_csv[name]
            offset = abs_va - text_va
            tag    = make_seg_tag(STATIC_SEG_TEXT, max(0, offset))
        elif name in data_csv and data_csv[name] != (0, 0):
            seg_idx, offset = data_csv[name]
            tag = make_seg_tag(seg_idx, offset)
        elif name in axf_lookup:

            seg_idx, abs_va = axf_lookup[name]
            tag = make_seg_tag(seg_idx, abs_va)
        elif name in static_csv:

            if verbose:
                print(f"Report ROSys WARN: '{name}' has no resolvable address "
                      f"(not in AXF, all CSV offsets are 0) – skipping")
            continue
        else:
            continue
 
        entries.append(NamedExportEntry(name=name, seg_tag=tag))
 
    return entries
 
# start build
 
def build_static_crs(
    version: str,
    out_path: str,
    project_dir: str | None = None,
    module_name: str = "static",
    text_va: int = STATIC_TEXT_VA,
    verbose: bool = False,
) -> bytes:

    # Build for specific ver

    if project_dir is None:
        project_dir = str(Path(__file__).resolve().parents[2])
 
    ver_dir    = Path(project_dir) / "data" / "Version" / version
    build_dir  = Path(project_dir) / "build" / version
 
    func_csv_path   = str(ver_dir / "redspark_functions.csv")
    data_csv_path   = str(ver_dir / "data_symbols.csv")
    static_csv_path = str(ver_dir / "static_symbols.csv")
    axf_path        = str(build_dir / "MILLI4C.axf")
    code_bin_path   = str(ver_dir / "code.bin")
 
    if verbose:
        print(f"Report ROSys: Building Static.crs for version {version}")
        print(f"Report ROSys: AXF:    {axf_path}")
        print(f"Report ROSys: CSVs:   {ver_dir}")
 
    # --- 1. Parse AXF ---
    axf_sections: list = []
    axf_symbols:  list = []
    if Path(axf_path).exists():
        try:
            axf_data = Path(axf_path).read_bytes()
            axf_sections, axf_symbols = _parse_axf(axf_data)
            if verbose:
                print(f"Report ROSys: AXF symbols (global/weak): {len(axf_symbols)}")
        except Exception as exc:
            print(f"Report ROSys WARNING: could not parse MILLI4C.axf ({exc}); "
                  f"falling back to CSV-only mode")
    else:
        print(f"Report ROSys: HALT! MILLI4C.axf not found at {axf_path}; "
              f"using CSV-only symbol sourcing")
 
    # load csv
    func_csv   = _load_functions_csv(func_csv_path)
    data_csv   = _load_data_csv(data_csv_path)
    static_csv = _load_static_symbols_csv(static_csv_path)
 
    if verbose:
        print(f"Report ROSys: static.crs: redspark_functions.csv: {len(func_csv)} entries")
        print(f"Report ROSys: static.crs: {len(data_csv)} entries")
        print(f"Report ROSys: static.crs: {len(static_csv)} entries (whitelist)")
 
    # --- 3. Merge ---
    named_exports = _build_export_list(
        axf_symbols=axf_symbols,
        axf_sections=axf_sections,
        func_csv=func_csv,
        data_csv=data_csv,
        static_csv=static_csv,
        text_va=text_va,
        verbose=verbose,
    )
 
    if verbose:
        print(f"Report ROSys: static.crs: Final named export count: {len(named_exports)}")
    
    # ASSEMBLE.
    crs_module_name = f"|{module_name}|" if not module_name.startswith("|") else module_name
 
    # Get segment VAs and sizes from AXF sections
    text_size   = 0
    rodata_va   = 0
    rodata_size = 0
    data_va     = 0
    data_size   = 0
    bss_size    = 0x20  # fixed size
 
    if Path(code_bin_path).exists():
        text_size = Path(code_bin_path).stat().st_size
 
    SHF_ALLOC  = 0x2
    SHF_WRITE  = 0x1
    SHF_EXEC   = 0x4
 
    # Read AXF
    for sec in axf_sections:
        if not (sec.sh_flags & SHF_ALLOC):
            continue
        if sec.sh_flags & SHF_EXEC:
            pass
        elif sec.sh_flags & SHF_WRITE:
            if sec.sh_addr and sec.sh_size:
                data_va   = sec.sh_addr
                data_size = sec.sh_size
        elif sec.sh_addr and sec.sh_size:
            rodata_va   = sec.sh_addr
            rodata_size = sec.sh_size
 
    ON_UNRESOLVED_CANDIDATES = [
        "nndbgPanic", "_nndbgPanic", "nndbgPanic_",
        "OnUnresolved", "__cxa_pure_virtual",
    ]
    on_unresolved_va = INVALID_SEG
    for sym in axf_symbols:
        for candidate in ON_UNRESOLVED_CANDIDATES:
            if candidate in sym.name and sym.value:
                on_unresolved_va = make_seg_tag(STATIC_SEG_TEXT, sym.value - text_va)
                if verbose:
                    print(f"Report ROSys: static.crs on_unresolved = {sym.name} @ {sym.value:#x} -> tag={on_unresolved_va:#x}")
                break
        if on_unresolved_va != INVALID_SEG:
            break

# build that thang

    crs_data = build_crs(
        module_name=crs_module_name,
        named_exports=named_exports,
        indexed_exports=[],
        text_va=text_va,
        text_size=text_size,
        rodata_va=rodata_va,
        rodata_size=rodata_size,
        data_va=data_va,
        data_size=data_size,
        bss_size=bss_size,
        on_unresolved_va=on_unresolved_va,
    )
 
    save_crs(out_path, crs_data)
 
    if verbose:
        print(f"Report ROSys: Static Done. File size: {len(crs_data):#x} bytes")
 
    return crs_data

 
if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="Build Static.crs")
    parser.add_argument("version", help="Version string (e.g. US_1.0)")
    parser.add_argument("-o", "--output", default=None, help="Output path")
    parser.add_argument("-v", "--verbose", action="store_true")
    args = parser.parse_args()
 
    out = args.output or str(Path(getBuildPath()) / "Static.crs")
    build_static_crs(
        version=args.version,
        out_path=out,
        verbose=args.verbose,
    )