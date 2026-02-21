LDR             R1, =0x10646C
PUSH            {R4-R6,LR}
MOV             R5, #0
ADD             R0, R0, R1
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             locret_1D079C
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D0790
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5ED140
CMP             R0, #0
NOP
BEQ             loc_1D0780
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDRB            R0, [R0,#0x21D]
CMP             R0, #0
BEQ             loc_1D0790
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_4FEAB8
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1D0730
POP             {R4-R6,PC}
