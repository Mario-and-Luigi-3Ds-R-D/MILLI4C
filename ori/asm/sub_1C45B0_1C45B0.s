PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B0F58
STR             R0, [R4]
LDR             R0, [R4,#0x4C]
CMP             R0, #0
BEQ             loc_1C45D8
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4,#0x4C]
MOV             R0, R4
POP             {R4,PC}
