PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =dword_6D1F40
MOV             R6, R1
MOV             R4, R2
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, =0.000015259
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
