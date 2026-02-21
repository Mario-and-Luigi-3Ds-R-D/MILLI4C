LDR             R1, [R0,#0x120]
VLDR            S0, =0.0
VSTR            S0, [R0,#0xBC]
VSTR            S0, [R0,#0xC8]
VSTR            S0, [R0,#0xC0]
VSTR            S0, [R0,#0xC4]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x120]
BX              LR
