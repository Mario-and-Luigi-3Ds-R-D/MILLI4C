LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R2
MOV             R2, R1
LDR             R0, [R0]
MOV             R1, #1
LDR             R0, [R0,#0xA0]
BL              sub_2D3DF8
STRH            R4, [R0,#0xA]
POP             {R4,PC}
