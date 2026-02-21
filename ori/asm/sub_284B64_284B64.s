PUSH            {R3-R7,LR}
MOV             R5, R0
LDR             R0, [R0,#0x94]
LDR             R1, [R0,#0x40]
LDR             R0, [R0,#0x44]
CMP             R1, R0
BEQ             loc_284BA0
LDR             R0, =off_6CE970
LDR             R3, =0xFFE683CC
LDR             R1, =0x30226
MOV             R2, #0
LDR             R0, [R0]
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
LDR             R0, [R5,#0x8C]
LDR             R4, [R5,#0x88]
CMP             R0, R4
BEQ             loc_284BD0
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R5,#0x8C]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_284BB0
LDR             R5, [R5,#0x94]
LDR             R0, [R5,#0x44]
LDR             R4, [R5,#0x40]
CMP             R0, R4
MOVNE           R6, #2
BEQ             locret_284C34
LDR             R0, [R4]
LDRB            R1, [R0,#0x3FC]
CMP             R1, #0
CMPNE           R1, #1
BNE             loc_284C24
STRB            R6, [R0,#0x3FC]
LDR             R1, [R0,#4]
MOV             R2, #0xFFFFFF00
ADD             R0, R0, #0x334
REV             R2, R2
LDR             R1, [R1,#0x3C]
VLDR            S0, [R1,#0x3DC]
MOV             R1, SP
STR             R2, [SP,#0x18+var_18]
BL              sub_4E665C
LDR             R0, [R5,#0x44]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_284BE8
POP             {R3-R7,PC}
