PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_528B1C
MOV             R0, #0
STR             R0, [R4,#0x10]
POP             {R4,PC}
