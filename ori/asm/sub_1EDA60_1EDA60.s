LDR             R3, [R2]
TST             R3, #3
BEQ             locret_1EDA9C
BIC             R3, R3, #3
CMP             R1, #0
STR             R3, [R2]
BEQ             locret_1EDA9C
VLDR            S0, [R2,#0x20]
VCVT.S32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [R0,#0xE4]
VLDR            S0, [R2,#0x24]
VCVT.S32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [R0,#0xE6]
BX              LR
