PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_2A27A8
BL              sub_110D10
STR             R5, [R4,#0xC]
STR             R5, [R4,#4]
STR             R5, [R4,#8]
POP             {R4-R6,PC}
