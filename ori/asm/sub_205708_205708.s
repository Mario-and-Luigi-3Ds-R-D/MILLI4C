PUSH            {R4-R8,LR}
LDR             R4, =off_6CE970
LDR             R2, [R4]
ADD             R0, R2, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R3, [R0,#0x2A]
LDRSB           R1, [R0,#0x28]
CMP             R3, #0
BEQ             loc_205750
CMP             R1, #0
BEQ             loc_205804
BL              sub_14758C
MOV             R1, R0
LDR             R0, =0x1064D8
LDR             R2, [R4]
ADD             R0, R0, R2
BL              sub_1DFCE0
B               loc_205804
CMP             R1, #0
BEQ             loc_205798
LDRB            R0, [R0,#0x2B]
CMP             R0, #0
BEQ             loc_205804
LDR             R0, =0x10645C
MOV             R7, #0
MOV             R8, R7
ADD             R0, R0, R2
MOV             R6, #0
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BNE             loc_2057A8
B               loc_205804
LDRB            R0, [R0,#0x29]
CMP             R0, #0
BNE             loc_205804
B               loc_205764
CMP             R4, #0
MOVEQ           R5, #0
SUBNE           R5, R4, #0x1AC
MOV             R0, R5
BL              sub_5EBEDC
CMP             R0, #0
MOVNE           R7, R5
BNE             loc_2057D8
MOV             R0, R5
BL              sub_5EC344
CMP             R0, #0
MOVEQ           R8, R5
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_2057A8
CMP             R7, #0
BEQ             loc_205804
CMP             R8, #0
BEQ             loc_205804
MOV             R0, R7
BL              sub_146DC4
CMP             R0, #0
STRNE           R0, [R7,#0x140]
MOV             R0, #0
POP             {R4-R8,PC}
