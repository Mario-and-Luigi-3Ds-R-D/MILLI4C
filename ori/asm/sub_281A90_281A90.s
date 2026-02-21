LDR             R0, [R0,#0x20]
CMP             R0, #0
BEQ             locret_281AB8
MOV             R1, #9
STRB            R1, [R0,#4]
LDR             R1, [R0]
VLDR            S0, =0.0
LDR             R1, [R1,#0x48]
VSTR            S0, [R0,#0x3A4]
STR             R1, [R0,#0x3A8]
BX              LR
