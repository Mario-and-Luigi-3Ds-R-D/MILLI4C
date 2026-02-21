PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R9, #0
LDR             R0, [R0,#0x1C]
CMP             R0, #0
BEQ             loc_2219E0
LDR             R0, [R5,#0x18]
ADD             R7, R5, #0x10
LDR             R4, [R0,#4]
CMP             R4, R0
MOVSNE          R6, R4
BEQ             loc_2219E0
LDR             R0, [R4,#8]
LDR             R1, [R0,#8]
CMP             R1, #0
LDRNE           R1, [R0,#0x14]
CMPNE           R1, #0
ADDNE           R8, R0, #0x14
BEQ             loc_2219C4
MOV             R0, R1
BL              sub_110D10
STR             R9, [R8]
LDR             R0, [R4,#8]
STR             R9, [R0,#0x28]
LDR             R0, [R7,#8]
LDR             R4, [R6,#4]
CMP             R4, R0
MOVSNE          R6, R4
BNE             loc_22199C
LDR             R0, [R5,#0x10]
CMP             R0, #0
BEQ             loc_2219F4
BL              sub_110D10
STR             R9, [R5,#0x10]
LDR             R0, [R5,#0x1C]
CMP             R0, #0
BEQ             loc_221A08
BL              sub_110D10
STR             R9, [R5,#0x1C]
LDR             R0, [R5,#0x14]
STR             R0, [R0,#4]
LDR             R0, [R5,#0x14]
STR             R0, [R0]
LDR             R0, [R5,#0x18]
STR             R0, [R0,#4]
LDR             R0, [R5,#0x18]
STR             R0, [R0]
STRH            R9, [R5,#0x30]
STR             R9, [R5]
STR             R9, [R5,#4]
STR             R9, [R5,#0xC]
STR             R9, [R5,#8]
POP             {R4-R10,PC}
