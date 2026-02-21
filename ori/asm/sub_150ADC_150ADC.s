LDRB            R0, [R0,#0x20]
CMP             R0, #0
MOVNE           R0, #1
BX              LR
