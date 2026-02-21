VADD.F32        S2, S0, S2
VSUB.F32        S4, S1, S4
VSTR            S0, [R0,#0x150]
VSTR            S1, [R0,#0x15C]
VSTR            S3, [R0,#0x160]
VSTR            S2, [R0,#0x154]
VSTR            S4, [R0,#0x158]
BX              LR
