PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R4, R2
LDR             R1, [R2,#8]!
MOV             R6, R0
LDR             R0, [R2,#4]
UXTH            R1, R1
UXTH            R2, R0
MOV             R0, R6
BL              sub_20DF2C
CMP             R5, #0
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
