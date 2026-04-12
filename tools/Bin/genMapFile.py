#!/usr/bin/env python3
# Bin/genMapFile.py
# Generates .smap and .map files from an armlink map/symbol output

import re
import sys
import os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..'))
from Settings import *

def is_excluded(name):
    return re.search(r'C2[Ev]|D2[Ev]', name) is not None

def demangle(name):
    import subprocess
    try:
        result = subprocess.run(
            ['c++filt', '-n', name],
            capture_output=True, text=True, timeout=5
        )
        if result.returncode == 0 and result.stdout.strip():
            return result.stdout.strip()
    except (FileNotFoundError, subprocess.TimeoutExpired):
        pass
    return name

def is_vtable(name):
    return name.startswith('_ZTV')
def is_TypeInfo(name):
    return name.startswith('_ZTI')
def is_TypeName(name):
    return name.startswith('_ZTS')

def parse_axf_map(map_file_path):
    symbols = []
    vtables = []

    with open(map_file_path, 'r', errors='replace') as f:
        lines = f.readlines()

    sym_pattern = re.compile(r'^(0x[0-9a-fA-F]+)\s+\w\s+(\S+)$')

    for line in lines:
        if line.startswith('#'):
            continue
        match = sym_pattern.match(line.strip())
        if not match:
            continue
        address  = int(match.group(1), 16)
        raw_name = match.group(2)

        if re.search(r'[CD]2[Ev]', raw_name):
            continue

        demangled = demangle(raw_name)

        if is_vtable(raw_name):
            vtables.append((address, demangled))
        else:
            symbols.append((address, demangled))

    return symbols, vtables


def write_smap(symbols, out_path):
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, 'w') as f:
        for addr, name in sorted(symbols, key=lambda x: x[0]):
            f.write(f'0x{addr:08X},{name}\n')


def write_vmap(vtables, out_path):
    os.makedirs(os.path.dirname(out_path), exist_ok=True)
    with open(out_path, 'w') as f:
        for addr, name in sorted(vtables, key=lambda x: x[0]):
            display = name.replace('vtable for ', '') + '::vtable'
            display = name.replace('typeinfo for ', '') + '::typeinfo'
            display = name.replace('typeinfo name for ', '') + ''
            f.write(f'0x{addr:08X},{display}\n')


def main():
    map_path = getArmLinkMap()
    if not os.path.isfile(map_path):
        sys.exit(1)
    symbols, vtables = parse_axf_map(map_path)
    write_smap(symbols, getSymMapOut())
    write_vmap(vtables, getVMapOut())

def genMapFile():
    main()

if __name__ == '__main__':
    main()