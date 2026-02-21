PUSH            {R4-R6,LR}
MOV             R6, R0
BL              sub_52CAA8
LDR             R0, =0x10645C
MOV             R5, #0
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_1D14D4
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EB414
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1D14B8
LDR             R0, =0x19DFE8
LDR             R0, [R6,R0]
CMP             R0, #0
BEQ             locret_1D14EC
POP             {R4-R6,LR}
B               sub_4DC87C
POP             {R4-R6,PC}
