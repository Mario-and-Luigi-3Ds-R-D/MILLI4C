VMOV            S0, R1
VLDR            S1, [R0,#0x1C4]
VCVT.F32.S32    S0, S0
VADD.F32        S0, S1, S0
VSTR            S0, [R0,#0x1E0]
BX              LR
