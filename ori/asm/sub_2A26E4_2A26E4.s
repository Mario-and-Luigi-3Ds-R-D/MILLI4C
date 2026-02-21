PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, =sub_203CDC
MOV             R3, #4
MOV             R2, #8
ADD             R0, R0, #0xA0
BLX             sub_1009D8
LDR             R0, =off_6B8AD4
MOV             R5, #0
STR             R0, [R4,#0x8C]!
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2A2720
BL              sub_110D10
STR             R5, [R4,#0xC]
LDR             R0, =off_6B7E14
STR             R0, [R4]
SUB             R0, R4, #0x8C
POP             {R4-R6,PC}
