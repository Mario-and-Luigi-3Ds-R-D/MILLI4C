PUSH            {R4-R6,LR}
MOV             R4, R1
CMP             R0, R4
MOV             R5, R0
BEQ             loc_1348AC
MOV             R0, R1
BL              sub_140000
CMP             R0, #0
BEQ             loc_1348AC
LDR             R0, [R4]
STR             R0, [R5]
LDR             R0, [R4,#4]
STR             R0, [R5,#4]
MOV             R0, R5
POP             {R4-R6,PC}
