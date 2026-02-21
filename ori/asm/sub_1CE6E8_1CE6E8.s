LDR             R0, [R0,#0x14]
CMP             R0, #0
BEQ             locret_1CE700
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BX              R1
BX              LR
