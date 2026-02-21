LDR             R1, =0x10645C
PUSH            {R4-R8,LR}
MOV             R5, #0
ADD             R0, R0, R1
MOV             R6, #0
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
MOVNE           R7, #1
BEQ             loc_1D1CF4
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D1CE8
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDRB            R0, [R0,#0x495]
ORR             R0, R5, R7,LSL R0
AND             R5, R0, #0xFF
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_1D1CB4
MOV             R0, R5
POP             {R4-R8,PC}
