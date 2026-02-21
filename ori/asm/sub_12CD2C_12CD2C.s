LDR             R1, [R0,#8]
CMP             R1, #0
MOVEQ           R0, #0
BEQ             locret_12CD8C
LDR             R1, [R1,#0x10]
CMP             R1, #0xC8
BEQ             loc_12CD64
SUB             R1, R1, #0x12C
CMP             R1, #2
BHI             loc_12CD78
LDR             R0, [R0,#0xC]
CMP             R0, #0
BEQ             locret_12CD8C
B               loc_12CD88
LDR             R0, [R0,#4]
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_12CD8C
B               loc_12CD88
LDR             R0, [R0,#4]
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_12CD8C
MOV             R0, #1
BX              LR
