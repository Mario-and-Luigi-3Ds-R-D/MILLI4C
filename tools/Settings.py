# Made by user Moddimation, WIP on Building System.

import os
from Bin.verManager import get_ver
from pathlib import Path

def getProjDir():
    return Path(os.path.realpath(__file__).split("tools")[0].rstrip(os.sep))

# Build input
def getFuncSymFile():
    return str(Path(getProjDir()) / "data" / get_ver() / "redspark_functions.csv")
def getDataSymFile():
    return str(Path(getProjDir()) / "data"  / get_ver() / "data_symbols.csv")
def getExeFile():
    return str(Path(getProjDir()) / "data" / get_ver() / "code.bin")

#Build output
def getBuildPath():
    return str(Path(getProjDir()) / "build" / get_ver())
def getElfName():
    return "MILLI4C.axf"
def getElfPath():
    return str(Path(getBuildPath()) / getElfName())

#SplitSys
def getMiniSplitPath():
    return str(Path(getProjDir()) / "ori" / "ASM-TEST")
def getSplitOutput():
    return str(Path(getBuildPath()) / "Split")

def getPresetId():
    return 218