LDR             R2, [R0,#4]
MOV             R1, #0xC
STRB            R1, [R2,#0xAAC]
LDR             R2, [R0,#4]
LDR             R3, [R2,#0x624]
STR             R3, [R0,#0x44]
LDR             R3, [R2,#0x628]
STR             R3, [R0,#0x48]
LDR             R3, [R2,#0x634]
STR             R3, [R0,#0x4C]
LDR             R3, [R2,#0x10C]
STR             R3, [R0,#0x50]
LDR             R3, [R2,#0x630]
STR             R3, [R0,#0x54]
LDR             R1, [R2,#0x62C]
STR             R1, [R0,#0x58]
LDR             R1, [R2,#0x5E0]
BIC             R1, R1, #7
STR             R1, [R2,#0x5E0]
LDR             R2, [R0,#4]
LDR             R1, [R2,#0x648]
BIC             R1, R1, #0x10
STR             R1, [R2,#0x648]
LDR             R3, [R0,#4]
BIC             R2, R1, #8
BIC             R1, R2, #1
STR             R2, [R3,#0x648]
LDR             R12, [R0,#4]
BIC             R2, R1, #0x20 ; ' '
BIC             R3, R2, #4
STR             R1, [R12,#0x648]
LDR             R1, [R0,#4]
BIC             R12, R3, #2
STR             R2, [R1,#0x648]
LDR             R1, [R0,#4]
STR             R3, [R1,#0x648]
LDR             R0, [R0,#4]
STR             R12, [R0,#0x648]
BX              LR
