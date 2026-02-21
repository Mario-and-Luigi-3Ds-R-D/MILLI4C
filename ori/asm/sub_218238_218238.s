MOV             R12, #0
ORR             R3, R3, #0x10000
STRB            R12, [R0,#0x13]
STRD            R2, R3, [R0,#0x18]
STRH            R1, [R0,#0x10]
BX              LR
