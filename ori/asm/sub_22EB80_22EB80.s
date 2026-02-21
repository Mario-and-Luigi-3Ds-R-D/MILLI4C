VLDM            R1, {S2-S4}
ADD             R0, R2, #0x10
VMUL.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VMLA.F32        S1, S4, S4
VSQRT.F32       S3, S1
VDIV.F32        S1, S3, S0
VMOV            R2, S1
CMP             R2, #0x3F800000
BLE             loc_22EBCC
VDIV.F32        S0, S2, S1
VSTR            S0, [R0]
VLDR            S0, [R1,#4]
VDIV.F32        S2, S0, S1
VSTR            S2, [R0,#4]
VLDR            S0, [R1,#8]
VDIV.F32        S2, S0, S1
VSTR            S2, [R0,#8]
BX              LR
LDR             R3, [R1,#4]
VMOV            R1, S4
VMOV            R2, S2
STR             R1, [R0,#8]
STRD            R2, R3, [R0]
BX              LR
