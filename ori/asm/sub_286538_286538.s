ADD             R2, R1, #0x3A8
ADD             R3, R1, #0x3B4
STR             R1, [R0,#0x3C]
VLDR            S0, [R2]
VLDR            S1, [R3]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x24]
VLDR            S0, [R2,#4]
VLDR            S1, [R3,#4]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x28]
VLDR            S0, [R2,#8]
VLDR            S1, [R3,#8]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x2C]
LDR             R1, [R0,#0x3C]
MOV             R2, R1
ADD             R1, R1, #0x3C0
ADD             R2, R2, #0x3CC
VLDR            S0, [R1]
VLDR            S1, [R2]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x30]
VLDR            S0, [R1,#4]
VLDR            S1, [R2,#4]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x34]
VLDR            S0, [R1,#8]
VLDR            S1, [R2,#8]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x38]
BX              LR
