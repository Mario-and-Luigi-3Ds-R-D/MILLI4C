PUSH            {R4,LR}
MOV             R4, R0
LDR             R12, =off_6CE970
MOV             R0, #0
STRB            R0, [R4,#0xC]
MOV             R3, R0
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
LDR             R1, [R4,#8]
LDR             R2, =0x30173
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#8]
POP             {R4,LR}
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #2
B               sub_14C548
