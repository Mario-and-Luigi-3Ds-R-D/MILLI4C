ADD             R2, R1, #0x400
ADD             R3, R0, #0x400
VLDR            S3, [R2,#0x228]
VLDR            S0, [R1,#0x108]
VLDR            S1, [R0,#0x108]
VLDR            S2, [R3,#0x224]
VADD.F32        S3, S0, S3
VADD.F32        S2, S1, S2
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_16F828
VLDR            S2, [R2,#0x224]
VLDR            S3, [R3,#0x228]
VADD.F32        S0, S0, S2
VADD.F32        S1, S1, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16F828
VLDR            S2, [R2,#0x234]
VLDR            S0, [R1,#0x10C]
VLDR            S1, [R0,#0x10C]
VADD.F32        S2, S0, S2
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_16F828
VLDR            S2, [R3,#0x234]
VADD.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVHI           R0, #1
BHI             locret_16F82C
MOV             R0, #0
BX              LR
