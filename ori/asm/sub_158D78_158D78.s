PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R0, [R0,#0x18]
MOV             R7, #0
LDR             R0, [R0,#8]
ADD             R0, R0, #0x28 ; '('
BL              sub_13273C
LDR             R0, [R5,#0x18]
LDR             R0, [R0,#8]
LDR             R4, [R0,#4]
CMP             R4, #0
LDRNE           R8, =0x81000002
BEQ             loc_158DFC
LDR             R0, [R4]
MOV             R2, #0xFFFFFF02
MOV             R1, R8
LDR             R3, [R0,#0xC]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             loc_158DF0
LDR             R0, [R4,#0x10]
CMP             R0, R5
BNE             loc_158DF0
LDR             R0, [R4,#0x28]
CMP             R0, R6
BNE             loc_158DF0
MOV             R7, #1
B               loc_158DFC
LDR             R4, [R4,#4]
CMP             R4, #0
BNE             loc_158DB0
LDR             R0, [R5,#0x18]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x28 ; '('
BL              sub_1327BC
MOV             R0, R7
POP             {R4-R8,PC}
