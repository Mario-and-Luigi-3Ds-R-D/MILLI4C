PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#8]
CMP             R0, #0
BNE             locret_1A4C38
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x14]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1A4C38
LDR             R6, =off_6CE388
LDR             R0, [R6]
BL              sub_1A2728
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x18]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1A4C30
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x3AC]
SXTH            R1, R0
LDR             R0, [R5,#4]
BL              sub_1586A8
LDR             R0, [R4,#4]
BL              sub_61E634
POP             {R4-R6,PC}
