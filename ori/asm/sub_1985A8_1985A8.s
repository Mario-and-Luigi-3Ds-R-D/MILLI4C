ADD             R1, R0, #0x100
LDR             R0, [R0,#0x1AC]
LDRSH           R1, [R1,#0xB4]
RSB             R0, R0, R1,LSL#8
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
