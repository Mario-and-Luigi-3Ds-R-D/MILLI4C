LDRB            R0, [R1]
BIC             R0, R0, #0x10
STRB            R0, [R1]
BX              LR
