LDRB            R0, [R0,#0x40C]
CMP             R0, #3
MOVEQ           R0, #1
MOVNE           R0, #0
BX              LR
