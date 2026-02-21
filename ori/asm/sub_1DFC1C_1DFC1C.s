PUSH            {R4,LR}
LDR             R1, [R0,#0xC]
MOV             R4, R0
LDR             R0, =off_6B17B8
CMP             R1, #0
STR             R0, [R4]
MOVNE           R0, R4
BLNE            sub_528B1C
MOV             R0, R4
POP             {R4,PC}
