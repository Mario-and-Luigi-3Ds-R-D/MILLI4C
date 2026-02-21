LDR             R1, =off_6CDF98
LDR             R0, [R0,#4]
LDR             R1, [R1]
LDR             R1, [R1,#0x124]
VLDR            S0, [R1,#0x280]
VCVT.F32.U32    S1, S0
VLDR            S0, =0.0
B               sub_5A14A4
