LDR             R1, [R0,#0x14]
LDR             R2, [R1,#0xC]
STR             R2, [R0,#0x18]
LDR             R1, [R1,#0x1C]
STR             R1, [R0,#0x1C]
LDR             R1, [R0,#0x84]
TST             R1, #1
BEQ             locret_2A96DC
B               sub_2A8950
BX              LR
