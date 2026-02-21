PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, =off_6CE970
MOV             R4, R1
LDR             R1, [R2,#8]
MOV             R5, R2
LDR             R0, [R0]
BL              sub_529468
VMOV            S0, R0
LDRH            R3, [R5,#2]
CMP             R4, #0
ADDNE           R2, R4, #4
MOVEQ           R2, #0
MOV             R1, R6
VCVT.F32.S32    S0, S0
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
