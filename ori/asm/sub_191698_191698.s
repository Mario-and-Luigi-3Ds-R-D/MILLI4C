VMOV.F32        S6, S0
LDR             R12, [R0]
VMOV.F32        S5, S4
VMOV.F32        S4, S3
VMOV.F32        S3, S2
LDR             R12, [R12,#0x254]
VMOV.F32        S2, S1
VMOV.F32        S1, S6
VLDR            S0, [R0,#0xA8]
BX              R12
