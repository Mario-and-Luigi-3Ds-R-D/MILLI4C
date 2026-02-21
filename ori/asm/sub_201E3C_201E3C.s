VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x1E0]
BX              LR
