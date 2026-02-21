MOV             R3, R0
LDR             R0, [R0,#8]
MOV             R2, R1
LDR             R1, [R0]
LDR             R12, [R1,#0x18]
MOV             R1, R3
BX              R12
