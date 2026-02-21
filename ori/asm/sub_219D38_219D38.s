VLDR            S0, =0.0
VLDR            S1, =-0.4
VLDR            S2, =0.005
VLDR            S3, =100.0
ADD             R3, R0, #8
VSTM            R0, {S0-S1}
MOV             R2, #4
VLDR            S1, =0.9
MOV             R1, #0
VSTM            R3, {S0-S3}
VSTR            S0, [R0,#0x18]
STRB            R2, [R0,#0x1C]
STRB            R1, [R0,#0x1D]
BX              LR
