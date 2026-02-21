LDR             R0, [R0,#0xAC]
NOP
LDR             R0, [R0,#0xA0]
CMP             R0, #0
BEQ             locret_1E0234
B               sub_2FD1BC
BX              LR
