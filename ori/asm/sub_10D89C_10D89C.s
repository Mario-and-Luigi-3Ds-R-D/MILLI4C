CMP             R0, #0
BEQ             locret_10D8B0
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BX              R1
BX              LR
