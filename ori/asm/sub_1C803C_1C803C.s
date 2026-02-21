LDR             R0, [R0,#0xAA8]
CMP             R0, #0
BEQ             locret_1C8054
LDR             R3, [R0]
LDR             R3, [R3,#0x10]
BX              R3
BX              LR
