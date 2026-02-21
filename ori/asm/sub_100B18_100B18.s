SUBS            R2, R0, #1
ADDS            R2, R2, #1
LDRB            R3, [R2]
CMP             R3, #0
BNE             loc_100B1A
LDRB            R3, [R1]
ADDS            R1, R1, #1
STRB            R3, [R2]
ADDS            R2, R2, #1
CMP             R3, #0
BNE             loc_100B22
BX              LR
