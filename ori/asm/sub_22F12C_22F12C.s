VMOV            S0, R2
VLDR            S1, [R1]
VCVT.F32.S32    S2, S0
VCVT.F32.S32    S3, S0
VCVT.F32.S32    S0, S0
VDIV.F32        S4, S1, S2
VSTR            S4, [R3,#0x10]
VLDR            S1, [R1,#4]
VDIV.F32        S2, S1, S3
VSTR            S2, [R3,#0x14]
VLDR            S1, [R1,#8]
VDIV.F32        S2, S1, S0
VSTR            S2, [R3,#0x18]
BX              LR
