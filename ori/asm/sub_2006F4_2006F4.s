LDR             R1, [R0,#0x120]
BIC             R1, R1, #0x600
STR             R1, [R0,#0x120]
BX              LR
