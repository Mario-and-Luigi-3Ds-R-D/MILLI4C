CMP             R0, #0
BEQ             loc_1005B0
MOVS            R2, R0
ADDS            R2, #8
CMP             R1, R2
BEQ             loc_1005B4
MOVS            R0, #0
BX              LR
MOVS            R1, #0
STRB            R1, [R0]
BX              LR
