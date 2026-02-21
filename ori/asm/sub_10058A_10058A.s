CMP             R1, #0x80
BHI             loc_100598
CMP             R0, #0
BEQ             loc_100598
LDRB            R1, [R0]
CMP             R1, #0
BEQ             loc_10059C
MOVS            R0, #0
BX              LR
MOVS            R1, #1
STRB            R1, [R0]
ADDS            R0, #8
BX              LR
