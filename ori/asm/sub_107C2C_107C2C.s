MOV             R2, #0x28 ; '('
MOV             R3, #0x24 ; '$'
STRH            R2, [R0]
STRH            R3, [R0,#2]
MOV             R1, #0x91
STRH            R2, [R0,#4]
STRH            R1, [R0,#6]
STRH            R1, [R0,#8]
STRH            R1, [R0,#0xA]
MOV             R1, #0
STRB            R1, [R0,#0xC]
MOV             R1, #0x8D
VLDR            S0, =0.0
STRH            R1, [R0,#0xE]
VSTR            S0, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
VLDR            S1, =1.5
VLDR            S2, =141.0
VSTR            S0, [R0,#0x20]
ADD             R1, R0, #0x10
VSTM            R1, {S1-S2}
BX              LR
