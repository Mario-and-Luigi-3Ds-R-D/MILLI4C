LSLS            R3, R1, #0x18
MOVS            R2, #0
LSRS            R3, R3, #0x18
LDRB            R1, [R0]
ADDS            R0, R0, #1
CMP             R1, R3
BNE             loc_100B10
SUBS            R2, R0, #1
CMP             R1, #0
BNE             loc_100B06
MOVS            R0, R2
BX              LR
