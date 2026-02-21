LDR             R2, [R0,#4]
MOV             R1, #8
VLDR            S0, =4.0
VLDR            S1, =6.0
STRB            R1, [R2,#0xAAC]
LDRH            R1, [R0,#8]
VLDR            S2, =10.0
ORR             R1, R1, #0x3C ; '<'
STRH            R1, [R0,#8]
VSTR            S0, [R0,#0x1AC]
ADD             R1, R0, #0x1B0
VSTM            R1, {S0-S2}
LDRH            R1, [R0,#0xA]
ORR             R1, R1, #2
STRH            R1, [R0,#0xA]
LDR             R1, [R0]
LDR             R1, [R1,#0x64]
BX              R1
