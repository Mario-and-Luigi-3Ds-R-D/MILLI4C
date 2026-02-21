MOV             R2, #0xE
MOV             R1, #0
STRB            R2, [R0]
STRB            R1, [R0,#0x42]
BX              LR
