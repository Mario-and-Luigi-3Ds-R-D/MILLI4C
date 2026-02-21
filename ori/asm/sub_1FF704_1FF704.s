PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0xDC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_1FF740
LDR             R0, [R4]
LDR             R1, [R0,#0x5C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
MOVNE           R0, #1
BNE             locret_1FF744
MOV             R0, #0
POP             {R4,PC}
