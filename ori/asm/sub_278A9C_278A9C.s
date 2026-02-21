LDR             R1, [R0,#4]
MOV             R3, #0
LDR             R1, [R1,#0x124]
LDR             R1, [R1,#0x654]
STR             R1, [R0,#0x41C]
STRB            R3, [R0,#8]
BX              LR
