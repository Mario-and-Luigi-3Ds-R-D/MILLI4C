MOV             R1, #0
MOV             R2, #0xFF
STR             R1, [R0]
STRB            R2, [R0,#4]
STRB            R2, [R0,#5]
STRB            R1, [R0,#6]
STRB            R2, [R0,#7]
STRB            R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R1, [R0,#0x10]
BX              LR
