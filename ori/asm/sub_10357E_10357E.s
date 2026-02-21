LDR             R1, [R1]
STR             R1, [R0]
LDR             R2, [R1,#0x1C]
ADDS            R2, R2, #1
STR             R2, [R1,#0x1C]
BX              LR
