PUSH            {R3-R9,LR}
MOV             R5, #0
MOV             R7, R0
LDR             R0, =0x10645C
ADD             R0, R0, R7
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
MOVNE           R8, R5
BEQ             loc_1D0A98
MOVS            R0, R4
SUBNE           R0, R4, #0x1AC
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
BEQ             loc_1D0A8C
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDRB            R0, [R0,#0x17F]
CMP             R0, #0
BNE             loc_1D0A8C
MOVS            R0, R4
SUBNE           R0, R4, #0x1AC
LDR             R6, [R0,#0x18]
ADD             R0, R6, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_1D0AB0
MOV             R0, R6
BL              sub_14D83C
CMP             R4, #0
MOV             R2, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
MOV             R3, #0x100
MOV             R1, R2
STR             R8, [SP,#0x20+var_20]
BL              sub_4E3CA0
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1D0A10
MOV             R0, R7
BL              sub_1D0704
LDR             R1, =unk_653FC0
ADD             R2, R7, #0x1A0000
LDRD            R0, R1, [R1,#(off_654054 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R3-R9,PC}
