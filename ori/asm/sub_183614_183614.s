PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x458]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_183634
BL              sub_2FF5D4
STR             R5, [R4,#0x458]
LDR             R0, [R4,#0x45C]
CMP             R0, #0
BEQ             locret_183648
BL              sub_2FF5D4
STR             R5, [R4,#0x45C]
POP             {R4-R6,PC}
