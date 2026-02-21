PUSH            {R4-R6,LR}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
CMP             R0, #0
LDR             R0, [R2,#0x10]
MOVNE           R5, #1
MOVEQ           R5, #0
CMP             R0, #0
LDR             R0, =off_6CE970
UXTH            R1, R1
MOVNE           R4, #1
MOVEQ           R4, #0
LDR             R0, [R0]
BL              sub_528EB0
MOV             R2, R4
MOV             R1, R5
BL              sub_14B798
MOV             R0, #0
POP             {R4-R6,PC}
