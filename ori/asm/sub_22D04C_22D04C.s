LDRB            R2, [R1]
TST             R2, #7
BEQ             locret_22D0F8
TST             R2, #8
BNE             locret_22D0F8
TST             R2, #1
BEQ             loc_22D078
VLDR            S1, [R1,#8]
VLDR            S0, [R0,#0xF0]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xF0]
LDRB            R2, [R1]
TST             R2, #2
BEQ             loc_22D094
VLDR            S1, [R1,#0xC]
VLDR            S0, [R0,#0xF4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xF4]
LDRB            R2, [R1]
TST             R2, #4
BEQ             loc_22D0B0
VLDR            S1, [R1,#0x10]
VLDR            S0, [R0,#0xF8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xF8]
VLDR            S0, [R1,#8]
VLDR            S1, [R1,#0x2C]
VABS.F32        S0, S0
VSUB.F32        S0, S1, S0
VSTR            S0, [R1,#0x2C]
VLDR            S0, [R1,#0xC]
VLDR            S1, [R1,#0x30]
VABS.F32        S0, S0
VSUB.F32        S0, S1, S0
VSTR            S0, [R1,#0x30]
VLDR            S0, [R1,#0x10]
VLDR            S1, [R1,#0x34]
LDR             R0, [R1,#0x38]
VABS.F32        S0, S0
ADD             R0, R0, #1
VSUB.F32        S0, S1, S0
VSTR            S0, [R1,#0x34]
STR             R0, [R1,#0x38]
BX              LR
