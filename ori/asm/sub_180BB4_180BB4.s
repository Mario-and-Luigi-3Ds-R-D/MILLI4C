PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R0, =dword_6E7CD0
LDR             R1, [R3,#8]
MOV             R6, R2
MOV             R4, R3
BL              sub_5F10D0
MOV             R3, R0
VMOV            S0, R3
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
