VLDM            R1!, {S0-S7}
STR             R2, [R0,#4]
VSTR            S0, [R0,#0x10]
VSTR            S1, [R0,#0xC]
VSTR            S2, [R0,#8]
VSTR            S3, [R0]
VSTR            S4, [R0,#0x20]
VSTR            S5, [R0,#0x1C]
VSTR            S6, [R0,#0x18]
VSTR            S7, [R0,#0x14]
BX              LR
