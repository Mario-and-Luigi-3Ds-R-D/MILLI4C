PUSH            {R4-R10,LR}
MOV             R6, #0
MOV             R7, R1
MOV             R5, #0
LDR             R0, [R2,#8]
LDR             R1, =off_6CE970
LDR             R8, [R2,#0xC]
SXTB            R9, R0
LDR             R0, =0x10645C
LDR             R1, [R1]
ADD             R0, R0, R1
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_204ADC
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_204AD0
MOV             R6, #1
B               loc_204ADC
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_204AAC
CMP             R6, R9
BNE             loc_204AF0
LDR             R0, [R7,#4]
ADD             R0, R0, R8
STR             R0, [R7,#4]
MOV             R0, #0
POP             {R4-R10,PC}
