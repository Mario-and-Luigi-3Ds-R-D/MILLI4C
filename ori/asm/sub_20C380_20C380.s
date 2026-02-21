LDR             R1, =off_6CE970
PUSH            {R4-R6,LR}
MOV             R6, #0
LDR             R0, =0x10645C
LDR             R1, [R1]
ADD             R0, R0, R1
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_20C3F4
CMP             R4, #0
MOVEQ           R5, #0
SUBNE           R5, R4, #0x1AC
LDR             R0, [R5]
LDR             R1, [R0,#0x28]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_20C3FC
CMP             R5, #0
BEQ             loc_20C3F4
MOV             R0, R5
BL              sub_5EBE00
CMP             R0, #0
MOVNE           R0, R5
BLNE            sub_4E4BCC
MOV             R0, #0
POP             {R4-R6,PC}
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_20C3B4
B               loc_20C3F4
