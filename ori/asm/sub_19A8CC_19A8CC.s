LDR             R1, [R0,#0x1B4]
BIC             R1, R1, #0xC00
ORR             R1, R1, #0x800
STR             R1, [R0,#0x1B4]
BX              LR
