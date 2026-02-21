PUSH            {R4-R6,LR}
MOV             R6, R0
ADD             R0, R0, #0x30 ; '0'
MOV             R4, R0
BL              sub_13273C
LDR             R5, [R6,#0x24]
CMP             R5, #0
BEQ             loc_127338
LDR             R0, [R5]
STR             R0, [R6,#0x24]
LDR             R0, [R6,#0x2C]
ADD             R0, R0, #1
STR             R0, [R6,#0x2C]
LDR             R1, [R6,#0x14]
MOV             R0, R5
TST             R1, #1
LDR             R1, [R6,#0x18]
BEQ             loc_127338
ADD             R1, R1, R0
MOV             R2, #0
BL              sub_121790
MOV             R0, R4
BL              sub_1327BC
MOV             R0, R5
POP             {R4-R6,PC}
