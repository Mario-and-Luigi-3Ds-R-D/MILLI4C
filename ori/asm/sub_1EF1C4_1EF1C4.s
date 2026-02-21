LDR             R1, [R0,#0x14C]
BIC             R1, R1, #0x2000
STR             R1, [R0,#0x14C]
BX              LR
