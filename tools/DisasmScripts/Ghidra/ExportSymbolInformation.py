# Exports Symbol Information
# -*- coding: utf-8 -*-
#@category Export
#@author LuigiFan27

from ghidra.program.model.symbol import SourceType

output_file = askFile("Select .map export file", "Save")

with open(output_file.getAbsolutePath(), "w") as f:
    f.write("Name, Address\n")

    for func in currentProgram.getFunctionManager().getFunctions(True):
        name = func.getName()
        addr = func.getEntryPoint().getOffset()

        if name == "":
            continue

        f.write("%s, 0x%08X\n" % (name, addr))

print("Export done:", output_file)
