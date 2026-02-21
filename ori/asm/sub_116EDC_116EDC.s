PUSH            {R4-R6,LR}
MOVS            R6, R1
LDREQ           R6, =off_6B1834
MOV             R4, R0
LDR             R1, [R6]
STR             R1, [R4]
LDR             R1, [R1,#-0x30]
LDR             R2, [R6,#0x14]
STR             R2, [R0,R1]
BL              sub_11C7BC
LDR             R1, =off_6B55AC
MOV             R5, R4
STR             R1, [R4,#0x1C]
LDR             R0, [R4,#4]!
BICS            R1, R0, #1
BEQ             loc_116F38
TST             R0, #1
BLNE            sub_128434
LDR             R0, [R4]
BIC             R0, R0, #1
BL              sub_10D89C
MOV             R0, #0
STR             R0, [R4]
MOV             R0, R5
POP             {R4-R6,PC}
