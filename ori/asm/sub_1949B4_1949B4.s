LDR             R3, [R0]
VLDR            S0, =2.0
LDR             R12, [R3,#0x3C]
MOV             R3, #0
BX              R12
