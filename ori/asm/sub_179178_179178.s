PUSH            {R4,LR}
VLDR            S0, [R3,#8]
VLDR            S1, =2.0
LDR             R0, =off_6D1648
VCVT.F32.S32    S0, S0
LDR             R0, [R0]
LDR             R0, [R0,#0xB0]
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTB            R1, R1
BL              sub_196428
MOV             R0, #0
POP             {R4,PC}
