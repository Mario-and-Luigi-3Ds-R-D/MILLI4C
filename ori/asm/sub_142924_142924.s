VLDM            R1!, {S0-S5}
MOV             R3, #0
STR             R2, [R0,#4]
STR             R3, [R0]
STR             R3, [R0,#0x14]
VSTR            S0, [R0,#0x10]
VSTR            S1, [R0,#0xC]
VSTR            S2, [R0,#8]
VSTR            S3, [R0,#0x20]
VSTR            S4, [R0,#0x1C]
VSTR            S5, [R0,#0x18]
BX              LR
