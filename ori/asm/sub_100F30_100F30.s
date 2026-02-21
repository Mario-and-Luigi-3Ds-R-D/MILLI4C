LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             loc_100F50
LDR             R3, [R0,#0xC]
LDR             R2, [R0]
CMP             R3, #0
BNE             loc_100F50
LDR             R3, [R0,#8]
CMP             R3, R2
BEQ             loc_100F50
SUBS            R2, R2, #1
ADDS            R1, R1, #1
STR             R2, [R0]
STR             R1, [R0,#4]
MOVS            R0, #0
BX              LR
MOVS            R0, #0
MVNS            R0, R0
BX              LR
