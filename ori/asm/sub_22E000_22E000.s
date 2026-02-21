ADD             R0, R0, #0x400
VLDR            S0, =0.0
LDR             R1, [R0,#0x80]
LDR             R2, [R0,#0x88]
LDR             R3, [R0,#0x90]
LDR             R12, [R0,#0x98]
VSTR            S0, [R0,#0x78]
STR             R1, [R0,#0x7C]!
STR             R2, [R0,#8]!
STR             R3, [R0,#8]!
STR             R12, [R0,#8]
BX              LR
