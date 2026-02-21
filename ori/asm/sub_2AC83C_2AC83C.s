ADD             R0, R0, #0x13C00
VLDR            S0, [R0,#0x48]
VLDR            S1, [R0,#0x50]
VMUL.F32        S0, S0, S1
VSTR            S0, [R1]
VLDR            S1, [R0,#0x4C]
VLDR            S2, [R0,#0x54]
VMUL.F32        S1, S1, S2
VSTR            S1, [R1,#4]
VLDR            S2, [R0,#0x40]
VMUL.F32        S0, S0, S2
VSTR            S0, [R1]
VLDR            S0, [R0,#0x44]
VMUL.F32        S0, S1, S0
VSTR            S0, [R1,#4]
BX              LR
