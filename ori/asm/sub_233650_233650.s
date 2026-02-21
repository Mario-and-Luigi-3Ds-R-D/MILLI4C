LDR             R2, =off_6B38AC
LDR             R1, =dword_6D1598
VLDR            S0, =0.0
STR             R2, [R0]
VLDR            S1, =1.0
LDR             R2, [R1]
MOV             R3, #0xFFFFFFFF
STR             R2, [R0,#4]
LDR             R1, [R1,#(dword_6D159C - 0x6D1598)]
MOV             R2, #0xFFFFFFFF
REV             R3, R3
STR             R1, [R0,#8]!
ADD             R0, R0, #0x10
ADD             R1, R0, #8
VSTR            S0, [R0]
VSTR            S0, [R0,#4]
REV             R2, R2
SUB             R0, R0, #0xC
VSTM            R1, {S0-S1}
ADD             R1, R0, #0x2C ; ','
STR             R2, [R0,#0x1C]
MOV             R2, #0xFFFFFFFF
REV             R2, R2
STR             R2, [R0,#0x20]
VSTR            S0, [R0,#0x24]
VSTR            S0, [R0,#0x28]
VSTM            R1, {S0-S1}
ADD             R1, R0, #0x40 ; '@'
VSTR            S0, [R0,#0x38]
VSTR            S0, [R0,#0x3C]
SUB             R0, R0, #0xC
VSTM            R1, {S0-S1}
ADD             R2, R0, #0x6C ; 'l'
VSTR            S0, [R0,#0x64]
VSTR            S0, [R0,#0x68]
ADD             R1, R0, #0x58 ; 'X'
VSTM            R2, {S0-S1}
ADD             R2, R0, #0x84
STR             R3, [R0,#0x74]
MOV             R3, #0xFFFFFFFF
ADD             R1, R1, #0x38 ; '8'
REV             R3, R3
STR             R3, [R0,#0x78]
VSTR            S0, [R0,#0x7C]
VSTR            S0, [R0,#0x80]
VSTM            R2, {S0-S1}
VSTR            S0, [R1]
VSTR            S0, [R1,#4]
ADD             R1, R1, #8
VSTM            R1, {S0-S1}
LDRB            R1, [R0,#0xC]
BIC             R1, R1, #0xF
STRB            R1, [R0,#0xC]
LDRB            R1, [R0,#0x58]
BIC             R1, R1, #0xF
STRB            R1, [R0,#0x58]
BX              LR
