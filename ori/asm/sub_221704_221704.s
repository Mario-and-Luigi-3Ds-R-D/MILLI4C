LDR             R0, [R0,#4]
LDR             R1, [R0,#0xB10]
ORR             R1, R1, #8
STR             R1, [R0,#0xB10]
BX              LR
