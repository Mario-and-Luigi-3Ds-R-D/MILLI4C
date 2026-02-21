PUSH            {R4-R6,LR}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
LDR             R2, [R2,#0x10]
AND             R5, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
UXTH            R4, R2
LDR             R0, [R0]
BL              sub_52F368
MOV             R6, R0
BL              sub_5EB408
CMP             R0, #0
BEQ             loc_20A43C
CMP             R5, #2
CMPNE           R5, #4
BEQ             loc_20A430
CMP             R5, #5
BNE             loc_20A43C
AND             R1, R4, #0xFF
MOV             R0, R6
STRB            R1, [R0,#0x48B]
B               loc_20A43C
AND             R1, R4, #0xFF
MOV             R0, R6
BL              sub_4E3F80
MOV             R0, #0
POP             {R4-R6,PC}
