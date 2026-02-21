MOV             R1, #0
NOP
PUSH            {R4-R6,LR}
MOVS            R5, R1
LDREQ           R5, =off_6B192C
MOV             R4, R0
LDR             R0, [R5]
STR             R0, [R4]
LDR             R0, [R0,#-0x30]
LDR             R1, [R5,#0x2C]
STR             R1, [R4,R0]
LDR             R1, [R5,#0x30]
MOV             R0, R4
STR             R1, [R4,#4]
BL              sub_11C7BC
LDR             R0, [R4,#8]
ADD             R5, R4, #8
BICS            R1, R0, #1
BEQ             loc_1E00EC
TST             R0, #1
BLNE            sub_128434
LDR             R0, [R5]
BIC             R0, R0, #1
BL              sub_10D89C
MOV             R0, #0
STR             R0, [R5]
MOV             R0, R4
POP             {R4-R6,PC}
