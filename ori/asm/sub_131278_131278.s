PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, =dword_6D2424
LDR             R1, [R0]
LDR             R2, =off_6D48F8
LDR             R0, [R6]
LDR             R4, [R2]
LDR             R0, [R0]
TST             R1, R0
BEQ             loc_1312B0
LDR             R1, [R4]
TST             R0, R1
MOVNE           R0, R5
BLNE            sub_130EE4
LDR             R0, [R6]
LDR             R1, [R5]
LDR             R0, [R0,#4]
TST             R1, R0
BEQ             loc_1312D4
LDR             R1, [R4]
TST             R0, R1
MOVNE           R0, R5
BLNE            sub_12CD90
LDR             R0, [R6]
LDR             R1, [R5]
LDR             R0, [R0,#8]
TST             R1, R0
BEQ             loc_1312F8
LDR             R1, [R4]
TST             R0, R1
MOVNE           R0, R5
BLNE            sub_13105C
LDR             R0, [R6]
LDR             R1, [R5]
LDR             R0, [R0,#0xC]
TST             R1, R0
BEQ             loc_13131C
LDR             R1, [R4]
TST             R0, R1
MOVNE           R0, R5
BLNE            sub_1381E8
LDR             R0, [R5]
LDR             R1, [R4]
BIC             R0, R1, R0
STR             R0, [R4]
POP             {R4-R6,PC}
