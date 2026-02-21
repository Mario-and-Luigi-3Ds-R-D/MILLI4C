PUSH            {R4-R6,LR}
MOV             R5, #0
MOV             R4, R0
STRB            R5, [R0,#8]
LDR             R0, [R0,#0xC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1B
BL              sub_14C548
STR             R5, [R4,#0x10]
POP             {R4-R6,PC}
