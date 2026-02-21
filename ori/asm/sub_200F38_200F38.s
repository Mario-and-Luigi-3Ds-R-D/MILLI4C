VLDR            S0, [R0,#0x3C]
VLDR            S1, =3.1416
LDR             R0, [R0,#4]
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0xF4]
BX              LR
