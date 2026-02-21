MOV             R1, #1
MOV             R2, #0
STRB            R1, [R0,#0xE]
STRB            R2, [R0,#0xC]
STRB            R1, [R0,#0xD]
BX              LR
