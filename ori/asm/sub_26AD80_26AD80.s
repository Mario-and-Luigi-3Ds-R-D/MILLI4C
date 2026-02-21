PUSH            {R3-R7,LR}
MOV             R7, R0
LDR             R6, [R0,#0x100]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_26ADD4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26ADC0
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CC87C
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26AD98
LDR             R0, [R7,#0x100]
STR             R0, [R7,#0x104]
POP             {R3-R7,PC}
