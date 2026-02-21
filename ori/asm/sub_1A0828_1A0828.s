LDR             R0, [R0,#0xB0]
NOP
MOV             R1, #1
STRB            R1, [R0,#0x2D]
BX              LR
