LDR             R3, [R0]
MOV             R2, #0x8D0
LDR             R1, [R0,#0x8C4]
LDRH            R2, [R2,R0]
LDR             R3, [R3,#0x278]
BX              R3
