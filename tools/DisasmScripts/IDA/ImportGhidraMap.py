#@description Load function names from a .map file and create symbols in IDA

import idaapi
import idc
import ida_bytes

from tkinter.filedialog import askopenfilename

map_file = askopenfilename(title="Select .map file", filetypes=[("Map files", "*.map"), ("All files", "*.*")])
if not map_file:
    print("No file selected. Exiting.")
    exit()

with open(map_file, "r") as f:
    lines = f.readlines()

for line in lines:
    line = line.strip()
    if not line or line.lower().startswith("name"):
        continue

    try:
        name_part, addr_part = line.split(",")
        name = name_part.strip()
        addr_str = addr_part.strip()
        addr = int(addr_str, 16)
    except ValueError:
        print("Skipping invalid line:", line)
        continue

    if not idc.get_func_attr(addr, idc.FUNCATTR_START):
        idc.add_func(addr)
    
    idc.set_name(addr, name, idc.SN_NOWARN)
    print("Created function:", name, "at", hex(addr))

print("Finished importing map file.")