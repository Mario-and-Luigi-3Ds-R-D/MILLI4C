VSTR            S0, [R0,#0x64]
LDR             R0, [R0,#0x68]
NOP
LDRH            R1, [R0,#0x6C]
VSTR            S0, [R0,#0x68]
ORR             R1, R1, #1
STRH            R1, [R0,#0x6C]
BX              LR
