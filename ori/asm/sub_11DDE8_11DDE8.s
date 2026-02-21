PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
CMP             R0, #0
BEQ             locret_11DE08
BL              sub_110D10
MOV             R0, #0
STR             R0, [R4,#0xC]
POP             {R4,PC}
