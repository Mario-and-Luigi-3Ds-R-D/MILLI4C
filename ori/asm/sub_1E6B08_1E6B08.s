MOV             R1, R0
LDR             R0, [R0,#0xAA8]
CMP             R0, #0
BEQ             loc_1E6B24
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BX              R1
MOV             R0, R1
NOP
