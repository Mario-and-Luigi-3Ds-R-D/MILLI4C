STR             R2, [R0]
STR             R1, [R0,#4]
MOV             R2, #0
MOV             R1, #0xFE
STRB            R2, [R0,#0x4D]
STRB            R1, [R0,#0x4C]
BX              LR
