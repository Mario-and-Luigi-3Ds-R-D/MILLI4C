LDR             R1, [R0,#0x1B4]
VLDR            S0, =1.0
BIC             R1, R1, #0xC00
VSTR            S0, [R0,#0xD8]
ORR             R1, R1, #0x400
STR             R1, [R0,#0x1B4]
BX              LR
