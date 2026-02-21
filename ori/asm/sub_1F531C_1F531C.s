PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R0, =dword_6E7CD0
LDR             R1, [R2,#8]
MOV             R4, R2
BL              sub_586D84
VMOV            S0, R0
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
VCVT.F32.S32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
