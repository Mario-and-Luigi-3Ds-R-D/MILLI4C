LDR             R3, [R0]
LDR             R1, [R0,#0x7FC]
LDR             R3, [R3,#0x278]
LDRB            R2, [R1,#0x6C]
LDR             R1, [R0,#0x800]
BX              R3
