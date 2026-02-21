PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x2A ; '*'
LDR             R0, [R0,#0x14]
BL              sub_14C548
MOV             R0, #0
STRB            R0, [R4,#8]
POP             {R4,PC}
