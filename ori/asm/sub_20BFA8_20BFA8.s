PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R2,#8]
MOV             R4, R1
MOV             R5, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F480
BL              sub_5EC8BC
CMP             R0, #0
VLDRNE          S0, =1.0
VLDREQ          S0, =0.0
CMP             R4, #0
LDRH            R0, [R5,#2]
ADDNE           R2, R4, #4
MOVEQ           R2, #0
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
