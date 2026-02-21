PUSH            {R4-R6,LR}
MOV             R5, R0
LDRH            R0, [R2,#2]
MOV             R4, R2
MOV             R6, R1
MOV             R2, R1
MOV             R1, R5
BL              sub_116B34
VCVT.S32.F32    S0, S0
LDR             R1, [R4,#8]
MOV             R2, R6
VMOV            R0, S0
MOV             R0, R0,ASR R1
VMOV            S0, R0
LDRH            R0, [R4,#2]
MOV             R1, R5
VCVT.F32.S32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
