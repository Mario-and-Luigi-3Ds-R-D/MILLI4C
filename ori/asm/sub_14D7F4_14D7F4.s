VLDR            S1, =256.0
LDR             R0, [R0,#0x3AC]
VMUL.F32        S0, S0, S1
CMP             R0, #0
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BEQ             locret_14D814
B               sub_592F08
BX              LR
