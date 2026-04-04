from __future__ import annotations
 
import argparse
import csv as _csv
import os
import shutil
import subprocess
import sys

from pathlib import Path
from colorama import Fore, Style
from ROSys.genModuleFile import build_module
from ROSys.genStaticFile import build_static_crs
from ROSys.roUtil import HDR
from ROSys.roConfig import load_config
from Settings import *
 
 
MODULE_SRC_ROOT  = "src/RO"
MODULE_LIB_NAME  = "ModuleLib"
ELF_SUFFIX       = ".axf"
BIN_SUFFIX       = ".bin"
CRO_SUFFIX       = ".cro"
CRS_FILENAME     = "static.crs"

 
def _info(msg: str) -> None:
    print(Fore.CYAN + msg + Style.RESET_ALL)
 
def _ok(msg: str) -> None:
    print(Fore.GREEN + "[SUCCESS]  " + msg + Style.RESET_ALL)
 
def _warn(msg: str) -> None:
    print(Fore.YELLOW + "[WARN] " + msg + Style.RESET_ALL)
 
def _err(msg: str) -> None:
    print(Fore.RED + "[HALT!]  " + msg + Style.RESET_ALL)
 
# Module discovery
 
def discover_modules(project_dir: str) -> list[tuple[str, Path]]:
    ro_root = Path(project_dir) / MODULE_SRC_ROOT
    if not ro_root.exists():
        _warn(f"RO source root not found: {ro_root}")
        return []
 
    modules: list[tuple[str, Path]] = []
    lib_entry: tuple[str, Path] | None = None
 
    for entry in sorted(ro_root.iterdir()):
        if not entry.is_dir():
            continue
        name = entry.name
        if name.startswith(".") or name.startswith("_"):
            continue
        if name == MODULE_LIB_NAME:
            lib_entry = (name, entry)
        else:
            modules.append((name, entry))
 
    if lib_entry:
        modules.insert(0, lib_entry)
 
    return modules
 
# Path helpers
 
def _elf_path_for(module_name: str, build_path: str) -> str:
    candidates = [
        Path(build_path) / "src" / "RO" / (module_name + ELF_SUFFIX),
        Path(build_path) / (module_name + ELF_SUFFIX),
        #Path(build_path) / "ro" / (module_name + ELF_SUFFIX),
    ]
    for c in candidates:
        if c.exists():
            return str(c)
    return str(candidates[0])
 
 
def _cro_out_path(module_name: str, build_path: str) -> str:
    return str(Path(build_path) / "RomFS" / "RO" / (module_name + CRO_SUFFIX))
 
 
def _sha256_csv_for(module_name: str, project_dir: str) -> str | None:
    p = Path(project_dir) / "data" / "RO" / module_name / "SHA256.csv"
    return str(p) if p.exists() else None
 
 
def _export_csv_for(module_src: Path, version: str, project_dir: str) -> str | None:
    candidates = [
        module_src / "exports.csv",
        Path(project_dir) / "data" / "RO" / module_src.name / "exports.csv",
        Path(project_dir) / "data" / "Version" / version / (module_src.name + "_exports.csv"),
    ]
    for c in candidates:
        if c.exists():
            return str(c)
    return None
 
# Per Mod importing 
def _import_csv_for(module_src: Path, version: str, project_dir: str) -> str | None:
    candidates = [
        Path(getModuleImportsFile(module_src.name)),
        module_src / "imports.csv",
        Path(project_dir) / "data" / "Version" / version / (module_src.name + "_imports.csv"),
    ]
    for c in candidates:
        if c.exists():
            return str(c)
    return None

 
def _run_fromelf(axf_path: str, bin_out: str) -> bool:
    armcc = os.environ.get("ARMCC_PATH", "")
    if armcc:
        fromelf_bin = str(
            Path(armcc, "bin", "fromelf").with_suffix(".exe" if sys.platform == "win32" else "")
        )
    else:
        fromelf_bin = "fromelf"
 
    cmd = [fromelf_bin, "--bincombined", axf_path, "--output", bin_out]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True)
        if result.returncode != 0:
            _err(f"fromelf failed for {Path(axf_path).name}:")
            for line in result.stderr.splitlines():
                _err(f"  {line}")
            return False
        return True
    except FileNotFoundError:
        _err(f"fromelf not found (ARMCC_PATH={armcc!r}). "
             f"Set the ARMCC_PATH environment variable.")
        return False
 
 
# SHA256 Handler
 
def _load_sha256_overrides(csv_path: str) -> dict[str, bytes]:
    VALID = {"hash0", "hash1", "hash2", "hash3"}
    overrides: dict[str, bytes] = {}
    with open(csv_path, newline="") as f:
        for row in _csv.reader(f):
            if not row or row[0].strip().startswith("#"):
                continue
            if len(row) < 2:
                continue
            field  = row[0].strip().lower()
            hexval = row[1].strip().replace(" ", "")
            if field not in VALID:
                continue
            if len(hexval) != 64:
                _warn(f"SHA256.csv [{field}]: expected 64 hex chars, got {len(hexval)} – skipping")
                continue
            try:
                overrides[field] = bytes.fromhex(hexval)
            except ValueError as exc:
                _warn(f"SHA256.csv [{field}]: bad hex – {exc}")
    return overrides
 
# SHA256 Config

_SHA256_OFFSETS = {
    "hash0": HDR.HASH0,
    "hash1": HDR.HASH1,
    "hash2": HDR.HASH2,
    "hash3": HDR.HASH3,
}
 
 
def _apply_sha256_overrides(buf: bytearray, overrides: dict[str, bytes]) -> None:
    for field, digest in overrides.items():
        buf[_SHA256_OFFSETS[field] : _SHA256_OFFSETS[field] + 32] = digest
        _info(f"       [SHA256] override: {field}")
 
# Indiv RO Build
 
def build_single_module(
    module_name: str,
    module_src: Path,
    build_path: str,
    version: str,
    project_dir: str,
    verbose: bool = False,
) -> bool:
    is_lib     = (module_name == MODULE_LIB_NAME)
    elf        = _elf_path_for(module_name, build_path)
    out        = _cro_out_path(module_name, build_path)
    sha256_csv = _sha256_csv_for(module_name, project_dir)
 
    # "Does AXF exist?"
    if not Path(elf).exists():
        _warn(f"ELF not found for {module_name}: {elf}")
        _warn(f"  cmake should produce build/<ver>/{module_name}.axf – "
              f"check that the target exists in CMakeLists.txt")
        return False
 
    export_csv = _export_csv_for(module_src, version, project_dir)
    import_csv = _import_csv_for(module_src, version, project_dir)
 
    # Load per-module config
    cfg = load_config(module_name, project_dir)
    if verbose and cfg.split_rodata:
        _info(f"       config  = split_rodata=true")
 
    if not import_csv:
        _warn(f"{module_name}: no imports.csv found — ARMCC produces fully linked AXF, "
              f"imports must be defined in data/RO/{module_name}/imports.csv")
 
    if verbose:
        _info(f"  CRO: {module_name}")
        _info(f"       axf     = {elf}")
        if export_csv: _info(f"       exports = {export_csv}")
        if import_csv: _info(f"       imports = {import_csv}")
        if sha256_csv: _info(f"       sha256  = {sha256_csv}")
 
    # Load axf
    try:
        cro_data = build_module(
            module_name=module_name,
            elf_path=elf,
            export_csv=export_csv,
            import_csv=import_csv,
            out_path=None,
            is_library=is_lib,
            split_rodata=cfg.split_rodata,
            bss_size_override=cfg.bss_size,
        )
 
        # Apply SHA256.csv overrides if present
        if sha256_csv:
            overrides = _load_sha256_overrides(sha256_csv)
            if overrides:
                buf = bytearray(cro_data)
                _apply_sha256_overrides(buf, overrides)
                cro_data = bytes(buf)
 
        # Write final RO
        Path(out).parent.mkdir(parents=True, exist_ok=True)
        Path(out).write_bytes(cro_data)
        _ok(f"{module_name}.cro  ({len(cro_data):#x} bytes)")
        return True
 
    except Exception as exc:
        _err(f"Failed to build {module_name}.cro: {exc}")
        if verbose:
            import traceback
            traceback.print_exc()
        return False
 
 
# Build Static
 
def build_static(version: str, build_path: str, project_dir: str,
                 verbose: bool = False) -> bool:
    out = str(Path(build_path) / CRS_FILENAME)
    _info(f"Report ROSys: Building RO Static Module...")
    try:
        build_static_crs(
            version=version,
            out_path=out,
            project_dir=project_dir,
            verbose=verbose,
        )
        _ok(f"Static.crs  ({Path(out).stat().st_size:#x} bytes)")
        return True
    except Exception as exc:
        _err(f"Failed to build Static.crs: {exc}")
        if verbose:
            import traceback
            traceback.print_exc()
        return False
 
def build_all_modules(
    version: str,
    verbose: bool = False,
    clean: bool = False,
    static_only: bool = False,
    only_module: str | None = None,
) -> bool:
    project_dir = str(getProjDir())
    build_path  = getBuildPath()
 
    ro_out = Path(build_path) / "RomFS" / "RO"
    if clean and ro_out.exists():
        shutil.rmtree(ro_out)
    ro_out.mkdir(parents=True, exist_ok=True)
 
    success = True
 
    # 1. Static.crs
    if not build_static(version, build_path, project_dir, verbose):
        success = False
 
    if static_only:
        return success
 
    # 2. Dynamic CRO modules
    modules = discover_modules(project_dir)
    if not modules:
        _warn("No CRO modules found under src/RO/")
        return success
 
    _info(f"\nReport ROSys: Found {len(modules)} RO module(s): {[m[0] for m in modules]}\n")
 
    for module_name, module_src in modules:
        if only_module and module_name != only_module:
            continue
        ok = build_single_module(
            module_name=module_name,
            module_src=module_src,
            build_path=build_path,
            version=version,
            project_dir=project_dir,
            verbose=verbose,
        )
        if not ok:
            success = False
 
    _info("\n" + ("=" * 60))
    if success:
        _ok("All CRO modules built successfully.")
    else:
        _err("One or more CRO modules failed to build.")
    _info("=" * 60 + "\n")
 
    return success

# CLI
 
def main() -> None:
    parser = argparse.ArgumentParser(
        prog="ModuleSys.py",
        description="Nintendo 3DS CRO Build System",
    )
    parser.add_argument("version", nargs="?", default=None)
    parser.add_argument("-v", "--verbose", action="store_true")
    parser.add_argument("-c", "--clean", action="store_true")
    parser.add_argument("--static-only", action="store_true")
    parser.add_argument("--module", default=None, metavar="NAME")
    args = parser.parse_args()
 
    try:
        from Bin.verManager import get_ver
        version = args.version or get_ver()
    except Exception:
        version = args.version
 
    if not version:
        _err("No version specified.")
        sys.exit(1)
 
    ok = build_all_modules(
        version=version,
        verbose=args.verbose,
        clean=args.clean,
        static_only=args.static_only,
        only_module=args.module,
    )
    sys.exit(0 if ok else 1)
 
 
if __name__ == "__main__":
    main()