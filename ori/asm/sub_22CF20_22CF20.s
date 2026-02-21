LDR             R1, [R0,#0x84]
MOV             R2, #0
BIC             R1, R1, #2
STR             R1, [R0,#0x84]!
STR             R2, [R0,#0xC]
BX              LR
