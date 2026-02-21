ADD             R1, R0, #0x5D0
VLDR            S2, =-0.5
VLDR            S1, =1.0
VLDR            S0, =0.0
VSTR            S2, [R1]
VSTR            S1, [R1,#4]
VSTR            S0, [R1,#8]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x1DC
VSTR            S2, [R1]
VSTR            S0, [R1,#4]
VSTR            S0, [R1,#8]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x1E8
VLDR            S2, =0.5
ADD             R0, R0, #0x400
VSTR            S2, [R1]
VSTR            S0, [R1,#4]
ADD             R0, R0, #0x1F4
VSTR            S0, [R1,#8]
VSTR            S2, [R0]
VSTR            S1, [R0,#4]
VSTR            S0, [R0,#8]
BX              LR
