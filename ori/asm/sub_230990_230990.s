LDRB            R2, [R1]
TST             R2, #7
BEQ             locret_230A00
TST             R2, #8
BNE             locret_230A00
TST             R2, #1
BEQ             loc_2309BC
VLDR            S1, [R1,#8]
VLDR            S0, [R0,#0xE4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xE4]
LDRB            R2, [R1]
TST             R2, #2
BEQ             loc_2309D8
VLDR            S1, [R1,#0xC]
VLDR            S0, [R0,#0xE8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xE8]
LDRB            R2, [R1]
TST             R2, #4
BEQ             loc_2309F4
VLDR            S1, [R1,#0x10]
VLDR            S0, [R0,#0xEC]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0xEC]
LDR             R0, [R1,#0x2C]
ADD             R0, R0, #1
STR             R0, [R1,#0x2C]
BX              LR
