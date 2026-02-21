LDR             R2, [R0,#4]
MOV             R3, #0
CMP             R2, #0
BLE             loc_140090
VCVT.S32.F32    S0, S0
MOV             R3, #1
VMOV            R1, S0
CMP             R1, #1
MOVLT           R1, #1
CMP             R2, R1
MOVLT           R1, R2
SUBS            R2, R2, R1
STR             R2, [R0,#4]
LDREQ           R1, [R0,#0xC]
STREQ           R1, [R0,#8]
BEQ             loc_140090
VMOV            S0, R1
VLDR            S1, [R0,#8]
VLDR            S2, [R0,#0x10]
VCVT.F32.S32    S0, S0
VMLA.F32        S1, S2, S0
VSTR            S1, [R0,#8]
MOV             R0, R3
BX              LR
