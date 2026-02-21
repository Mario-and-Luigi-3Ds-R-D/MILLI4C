LDR             R1, [R0,#0x14]
LDR             R2, [R1,#0xC]
STR             R2, [R0,#0x18]
LDR             R1, [R1,#0x1C]
STR             R1, [R0,#0x1C]
LDR             R1, [R0,#0x4C]
TST             R1, #4
BEQ             locret_2AA330
B               sub_2A9798
BX              LR
