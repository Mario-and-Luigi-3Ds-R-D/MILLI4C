VLDM            R1!, {S0-S3}
STR             R2, [R0,#4]
VSTR            S0, [R0,#0x10]
VSTR            S1, [R0,#0xC]
VSTR            S2, [R0,#8]
VSTR            S3, [R0]
BX              LR
