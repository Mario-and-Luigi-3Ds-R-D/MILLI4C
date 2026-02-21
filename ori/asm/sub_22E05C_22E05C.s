ADD             R1, R0, #0x400
MOV             R0, #3
LDRH            R1, [R1,#0xB6]
BICS            R0, R0, R1
MOVEQ           R0, #1
MOVNE           R0, #0
BX              LR
