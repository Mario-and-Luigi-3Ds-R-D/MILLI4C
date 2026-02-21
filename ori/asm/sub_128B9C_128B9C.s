MOV             R2, #0x3C ; '<'
MOV             R3, #0xFA0
MOV             R12, #0x64 ; 'd'
VLDR            S1, =0.5
STM             R0, {R2,R3,R12}
MOV             R1, #0
VLDR            S0, =0.4
VLDR            S2, =0.6
VSTR            S1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VSTR            S2, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
STRB            R1, [R0,#0x20]
LDR             R1, =unk_6D4B7C
STR             R1, [R0,#0x14]
BX              LR
