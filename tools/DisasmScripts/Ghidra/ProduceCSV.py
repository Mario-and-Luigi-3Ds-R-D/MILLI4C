# Export CSV for MLDT Project.
#@author LuigiFan27

from ghidra.program.model.symbol import SourceType
import os, csv

program = currentProgram
fm = program.getFunctionManager()

out_path = os.path.join(os.getcwd(), "functions.csv") #project dir fol;der
f = open(out_path, "w")
writer = csv.writer(f)

for func in fm.getFunctions(True):
    addr = func.getEntryPoint().getOffset()
    size = func.getBody().getNumAddresses()

    sym = func.getSymbol()
    name = ""

    if sym and sym.getSource() in [SourceType.IMPORTED, SourceType.DEFAULT, SourceType.USER_DEFINED]:
        name = sym.getName()

    is_auto = not name or name.startswith("FUN_")

    if is_auto:
        name = ""
        suffix = ""
        flag = "U"
    else:
        suffix = ""
        flag = "O"

    addr_str = "0x%08X" % addr       
    size_str = "{:06d}".format(size) 

    writer.writerow([addr_str, flag, size_str, name, suffix])

f.close()
print("Export complete! CSV saved to: {}".format(out_path))
