VLDM            R1!, {S0-S2}
MOV             R3, #0
STR             R3, [R0]
STR             R3, [R0,#4]
STR             R3, [R0,#8]
STR             R3, [R0,#0x10]
STR             R3, [R0,#0x14]
STR             R3, [R0,#0x18]
STR             R3, [R0,#0x20]
STR             R3, [R0,#0x24]
STR             R3, [R0,#0x28]
VSTR            S0, [R0,#0xC]
VSTR            S1, [R0,#0x1C]
VSTR            S2, [R0,#0x2C]
BX              LR
