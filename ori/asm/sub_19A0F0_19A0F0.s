LDR             R0, [R0,#0x90]
CMP             R0, #0
BEQ             locret_19A108
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BX              R1
BX              LR
