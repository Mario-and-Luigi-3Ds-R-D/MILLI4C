import os
from tools.Settings import getExeFile

def apply(config, args):
    config["make_command"] = ["python3", "tools/Build.py"]
    config["baseimg"] = getExeFile()
    config["myimg"] = "build/code.bin"
    config["source_directories"] = ["src", "library", "data"]
    config["source_extensions"] = [".c", ".h", ".cpp", ".hpp", ".csv"]
    config["arch"] = "armel"
    config["arch_objdump"] = "arm"
    config["objdump_executable"] = os.environ.get('DEVKITARM') + "/bin/arm-none-eabi-objdump"