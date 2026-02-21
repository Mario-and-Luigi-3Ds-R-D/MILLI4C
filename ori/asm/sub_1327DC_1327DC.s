PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R7, R0
ADD             R0, R0, #0xC
MOV             R9, R2
MOV             R10, R3
MOV             R6, R0
BL              sub_13273C
LDR             R12, [R7,#8]
MOV             R3, #0
CMP             R12, #0
BEQ             loc_13285C
LDR             R4, [R12]
LDR             R1, [R7,#4]
CMP             R4, #0
ADDNE           R8, R9, R10
BEQ             loc_13290C
ADD             R0, R4, #8
LDM             R0, {R0,R2}
ADD             R2, R2, R0
SUB             R1, R1, R2
CMP             R8, R1
BHI             loc_132840
MOV             R3, R4
B               loc_13285C
CMP             R12, R4
SUB             R1, R0, R10
BEQ             loc_13285C
LDR             R4, [R4]
CMP             R4, #0
BNE             loc_132820
B               loc_13290C
CMP             R3, #0
BEQ             loc_13290C
LDRD            R0, R1, [R3,#8]
CMP             R12, #0
ADD             R0, R0, R1
ADD             R8, R0, R10
LDRNE           R0, [R12]
MOVEQ           R0, #0
MOV             R1, R3
CMP             R0, R3
LDRNE           R0, [R1,#4]
CMPNE           R0, #0
BEQ             loc_1328E8
CMP             R12, R0
BNE             loc_1328CC
MOV             R0, R5
CMP             R12, #0
STREQ           R0, [R0,#4]
STREQ           R0, [R0]
BEQ             loc_1328C4
STR             R12, [R5,#4]
LDR             R2, [R12]
STR             R5, [R2,#4]
LDR             R2, [R12]
STR             R2, [R5]
STR             R5, [R12]
STR             R0, [R7,#8]
B               loc_132978
STR             R0, [R5,#4]
LDR             R2, [R0]
STR             R5, [R2,#4]
LDR             R2, [R0]
STR             R2, [R5]
STR             R5, [R0]
B               loc_132978
CMP             R12, #0
BEQ             loc_13296C
STR             R12, [R5,#4]
LDR             R1, [R12]
STR             R5, [R1,#4]
LDR             R1, [R12]
STR             R1, [R5]
STR             R5, [R12]
B               loc_132978
LDR             R8, [R7]
CMP             R12, #0
BEQ             loc_13294C
LDR             R0, [R12,#8]
ADD             R1, R8, R9
ADD             R1, R1, R10
CMP             R1, R0
BHI             loc_13295C
STR             R12, [R5,#4]
LDR             R2, [R12]
STR             R5, [R2,#4]
LDR             R2, [R12]
STR             R2, [R5]
STR             R5, [R12]
STR             R5, [R7,#8]
B               loc_132978
LDR             R1, [R7,#4]
ADD             R0, R8, R9
CMP             R1, R0
BCS             loc_13296C
MOV             R0, R6
BL              sub_1327BC
MOV             R0, #0
POP             {R4-R10,PC}
STR             R5, [R5,#4]
STR             R5, [R5]
STR             R5, [R7,#8]
STRD            R8, R9, [R5,#8]
MOV             R0, R6
BL              sub_1327BC
MOV             R0, R8
POP             {R4-R10,PC}
