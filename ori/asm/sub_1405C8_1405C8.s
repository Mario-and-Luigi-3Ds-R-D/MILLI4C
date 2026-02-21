PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, R1
MOV             R7, R2
MOV             R8, R3
BL              sub_13FED4
MOV             R5, R0
BL              sub_13273C
LDRD            R0, R1, [R4,#0x10]
CMP             R0, R1
BEQ             loc_140624
LDR             R2, [R0]
LDR             R2, [R2,#4]
LDR             R3, [R2,#0x10]
CMP             R3, R6
BNE             loc_14061C
LDR             R3, [R2,#0x14]
CMP             R3, R7
LDRHEQ          R2, [R2,#0x1C]
CMPEQ           R2, R8
BEQ             loc_140624
ADD             R0, R0, #4
B               loc_1405EC
CMP             R1, R0
BEQ             loc_140650
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
POP             {R4-R8,LR}
B               sub_1327BC
