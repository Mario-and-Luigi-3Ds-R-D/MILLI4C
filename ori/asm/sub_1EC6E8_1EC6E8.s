LDR             R1, [R0,#0xC8]
BIC             R1, R1, #0x40 ; '@'
STR             R1, [R0,#0xC8]
BX              LR
