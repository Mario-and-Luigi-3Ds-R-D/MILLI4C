PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x1C]
BL              sub_26F2A4
MOV             R0, #1
STRB            R0, [R4,#0x18]
POP             {R4,PC}
