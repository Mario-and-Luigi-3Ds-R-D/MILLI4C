LDRB            R0, [R0,#0x400]
CMP             R0, #1
MOVNE           R0, #0
BX              LR
