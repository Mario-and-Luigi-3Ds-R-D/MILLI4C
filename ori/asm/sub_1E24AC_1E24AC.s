PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_1E24CC
BL              sub_110D10
STR             R5, [R4]
LDRB            R0, [R4,#0x20]
CMP             R0, #0
LDR             R0, [R4,#0xC]
BEQ             loc_1E24F8
CMP             R0, #0
BEQ             loc_1E2508
LDR             R1, =sub_572D64
BLX             sub_3016C8
NOP
NOP
B               loc_1E2504
CMP             R0, #0
BEQ             loc_1E2508
BL              sub_110D10
STR             R5, [R4,#0xC]
LDR             R0, [R4,#4]
STR             R0, [R0,#4]
LDR             R0, [R4,#4]
STR             R0, [R0]
LDR             R0, [R4,#8]
STR             R0, [R0,#4]
LDR             R0, [R4,#8]
STR             R0, [R0]
MOV             R0, R4
POP             {R4-R6,PC}
