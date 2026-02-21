LDR             R2, [R0,#4]
MOV             R1, #6
STRB            R1, [R2,#0xAAC]
LDRH            R1, [R0,#8]
ORR             R1, R1, #0x3C ; '<'
STRH            R1, [R0,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x64]
BX              R1
