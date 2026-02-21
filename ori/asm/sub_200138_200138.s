LDRSH           R0, [R0,#0xE0]
MOV             R0, R0,LSL#8
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
