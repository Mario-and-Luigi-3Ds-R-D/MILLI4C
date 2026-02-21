PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
BL              sub_292A94
LDR             R0, [R4,#0x14]
BL              sub_292EC0
MOV             R0, #3
STRB            R0, [R4,#0x40C]
POP             {R4,PC}
