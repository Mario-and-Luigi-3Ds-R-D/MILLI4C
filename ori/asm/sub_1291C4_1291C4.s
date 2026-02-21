MOV             R1, #0
STR             R1, [R0]
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0x14]
STRB            R1, [R0,#0x11]
BX              LR
