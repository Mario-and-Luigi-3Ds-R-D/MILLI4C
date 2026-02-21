LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BX              R1
