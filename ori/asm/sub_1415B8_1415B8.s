PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R7, R1
BL              sub_13FED4
MOV             R6, R0
BL              sub_13273C
LDR             R2, [R5,#0x14]
LDR             R4, [R5,#0x10]
MOV             R0, R2
CMP             R4, R0
BEQ             loc_141600
LDR             R1, [R4]
LDR             R3, [R1]
CMP             R3, R7
LDRNE           R1, [R1,#4]
CMPNE           R1, R7
ADDNE           R4, R4, #4
BNE             loc_1415DC
CMP             R2, R4
BEQ             loc_141648
LDR             R0, [R4]
LDR             R1, [R0,#0xC]
CMP             R1, #0
BLE             loc_141648
SUB             R1, R1, #1
CMP             R1, #1
STR             R1, [R0,#0xC]
BGE             loc_141648
MOV             R1, #0
MOV             R0, R5
BL              sub_1401CC
LDR             R0, [R4]
LDR             R1, [R0,#8]
CMP             R1, #0
MOVEQ           R1, #1
STREQ           R1, [R0,#8]
MOV             R0, R6
POP             {R4-R8,LR}
B               sub_1327BC
