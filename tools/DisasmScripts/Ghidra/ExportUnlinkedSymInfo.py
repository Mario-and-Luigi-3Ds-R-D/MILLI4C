# Exports Function Info (Unlinked Names)
#@category Export
#@author LuigiFan27

from ghidra.program.model.symbol import SourceType

fm = currentProgram.getFunctionManager()

out_path = askFile("Save output file", "OK").getAbsolutePath()
f = open(out_path, "w")

for func in fm.getFunctions(True):
    name = func.getName()
    entry = func.getEntryPoint()
    src = func.getSymbol().getSource()

    if name.startswith("FUN_") and src == SourceType.DEFAULT:
        addr = entry.getOffset()
        f.write("0x%08X %s\n" % (addr, name))

f.close()
print("Done.")
