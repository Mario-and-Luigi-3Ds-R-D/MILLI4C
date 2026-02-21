PUSH            {R4-R6,LR}
LDR             R1, [R2,#8]
LDR             R0, [R2,#0xC]
LDR             R2, [R2,#0x10]
UXTH            R5, R1
UXTH            R1, R0
LDR             R0, =off_6CE970
CMP             R2, #0
MOVNE           R4, #1
MOVEQ           R4, #0
LDR             R0, [R0]
BL              sub_52F480
MOV             R2, R4
MOV             R1, R5
BL              sub_4F1EF0
MOV             R0, #0
POP             {R4-R6,PC}
