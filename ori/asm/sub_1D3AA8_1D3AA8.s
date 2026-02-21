PUSH            {R4-R10,LR}
MOV             R6, #0
MOV             R7, R0
LDR             R0, =0x10645C
ADD             R0, R0, R7
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
LDRNE           R8, =0xC004
LDRNE           R5, [R4,#8]
MOVEQ           R5, #0
ORRNE           R9, R8, R8,ASR#15
BEQ             loc_1D3B50
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D3B3C
CMP             R4, #0
MOVEQ           R1, #0
SUBNE           R1, R4, #0x1AC
MOV             R0, R7
LDRB            R2, [R1,#0x495]
MOV             R1, R8
CMP             R2, #0
MOVNE           R1, R9
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1D3B5C
MOVS            R4, R5
MOVEQ           R5, #0
LDRNE           R5, [R4,#8]
CMP             R4, R6
BNE             loc_1D3AE8
MOV             R0, R7
POP             {R4-R10,LR}
B               sub_1D2948
POP             {R4-R10,PC}
