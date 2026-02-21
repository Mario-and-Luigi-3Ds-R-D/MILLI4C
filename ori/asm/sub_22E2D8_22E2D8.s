LDRB            R3, [R2]
TST             R3, #1
BEQ             locret_22E30C
BIC             R3, R3, #1
CMP             R1, #0
STRB            R3, [R2]
BEQ             locret_22E30C
LDR             R1, [R2,#0xC]
STR             R1, [R2,#0x10]
LDR             R1, [R0]
LDR             R3, [R1,#0x150]
ADD             R1, R0, #0x108
BX              R3
BX              LR
