STRB            R1, [R0,#0x37A]
MOV             R1, #0x64 ; 'd'
VLDR            S0, =30.0
SMULBB          R1, R3, R1
STRB            R2, [R0,#0x37B]
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VDIV.F32        S2, S1, S0
VCVT.S32.F32    S0, S2
VMOV            R1, S0
STRB            R1, [R0,#0x37C]
BX              LR
