ADD             R0, R1, #0x400
VLDR            S0, [R1,#0x108]
VLDR            S1, [R0,#0x224]
VADD.F32        S0, S0, S1
VSTR            S0, [R2]
VLDR            S0, [R1,#0x108]
VLDR            S1, [R0,#0x228]
VADD.F32        S0, S0, S1
VSTR            S0, [R2,#4]
VLDR            S1, [R0,#0x234]
VLDR            S0, [R1,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R2,#8]
LDR             R0, [R1,#0x10C]
STR             R0, [R2,#0xC]
BX              LR
