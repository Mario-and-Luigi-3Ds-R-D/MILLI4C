PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R4, R1
MOV             R7, R2
BL              sub_13FED4
MOV             R5, R0
BL              sub_13273C
LDRD            R0, R1, [R6,#0x10]
CMP             R0, R1
BEQ             loc_1406C4
LDR             R2, [R0]
LDR             R6, [R2,#4]
LDR             R2, [R6,#0x10]
CMP             R2, #0x64 ; 'd'
LDRHEQ          R2, [R6,#0x1C]
CMPEQ           R2, R4
LDREQ           R2, [R6,#0x14]
CMPEQ           R2, R7
BNE             loc_1406B8
MOV             R0, R5
BL              sub_1327BC
MOV             R0, R6
POP             {R4-R8,PC}
ADD             R0, R0, #4
CMP             R0, R1
BNE             loc_140684
MOV             R0, R5
BL              sub_1327BC
MOV             R0, #0
POP             {R4-R8,PC}
