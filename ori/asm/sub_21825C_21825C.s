MOV             R12, #1
STR             R2, [R0,#0x20]
STRB            R12, [R0,#0x13]
STR             R3, [R0,#0x24]
STRH            R1, [R0,#0x10]
BX              LR
