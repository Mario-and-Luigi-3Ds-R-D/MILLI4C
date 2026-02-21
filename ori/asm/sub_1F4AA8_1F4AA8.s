PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R7, R1
LDR             R0, [R2,#8]
MOV             R4, R2
UXTH            R5, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R5
MOV             R2, R7
MOV             R1, R6
MOV             R0, R0,LSR#16
VMOV            S0, R0
LDRH            R0, [R4,#2]
VCVT.F32.U32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
