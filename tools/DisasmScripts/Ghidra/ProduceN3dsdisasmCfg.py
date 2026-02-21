# Exports function info for a .cfg n3dsdisasm file.
#@category Export
#@author LuigiFan27

from ghidra.program.model.listing import FunctionManager
from ghidra.util.task import TaskMonitor

output_file = askFile("Select output file", "Save")
if output_file is None:
    print("No file selected. Exiting.")
    exit()

fm = currentProgram.getFunctionManager()
functions = fm.getFunctions(True)  

with open(output_file.getAbsolutePath(), "w") as f:
    for func in functions:
        addr = func.getEntryPoint()
        name = func.getName().replace("::", "__")
        f.write("arm_func %s %s force\n" % (addr, name))

print("Function export complete.")
