PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R7, R1
BL              sub_13FED4
MOV             R5, R0
BL              sub_13273C
LDR             R2, [R6,#0x14]
LDR             R4, [R6,#0x10]
MOV             R0, R2
CMP             R4, R0
BEQ             loc_1367C0
LDR             R1, [R4]
LDR             R3, [R1]
CMP             R3, R7
LDRNE           R1, [R1,#4]
CMPNE           R1, R7
ADDNE           R4, R4, #4
BNE             loc_13679C
CMP             R2, R4
BEQ             loc_136800
LDR             R0, [R4]
LDR             R0, [R0,#8]
CMP             R0, #1
BLE             loc_1367F0
MOV             R1, #0
MOV             R0, R6
BL              sub_1401CC
LDR             R1, [R4]
MOV             R0, #1
STR             R0, [R1,#8]
MOV             R0, R5
BL              sub_1327BC
MOV             R0, #1
POP             {R4-R8,PC}
MOV             R0, R5
BL              sub_1327BC
MOV             R0, #0
POP             {R4-R8,PC}
