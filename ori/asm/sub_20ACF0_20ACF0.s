PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R4, R2
LDR             R1, [R2,#8]!
MOV             R7, R0
LDR             R0, [R2,#4]
UXTH            R1, R1
CMP             R0, #0
LDR             R0, =off_6CE970
MOVNE           R6, #1
MOVEQ           R6, #0
LDR             R0, [R0]
BL              sub_52F368
ADD             R0, R0, #0x800
CMP             R6, #0
ADD             R0, R0, #0x314
BEQ             loc_20AD3C
BL              sub_366B74
B               loc_20AD44
NOP
BL              sub_5D505C
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
CMP             R0, #0
LDRH            R0, [R4,#2]
VLDRNE          S0, =1.0
VLDREQ          S0, =0.0
MOV             R1, R7
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
