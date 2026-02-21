LDR             R2, [R0]
ADDS            R1, R2, R1
LDRB            R3, [R2]
STR             R1, [R0]
MOVS            R0, R3
BX              LR
