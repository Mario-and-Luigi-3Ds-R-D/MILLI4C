PUSH            {R4,LR}
MOV             R4, R0
BL              sub_10934C
ADD             R0, R4, #0x14
BL              sub_10934C
ADD             R0, R4, #0x2C ; ','
POP             {R4,LR}
NOP
PUSH            {R3-R7,LR}
MOV             R4, R0
MOV             R5, #0
LDR             R0, [R0,#4]
CMP             R0, #0
LDRNE           R0, [R4,#0x10]
CMPNE           R0, #0
BEQ             loc_109338
LDR             R6, =0x105
MOV             R1, SP
MOV             R0, #0
BL              sub_1164C0
LDR             R12, [SP,#0x18+var_18]
ADD             R0, R4, #8
LDR             R3, [R4,#4]
LDM             R0, {R0,R2}
MOV             R1, R6
BLX             R12
STR             R5, [R4,#4]
STR             R5, [R4,#8]
STR             R5, [R4,#0xC]
STR             R5, [R4,#0x10]
STR             R5, [R4,#4]
STR             R5, [R4,#0x10]
STR             R5, [R4,#0x14]
POP             {R3-R7,PC}
