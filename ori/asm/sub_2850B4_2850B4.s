PUSH            {R3-R7,LR}
MOV             R5, R0
LDR             R0, [R0,#0x11C]
LDR             R4, [R5,#0x118]
CMP             R0, R4
MOVNE           R6, #5
BEQ             locret_285120
LDR             R0, [R4]
LDRB            R1, [R0,#0x500]
CMP             R1, #0
LDRBNE          R1, [R0,#1]
CMPNE           R1, #0
BNE             loc_285110
STRB            R6, [R0]
LDR             R1, [R0,#4]
MOV             R2, #0xFFFFFF00
ADD             R0, R0, #0x3C4
REV             R2, R2
LDR             R1, [R1,#0x3C]
VLDR            S0, [R1,#0x3DC]
MOV             R1, SP
STR             R2, [SP,#0x18+var_18]
BL              sub_4E665C
LDR             R0, [R5,#0x11C]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_2850D0
POP             {R3-R7,PC}
