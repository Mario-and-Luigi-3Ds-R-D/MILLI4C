PUSH            {R4,LR}
LDR             R1, [R0,#0xC]
MOV             R4, R0
LDR             R0, =off_6C0108
CMP             R1, #0
STR             R0, [R4]
BLNE            sub_128434
LDR             R0, [R4,#0x10]
CMP             R0, #0
BLNE            sub_128434
LDR             R1, [R4,#0x10]!
CMP             R1, #0
MOVNE           R0, #0
BEQ             loc_132DA8
MOV             R2, R1
LDR             R1, [R1,#4]
STR             R0, [R2,#4]
STR             R0, [R2]
CMP             R1, #0
BNE             loc_132D8C
STR             R0, [R4]
SUB             R0, R4, #0x10
POP             {R4,PC}
