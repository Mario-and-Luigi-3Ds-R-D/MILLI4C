PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE098
MOV             R2, #0
LDR             R0, [R0]
LDR             R1, [R0,#0xA4]
ADD             R0, R4, #0x14
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x14
BL              sub_14C548
MOV             R1, #1
STRB            R1, [R4,#0xC]
POP             {R4,PC}
