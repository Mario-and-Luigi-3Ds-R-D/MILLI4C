PUSH            {R4,LR}
MOV             R4, R0
BL              sub_11C7BC
LDR             R0, [R4,#4]
BICS            R1, R0, #1
BEQ             locret_10D370
TST             R0, #1
BLNE            sub_128434
LDR             R0, [R4,#4]
BIC             R0, R0, #1
BL              sub_10D89C
MOV             R0, #0
STR             R0, [R4,#4]
POP             {R4,PC}
