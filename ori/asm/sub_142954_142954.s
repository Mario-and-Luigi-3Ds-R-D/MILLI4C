VLDM            R1!, {S0-S8}
MOV             R3, #0
STR             R3, [R0]
STR             R3, [R0,#0x10]
STR             R3, [R0,#0x20]
VSTR            S0, [R0,#0xC]
VSTR            S1, [R0,#8]
VSTR            S2, [R0,#4]
VSTR            S3, [R0,#0x1C]
VSTR            S4, [R0,#0x18]
VSTR            S5, [R0,#0x14]
VSTR            S6, [R0,#0x2C]
VSTR            S7, [R0,#0x28]
VSTR            S8, [R0,#0x24]
BX              LR
