PUSH            {R4-R6,LR}
MOV             R6, R0
ADD             R0, R0, #0xC
MOV             R4, R1
MOV             R5, R0
BL              sub_13273C
LDR             R1, [R4]
MOV             R0, #0
CMP             R1, R4
STREQ           R0, [R6,#8]
BEQ             loc_128418
LDR             R1, [R6,#8]
MOV             R2, R4
CMP             R1, R4
LDREQ           R1, [R1,#4]
STREQ           R1, [R6,#8]
LDR             R1, [R4,#4]
LDR             R2, [R2]
STR             R2, [R1]
LDM             R4, {R1,R2}
STR             R2, [R1,#4]
STR             R0, [R4,#4]
STR             R0, [R4]
STR             R0, [R4,#8]
STR             R0, [R4,#0xC]
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1327BC
