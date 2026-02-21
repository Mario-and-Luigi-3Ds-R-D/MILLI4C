PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xA
BL              sub_14C548
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#8]
LDR             R2, =0x30186
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #7
STRB            R0, [R4,#0xC]
POP             {R4,PC}
