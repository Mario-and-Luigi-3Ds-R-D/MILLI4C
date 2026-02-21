LDR             R3, [R0,#0x120]
STRH            R1, [R0,#0xB8]
STRH            R2, [R0,#0xBA]
BIC             R1, R3, #0x600
ORR             R1, R1, #0x200
STR             R1, [R0,#0x120]
BX              LR
