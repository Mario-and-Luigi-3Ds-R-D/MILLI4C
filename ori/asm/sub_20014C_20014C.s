LDR             R1, [R0,#0xD8]
LDRSH           R0, [R0,#0xE0]
RSB             R0, R1, R0,LSL#8
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
