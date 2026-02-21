STRB            R1, [R0,#0x376]
STRB            R2, [R0,#0x377]
MOV             R2, #0x64 ; 'd'
VLDR            S0, =30.0
SMULBB          R2, R3, R2
STRB            R3, [R0,#0x379]
LDRB            R12, [R0,#0x374]
VMOV            S1, R2
MOV             R1, #0
STRB            R1, [R0,#0x375]
BIC             R2, R12, #0x10
STRB            R2, [R0,#0x374]
VCVT.F32.S32    S1, S1
VDIV.F32        S2, S1, S0
VCVT.S32.F32    S0, S2
VMOV            R1, S0
STRB            R1, [R0,#0x378]
BX              LR
