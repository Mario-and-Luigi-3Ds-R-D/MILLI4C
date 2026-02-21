MOV             R2, #0
STR             R1, [R0,#4]
STR             R2, [R0]
LDRD            R2, R3, [R1,#0x2C]
MOV             R12, #0x10
STRD            R2, R3, [R0,#8]
LDRD            R2, R3, [R1,#0xC]
STR             R12, [R0]
STRD            R2, R3, [R0,#0x10]
VLDR            S0, [R1,#0x10]
VLDR            S1, [R1,#0x30]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R2, #0x30 ; '0'
STRCC           R2, [R0]
VLDR            S0, [R1,#0x10]
VLDR            S1, [R1,#0x30]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E2B78
LDR             R1, [R0]
ORR             R1, R1, #8
STR             R1, [R0]
NOP
NOP
ADD             R1, R0, #0x10
VLDR            S2, [R0,#0xC]
VLDR            S3, [R0,#8]
VLDM            R1, {S0-S1}
ADD             R1, R0, #0x18
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VSTM            R1, {S0-S1}
VMOV.F32        S0, S2
VLDR            S1, [R0,#0x14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S2, S0
VMOVLE.F32      S2, S1
VMOVGT.F32      S0, S1
VSTR            S2, [R0,#0x20]
VLDR            S2, [R0,#0x10]
VSTR            S0, [R0,#0x24]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
VMOVLE.F32      S0, S3
VMOVGT.F32      S2, S3
VSTR            S0, [R0,#0x28]
VSTR            S2, [R0,#0x2C]
BX              LR
