LDR             R2, [R1]
VLDR            S2, =0.0
TST             R2, #1
VLDRNE          S0, [R1,#0x10]
VMOVEQ.F32      S0, S2
TST             R2, #2
VLDRNE          S1, [R1,#0x14]
VMOVEQ.F32      S1, S2
TST             R2, #4
VLDRNE          S2, [R1,#0x18]
LDR             R1, [R1]
TST             R1, #0x80
BEQ             loc_22DE14
LDR             R1, [R0]
LDR             R1, [R1,#0x58]
BX              R1
VLDR            S3, [R0,#0x108]
VADD.F32        S0, S3, S0
VSTR            S0, [R0,#0x108]
VLDR            S0, [R0,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x10C]
VLDR            S0, [R0,#0x110]
VADD.F32        S0, S0, S2
VSTR            S0, [R0,#0x110]
BX              LR
