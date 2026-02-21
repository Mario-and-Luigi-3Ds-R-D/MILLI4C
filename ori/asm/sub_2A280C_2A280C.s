PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B3E58
MOV             R5, #0
STR             R0, [R4]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2A2834
BL              sub_110D10
STR             R5, [R4,#0xC]
STR             R5, [R4,#4]
MOV             R0, R4
STR             R5, [R4,#8]
POP             {R4-R6,PC}
