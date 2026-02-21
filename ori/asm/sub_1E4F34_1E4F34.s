PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x314
MOV             R5, R0
BL              sub_128004
MOV             R1, R5
ADD             R0, R4, #0x13800
POP             {R4-R6,LR}
MOV             R2, #2
ADD             R0, R0, #0x36C
NOP
PUSH            {R4-R8,LR}
CMP             R2, #0
MOV             R7, R1
BEQ             loc_1E4FF8
TST             R2, #1
BEQ             loc_1E4F88
TST             R2, #2
MOVEQ           R5, #1
BEQ             loc_1E4F8C
MOV             R5, #0
TST             R2, #2
BEQ             loc_1E4FA0
TST             R2, #1
MOVEQ           R6, #1
BEQ             loc_1E4FA4
MOV             R6, #0
LDR             R4, [R0,#4]
CMP             R4, #0
BEQ             locret_1E5024
CMP             R4, #0
SUBNE           R0, R4, #0x104
MOVEQ           R0, #0
LDRB            R1, [R0,#0x110]
LDR             R4, [R0,#0x10C]
CMP             R1, #0
BEQ             loc_1E501C
CMP             R5, #0
BEQ             loc_1E4FE0
LDRB            R1, [R0,#0x6F]
TST             R1, #1
BEQ             loc_1E501C
CMP             R6, #0
BEQ             loc_1E500C
LDRB            R1, [R0,#0x6F]
TST             R1, #1
BEQ             loc_1E500C
B               loc_1E501C
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R7
POP             {R4-R8,LR}
BX              R2
LDR             R1, [R0]
LDR             R2, [R1,#0x10]
MOV             R1, R7
BLX             R2
CMP             R4, #0
BNE             loc_1E4FB0
POP             {R4-R8,PC}
