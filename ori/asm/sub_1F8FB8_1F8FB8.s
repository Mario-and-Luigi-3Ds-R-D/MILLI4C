PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, [R0,#0x14]
LDR             R0, =off_6BB7A8
CMP             R6, #0
STR             R0, [R5]
BEQ             loc_1F9004
LDR             R0, =off_6CDC90
LDR             R0, [R0]
ADD             R4, R0, #0x12400
ADD             R4, R4, #0x364
MOV             R0, R6
BL              sub_14F3EC
LDR             R0, [R4,#4]
STR             R0, [R6]
STR             R6, [R4,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #1
STR             R0, [R4,#8]
MOV             R0, R5
POP             {R4-R6,PC}
