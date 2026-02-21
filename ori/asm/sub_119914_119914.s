MOV             R1, #0
STR             R1, [R0]
STR             R1, [R0,#4]
STR             R1, [R0,#8]
MOV             R3, #0xFF
STRB            R1, [R0,#0xC]
STRB            R3, [R0,#0xD]
STRB            R1, [R0,#0xE]
STRB            R1, [R0,#0xF]
BX              LR
