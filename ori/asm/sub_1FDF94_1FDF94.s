PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
LDRB            R0, [R0,#0x404]
CMP             R0, #0
BNE             loc_1FE0DC
LDR             R6, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x300C3
MOV             R3, #0
LDR             R12, [R6]
ADD             R1, R4, #0x10
SUB             R0, R12, R0
BL              sub_503720
LDRB            R0, [R4,#0xC]
LDR             R5, =off_6CDC90
MOV             R2, #0xFFFFFF00
CMP             R0, #0
REV             R2, R2
LDR             R0, [R5]
MOV             R1, SP
VLDR            S0, =4.0
ADDEQ           R0, R0, #0x12400
ADDEQ           R0, R0, #0x398
ADDNE           R0, R0, #0x12800
ADDNE           R0, R0, #0x38C
ADD             R0, R0, #0x32C
STR             R2, [SP,#0x20+var_20]
BL              sub_4E665C
LDR             R0, [R5]
LDR             R12, [R6]
MOV             R1, #0
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6E0
MOV             R3, #1
LDR             R0, [R0,#0x1C]
LDR             R0, [R0,#-0xC]
STR             R1, [SP,#0x20+var_20]
MOV             R1, #0x3F ; '?'
ADD             R2, R0, #0x28 ; '('
MOV             R0, R12
BL              sub_52AEA8
MOV             R0, R4
BL              sub_1FE67C
LDRB            R0, [R4,#0xC]
VLDR            S16, =0.0
MOV             R6, #7
CMP             R0, #0
LDR             R0, [R5]
BEQ             loc_1FE078
LDR             R1, =0x126D8
LDR             R4, [R1,R0]
LDRB            R1, [R4,#0xC]
CMP             R1, #0
BNE             loc_1FE08C
B               loc_1FE094
LDR             R1, =0x126DC
LDR             R4, [R1,R0]
LDRB            R1, [R4,#0xC]
CMP             R1, #0
BEQ             loc_1FE094
LDR             R1, [R0,#0x20]
B               loc_1FE098
LDR             R1, [R0,#0x24]
MOV             R2, #0
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x16
ADD             R0, R4, #0x10
BL              sub_14C548
LDR             R0, [R5]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
LDR             R0, [R0,#0x244]
STR             R0, [SP,#0x20+var_20]
VSTR            S16, [R4,#0x3AC]
STR             R0, [R4,#0x3B0]
STRB            R6, [R4,#0xD]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
