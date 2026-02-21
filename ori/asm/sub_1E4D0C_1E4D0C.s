PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_1E4D2C
BL              sub_2FF5D4
STR             R5, [R4]
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_1E4D40
BL              sub_2FF5D4
STR             R5, [R4,#8]
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_1E4D54
BL              sub_2FF5D4
STR             R5, [R4,#0x10]
LDR             R0, [R4,#0x18]
CMP             R0, #0
BEQ             loc_1E4D68
BL              sub_2FF5D4
STR             R5, [R4,#0x18]
LDR             R1, [R4,#0x24]
ADD             R0, R4, #0x20 ; ' '
CMP             R1, #0
LDRNE           R1, [R0,#0x10]
CMPNE           R1, #0
BEQ             loc_1E4D94
LDR             R1, =0x101
BL              sub_5858F8
NOP
NOP
B               loc_1E4D9C
NOP
BL              sub_585940
LDR             R0, =0xFFFFF
ADD             R1, R4, #0x34 ; '4'
STM             R1, {R0,R5}
STR             R5, [R4,#0x5C]
POP             {R4-R6,PC}
