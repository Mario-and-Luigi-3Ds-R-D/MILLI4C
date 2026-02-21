PUSH            {R4-R6,LR}
MOV             R6, R1
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
LDR             R5, [R2,#0x10]
CMP             R0, #0
LDR             R0, =off_6CE970
UXTH            R1, R1
MOVNE           R4, #1
MOVEQ           R4, #0
LDR             R0, [R0]
BL              sub_52F508
CMP             R4, #0
LDRNE           R1, [R6,#4]
ADDNE           R1, R1, R5
MOVEQ           R1, #0
STR             R1, [R0,#0x20C]
MOV             R0, #0
POP             {R4-R6,PC}
