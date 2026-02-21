PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x70 ; 'p'
MOV             R5, R0
BL              sub_13273C
LDR             R0, [R4,#0x30]
CMP             R0, #0
MOVNE           R1, #3
BEQ             loc_141EA0
MOV             R2, R0
LDR             R0, [R0,#0x14]
STRB            R1, [R2,#0x11]
CMP             R0, #0
BNE             loc_141E8C
MOV             R0, #0
STR             R0, [R4,#0x30]
STRH            R0, [R4,#0x34]
STRH            R0, [R4,#0x36]
MOV             R0, R5
BL              sub_1327BC
LDRH            R1, [R4,#0x6C]
LDRH            R0, [R4,#4]
ORR             R1, R1, #0x8000
ADD             R0, R0, #1
STRH            R1, [R4,#0x6C]
STRH            R0, [R4,#4]
POP             {R4-R6,PC}
