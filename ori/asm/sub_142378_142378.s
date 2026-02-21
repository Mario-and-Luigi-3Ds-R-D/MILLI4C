VLDR            S0, [R1]
VLDR            S1, [R1,#0x10]
VLDR            S2, [R1,#0x20]
VLDR            S3, =0.0
VLDR            S4, [R1,#4]
VLDR            S5, [R1,#0x14]
VLDR            S6, [R1,#0x24]
VLDR            S7, =0.0
VLDR            S8, [R1,#8]
VLDR            S9, [R1,#0x18]
VLDR            S10, [R1,#0x28]
VLDR            S11, =0.0
VSTM            R0, {S0-S11}
BX              LR
