PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R5, [R0,#0xC]
MOV             R6, R0
CMP             R5, R4
MOVEQ           R0, R1
BEQ             locret_10F158
CMP             R5, #0
BLNE            sub_119D18
CMP             R4, #0
MOVNE           R0, R6
STR             R4, [R6,#0xC]
BLNE            sub_126E14
MOV             R0, R5
POP             {R4-R6,PC}
