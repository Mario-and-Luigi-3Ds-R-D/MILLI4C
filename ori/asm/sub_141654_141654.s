PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R7, R1
MOV             R8, R2
MOV             R9, R3
BL              sub_13FED4
MOV             R6, R0
BL              sub_13273C
LDR             R0, [R5,#0x14]
LDR             R4, [R5,#0x10]
CMP             R4, R0
BEQ             loc_1416B4
LDR             R1, [R4]
LDR             R1, [R1,#4]
LDR             R2, [R1,#0x10]
CMP             R2, R7
BNE             loc_1416AC
LDR             R2, [R1,#0x14]
CMP             R2, R8
LDRHEQ          R1, [R1,#0x1C]
CMPEQ           R1, R9
BEQ             loc_1416B4
ADD             R4, R4, #4
B               loc_14167C
CMP             R0, R4
BEQ             loc_1416FC
LDR             R1, [R4]
LDR             R0, [R1,#0xC]
CMP             R0, #0
BLE             loc_1416FC
SUB             R0, R0, #1
CMP             R0, #1
STR             R0, [R1,#0xC]
BGE             loc_1416FC
MOV             R1, #0
MOV             R0, R5
BL              sub_1401CC
LDR             R0, [R4]
LDR             R1, [R0,#8]
CMP             R1, #0
MOVEQ           R1, #1
STREQ           R1, [R0,#8]
MOV             R0, R6
POP             {R4-R10,LR}
B               sub_1327BC
