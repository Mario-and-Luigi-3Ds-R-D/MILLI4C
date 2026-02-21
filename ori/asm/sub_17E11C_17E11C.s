LDR             R1, [R0,#4]
LDR             R0, [R3,#8]
ADD             R1, R1, #0x15000
LDR             R1, [R1,#0x20]
STRB            R0, [R1,#8]
MOV             R0, #0
BX              LR
