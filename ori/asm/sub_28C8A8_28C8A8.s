VLDR            S1, =1.0
VLDR            S0, =0.0
VSTR            S1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VSTR            S0, [R0,#0x14]
ADD             R1, R0, #0x18
VSTM            R1, {S0-S1}
VSTR            S0, [R0,#0x20]
VSTR            S0, [R0,#0x24]
ADD             R0, R0, #0x28 ; '('
VSTM            R0, {S0-S1}
BX              LR
