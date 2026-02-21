MOVS            R1, #0
B               loc_100098
ADDS            R1, R1, #1
ADDS            R0, R0, #2
LDRH            R2, [R0]
CMP             R2, #0
BNE             loc_100094
MOVS            R0, R1
BX              LR
