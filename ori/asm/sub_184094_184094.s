LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xB0]
LDRB            R1, [R0,#0x374]
BIC             R1, R1, #0x10
STRB            R1, [R0,#0x374]
MOV             R0, #0
BX              LR
