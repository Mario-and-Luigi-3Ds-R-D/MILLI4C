STR             R1, [R0,#4]
STR             R2, [R0]
CMP             R1, #0
VSTR            S0, [R0,#0xC]
VSTRLE          S0, [R0,#8]
BLE             locret_1400C8
VMOV            S1, R1
VLDR            S2, [R0,#8]
VSUB.F32        S0, S0, S2
VCVT.F32.S32    S1, S1
VDIV.F32        S2, S0, S1
VSTR            S2, [R0,#0x10]
BX              LR
