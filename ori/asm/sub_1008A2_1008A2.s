CMP             R0, #0
BEQ             loc_1008B0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_1008B0
MOVS            R0, #0
BX              LR
MOVS            R0, #1
BX              LR
