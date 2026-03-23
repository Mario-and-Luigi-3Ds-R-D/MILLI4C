# Mario and Luigi Dream Team Decompilation / Project MILLI4C

This is Mario & Luigi Dream Team US 1.0 decomp that will most likely be finished by 2032 minimum.

This is currently targetting the 1.0 US Build of the game but will soon expand to other versions.
Currently this project is going through a "setup" phase, meaning it may take while for us to get some actual work done.

This project will be going on a "Behind the scenes dev phase" for a bit, since I'm gonna be honest I barely know a LICK of ARM ASM. Work will be done, yet not released to the public.

# The Goal

1:1 Matching of the US 1.0 release, and later down the line other releases.
As of currently,  only the code.bin is being targeted. No CROs *yet*. Nor will be building of the RomFS be targeted ethier.
I myself don't care for a PC Port of a 3Ds game. But, once finished I will not care if someone forks it and makes a PC Port for themselves.

# Building the code.bin

Currently, the system for building the code.bin is using the tools/Build.py file. (This method is temporary, borrowed from User Moddimations SM3DL Decomp Project) 

**Windows**

1) The User will *need* ARMCC_894, and DevkitARM

2) Set ARMCC Path enviornments for windows
Example:


ARMCC_PATH = C:\path\2\folder\ARMCC\894


ARMCC41LIB = C:\path\2\folder\ARMCC\894\lib


ARMCC41INC = C:\path\2\folder\ARMCC\894\include\windows


3) Run Build.py, and a *code.bin* and a matching *MILLI4C.axf* file will be produced. As well as several *.o files.

# CRO Building Features & Config


1) All CROs will have an imports CSV in data/RO/ModuleName/imports.csv to which this format is: "_ZN10RealSystemC1EPK13FieldBootInfo,0,0x00,2,0" "Symbol,Patch,NumberBy0x4,RelocType,Add0"


2) All CROs will also have a SHA config too, which edits the SHA256 of the RO header. "data/RO/ModuleName/SHA256.csv" hash0,1,2,3:whateversha256


3) The static.crs will be generated via "data/Version/<VER>/static_symbols.csv" the format being: "_ZN2nn2ro10InitializeEPvjS0_jb,0,0" "SymbolMangledOrNot,index,offset" (they get generated in order so)


4) Lastly the CRO vtable config per RO. This is in development so it does not work as of yet.


Oh and, CROs can use ModuleLib as most import from there.

**Linux**

As of currently, I do not know if linux is supported yet.

# How to help

For anyone willing to help, please do so! This project is moving at a snails pace currently since, well, I'm in the setup phase kind-of when it comes to getting this up, so all help is appreciated if anyone wants to pitch in.

Join the discord! https://discord.gg/dQ4xEerM9m