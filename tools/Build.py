# Made by user Moddimation, WIP on Building System.

import os
import subprocess
import multiprocessing
from colorama import Fore, Style
import sys
import shutil
import hashlib
import argparse

from Bin.genLinkerScript import genLDScript
from Bin.genObjdiffFile import genObjdiff
from Bin.genMapFile import genMapFile
from Bin.utilsVer import *
from ModuleSys import *
from Settings import *

def main() -> None:
    def status(msg: str):
        print(Fore.CYAN + msg + Fore.RESET + Style.RESET_ALL)

    parser = argparse.ArgumentParser('Build.py', description="Build the Mario & Luigi Dream Team decompilation project")
    parser.add_argument("version", nargs="?", default=None, help="Version to use.")
    parser.add_argument('-c', action='store_true', help="Clean before building.")
    parser.add_argument('-v', action='store_true', help="Give verbose output.")
    parser.add_argument('-m', action='store_true', help="Compile only matching code (BROKEN)")
    parser.add_argument('-w', action='store_true', help="Omit many warnings (nintendo format)")
    args = parser.parse_args()
    
    found_version = sort_bin_if_exist()
    old_version = get_ver()
    version = args.version

    if not version or found_version or ("code.bin" in version):
        version = found_version or old_version
    else:
        if not is_ver_name(version):
            print (f"Passed argument \'{version}\' is not a valid version!")
            print (f"Available versions: {get_versions()}")
            sys.exit(1)

        if found_version and (found_version is not version):
            print ("found unsorted code.bin in data/, but parameter version differs.")
            print ("data/Version/code.bin: " + found_version + ", specified: " + version)
            sys.exit(1)

        set_ver(version)

    if not is_ver_exist(version):
        print(f"data/Version/{version}/code.bin missing. Please provide the code.bin for the {version} version.")
        return

    if not is_ver_valid(version):
        print(f"code.bin for {version} is invalid. Did you dump the right version correctly?")
        return

    if not os.path.isdir(getBuildPath()) or args.c or (version != old_version):
        shutil.rmtree(getBuildPath(), ignore_errors=True)
        cmake_args = ['cmake', "-B", getBuildPath(), '-G', 'Unix Makefiles', f"-DRP_VERSION={version.upper()}"]
        if args.m == True:
            cmake_args.append("-DONLY_MATCHING=1")
        if args.w == True:
            cmake_args.append("-DWARNS=1")

        try:
            subprocess.run(cmake_args, check=True)
        except subprocess.CalledProcessError:
            exit(1)

    genLDScript()
    if not os.path.exists(Path(getBuildPath()) / "linker.ld"):
        status ("No linker file generated.")
        return

    cmake_args = ['cmake', '--build', getBuildPath(), '--', '-j', str(multiprocessing.cpu_count())]
    if args.v:
        cmake_args.append('VERBOSE=1')

    result = subprocess.run(cmake_args)
    if result.returncode != 0:
        exit(result)

    def fromelf():
        status("Report Build System: MILLI4C/build/US_1.0/MILLI4C.axf Successful! Targeting executable.")
        subprocess.run([
            str(Path(os.environ['ARMCC_PATH'], 'bin', 'fromelf').with_suffix('.exe' if sys.platform == 'win32' else '')),
            '--bincombined', str(Path(getBuildPath()) / getElfName()),
            '--output', str(Path(getBuildPath()) / 'code.bin')
        ], check=True)

    fromelf()

    if os.path.exists(f'compile_commands.json'):
        shutil.copyfile(f'compile_commands.json', '../compile_commands.json')
    
    # Sub

    status("Report Build System: Generating All Target Address Map...")
    genMapFile()

    status("Report Build System: Generating objdiff.json...")
    genObjdiff()

    status("Report ROSys: Building RO Modules...")
    build_all_modules(version=version, verbose=args.v)

    #genSplitAll()

    status("Generated the Mario & Luigi Dream Team US 1.0 Decompilation Project.")

if __name__ == "__main__":
    main()