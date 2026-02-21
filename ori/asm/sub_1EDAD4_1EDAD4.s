LDRH            R2, [R0,#0xE4]
STRH            R2, [R0,#0xE8]
LDRH            R2, [R0,#0xE6]
STRH            R2, [R0,#0xEA]
LDR             R2, [R1]
TST             R2, #3
BEQ             locret_1EDB48
TST             R2, #8
BEQ             loc_1EDB28
TST             R2, #4
BEQ             loc_1EDB4C
LDR             R3, [R1,#4]
LDR             R12, [R1,#0x28]
CMP             R3, R12
BNE             loc_1EDB28
ADD             R3, R1, #0x20 ; ' '
BIC             R2, R2, #3
LDM             R3, {R3,R12}
STR             R2, [R1]
STR             R3, [R1,#8]
STR             R12, [R1,#0xC]
VLDR            S0, [R1,#8]
VCVT.S32.F32    S0, S0
VMOV            R2, S0
STRH            R2, [R0,#0xE4]
VLDR            S0, [R1,#0xC]
VCVT.S32.F32    S0, S0
VMOV            R1, S0
STRH            R1, [R0,#0xE6]
BX              LR
TST             R2, #1
BEQ             loc_1EDBA0
VLDR            S1, [R1,#0x18]
VLDR            S0, [R1,#0x20]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1EDB78
VLDR            S2, [R1,#8]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_1EDB94
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1EDBA0
VLDR            S1, [R1,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1EDBA0
BIC             R2, R2, #1
VSTR            S0, [R1,#8]
STR             R2, [R1]
TST             R2, #2
BEQ             loc_1EDBF4
VLDR            S1, [R1,#0x1C]
VLDR            S0, [R1,#0x24]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1EDBCC
VLDR            S2, [R1,#0xC]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_1EDBE8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1EDBF4
VLDR            S1, [R1,#0xC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1EDBF4
BIC             R2, R2, #2
VSTR            S0, [R1,#0xC]
STR             R2, [R1]
TST             R2, #3
BEQ             loc_1EDB28
VLDR            S1, [R1,#0x34]
VLDR            S0, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1EDB28
VMOV.F32        S2, S0
VLDR            S1, [R1,#0x28]
VLDR            S3, [R1,#0x34]
VADD.F32        S1, S3, S1
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S0, S1
BGT             loc_1EDC1C
ADD             R2, R1, #0x20 ; ' '
VLDR            S4, [R1,#8]
VLDR            S3, [R1,#0xC]
VLDM            R2, {S1-S2}
LDR             R2, [R1]
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S3
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S2, S2
VSQRT.F32       S2, S1
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
ORRGE           R2, R2, #0x10
BICLT           R2, R2, #0x10
STR             R2, [R1]
B               loc_1EDB28
