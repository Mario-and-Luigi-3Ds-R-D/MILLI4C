VLDR            S0, =0.0
VLDR            S1, =-100.0
VSTR            S0, [R0,#0x124]
VLDR            S2, =700.0
VSTR            S0, [R0,#0x128]
VSTR            S1, [R0,#0x12C]
VSTR            S2, [R0,#0x130]
ADD             R0, R0, #0x134
VSTM            R0, {S0-S2}
BX              LR
