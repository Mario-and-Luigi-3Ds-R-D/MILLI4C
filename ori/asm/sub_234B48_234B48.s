VLDR            S1, =1.0
MOV             R1, #0
STRB            R1, [R0,#0x34]
VSTR            S1, [R0,#4]
VLDR            S0, =0.0
VSTR            S1, [R0,#8]
VSTR            S1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VSTR            S0, [R0,#0x14]
VSTR            S0, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
VSTR            S0, [R0,#0x20]
VSTR            S0, [R0,#0x24]
VSTR            S0, [R0,#0x28]
VSTR            S0, [R0,#0x2C]
VSTR            S0, [R0,#0x30]
BX              LR
