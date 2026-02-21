MOV             R3, R0
PUSH            {R4,LR}
LDR             R2, [R3,#4]
MOV             R0, R1
CMP             R2, R0
BNE             loc_123D64
LDR             R0, [R3]
LDR             R1, [R0,#0xC]
MOV             R0, R3
BLX             R1
MOV             R0, #1
POP             {R4,PC}
CMP             R2, #0
BEQ             loc_123DA4
LDR             R1, [R2,#4]
CMP             R1, R0
BNE             loc_123D9C
LDR             R1, [R0,#4]
CMP             R1, #0
STR             R1, [R2,#4]
STREQ           R2, [R3,#8]
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #1
POP             {R4,PC}
MOVS            R2, R1
BNE             loc_123D6C
MOV             R0, #0
POP             {R4,PC}
