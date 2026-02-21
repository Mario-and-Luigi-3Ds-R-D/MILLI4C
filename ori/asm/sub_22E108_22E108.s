LDR             R1, [R0]
VLDR            S4, =8.0
VLDR            S3, =32.0
VLDR            S2, =16.0
LDR             R1, [R1,#0x4C]
VLDR            S1, =0.0
VLDR            S0, =-8.0
BX              R1
