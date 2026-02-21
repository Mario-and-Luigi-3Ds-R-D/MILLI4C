LDRB            R1, [R0]
CMP             R1, #0
CMPNE           R1, #7
CMPNE           R1, #8
MOVEQ           R1, #4
STRBEQ          R1, [R0]
BX              LR
