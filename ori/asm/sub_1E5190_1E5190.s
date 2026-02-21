ADD             R1, R0, #0x1C
VLDR            S1, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S2, [R0,#0xC]
VLDM            R1, {S3-S5}
VSTR            S1, [R0,#0x10]
VSTR            S0, [R0,#0x14]
VSTR            S2, [R0,#0x18]
ADD             R0, R0, #0x28 ; '('
VSTM            R0, {S3-S5}
BX              LR
