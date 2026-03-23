# Made by user Moddimation, WIP on Building System.

import os
from Bin.verManager import get_ver
from pathlib import Path

def getProjDir():
    return str(Path(__file__).resolve().parent.parent).replace("\\", "/")

# Build input
def getFuncSymFile():
    return str(Path(getProjDir()) / "data" / "Version" / get_ver() / "redspark_functions.csv")
def getDataSymFile():
    return str(Path(getProjDir()) / "data"  / "Version" / get_ver() / "data_symbols.csv")
def getExeFile():
    return str(Path(getProjDir()) / "data" / "Version" / get_ver() / "code.bin")


#Build output
def getBuildPath():
    return str(Path(getProjDir()) / "build" / get_ver()).replace("\\", "/")
def getElfName():
    return "MILLI4C.axf"
def getElfPath():
    return "/" + str(Path(getBuildPath()) / getElfName()).replace("\\", "/")

# ModuleSys
def getStaticFile():
    return str(Path(getProjDir()) / "data" / "Version" / get_ver() / "static_symbols.csv")
def getModuleImportsFile(module_name: str):
    return str(Path(getProjDir()) / "data" / "RO" / module_name / "imports.csv")

#SplitSys
def getMiniSplitPath():
    return str(Path(getProjDir()) / "ori" / "ASM-TEST")
def getSplitOutput():
    return str(Path(getBuildPath()) / "Split")

def getPresetId():
    return 218