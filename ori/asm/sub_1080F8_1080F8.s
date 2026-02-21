LDR             R3, =off_6D4B90
STR             R1, [R0,#0xC]
CMP             R0, #0
ADDNE           R1, R0, #4
LDR             R2, [R3]
MOVEQ           R1, #0
CMP             R2, #0
BEQ             loc_108138
STR             R2, [R1,#4]
LDR             R0, [R2]
STR             R1, [R0,#4]
LDR             R0, [R2]
STR             R0, [R1]
STR             R1, [R2]
MOV             R0, #0
BX              LR
CMP             R0, #0
ADDNE           R1, R0, #4
MOVEQ           R1, #0
STR             R1, [R0,#8]
STR             R1, [R0,#4]
ADDNE           R0, R0, #4
MOVEQ           R0, #0
STR             R0, [R3]
B               loc_108130
