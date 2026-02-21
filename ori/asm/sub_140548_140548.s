PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R6, R1
BL              sub_13FED4
MOV             R5, R0
BL              sub_13273C
ADD             R4, R4, #0x10
LDM             R4, {R0,R3}
MOV             R1, R3
CMP             R0, R1
BEQ             loc_140590
LDR             R2, [R0]
LDR             R12, [R2]
CMP             R12, R6
LDRNE           R2, [R2,#4]
CMPNE           R2, R6
ADDNE           R0, R0, #4
BNE             loc_14056C
CMP             R3, R0
BEQ             loc_1405BC
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
ADD             R2, R2, #1
STR             R2, [R1,#0xC]
LDR             R1, [R0]
LDR             R0, [R1,#8]
CMP             R0, #0
MOVGT           R0, #0
STR             R0, [R1,#8]
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1327BC
