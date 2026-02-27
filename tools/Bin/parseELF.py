# Made by user Moddimation, WIP on Building System.

from io import StringIO
import subprocess
import sys
import os
from Settings import *

elf_exists = os.path.exists(getElfPath())
if elf_exists:
    readelf_data = str(subprocess.check_output(f'"{Path(os.environ.get("DEVKITARM")) / "bin" / "arm-none-eabi-readelf"}" "{getElfPath()}" -sw -W', shell=True))
    if sys.platform == 'win32':
        readelf_data = readelf_data.replace(r'\r\n', '\n')
    else:
        readelf_data = readelf_data.replace(r'\n', '\n')

def get_elf_symbol(sym_name: str):
    if not elf_exists:
        (f"{getElfPath()} not found")
    if not sym_name:
        return None

    with open(str(Path(getBuildPath()) / "MILLI4C.map")) as f:
        s = StringIO(f.read())
        for line in s:
            if len(line.split()) == 6 and line.split()[5] == 'Stubs.o(stubs)':
                if sym_name == line.split()[0]:
                    return None
    s = StringIO(readelf_data)
    for line in s:
        if "FUNC" in line:
            arr = line.split()
            if sym_name == arr[7]:
                addr = int(arr[1], 16)
                return (addr, int(arr[2]))
    return None