PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CDD80
LDR             R0, [R0]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_5438BC
MOV             R0, #8
STRB            R0, [R4,#0xB0]
LDR             R0, [R4,#0xAC]
POP             {R4,LR}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #8
B               sub_14C548
