LDR             R1, [R0,#0x10]
ADDS            R2, R1, #2
STR             R2, [R0,#0x10]
LDRH            R0, [R1]
BX              LR
