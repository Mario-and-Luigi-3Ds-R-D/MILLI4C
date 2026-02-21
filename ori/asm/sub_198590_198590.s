ADD             R0, R0, #0x100
LDRSH           R0, [R0,#0xB4]
MOV             R0, R0,LSL#8
VMOV            S0, R0
VCVT.F32.S32    S0, S0
BX              LR
