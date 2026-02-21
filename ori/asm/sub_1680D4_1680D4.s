LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R6, R2
MOV             R2, R1
LDR             R0, [R0]
MOV             R4, R3
MOV             R1, #0
LDR             R0, [R0,#0xA0]
BL              sub_2D3DF8
MOV             R5, R0
MOV             R1, R6
STRH            R4, [R0,#0xA]
BL              sub_231710
MOV             R0, R5
POP             {R4-R6,PC}
