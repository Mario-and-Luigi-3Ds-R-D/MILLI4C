LDR             R2, [R0,#4]
ADD             R0, R1, #0x400
VLDR            S6, =-50.0
VLDR            S0, [R0,#0x234]
VLDR            S3, [R2,#0x10C]
VLDR            S5, =50.0
VLDR            S4, [R0,#0x228]
VSUB.F32        S9, S3, S0
VLDR            S7, [R0,#0x224]
VSUB.F32        S6, S6, S4
VLDR            S2, [R1,#0x10C]
VSUB.F32        S5, S5, S7
VNEG.F32        S8, S4
VNEG.F32        S0, S0
VNEG.F32        S4, S7
VLDR            S1, =90.0
VCMPE.F32       S9, S2
VMRS            APSR_nzcv, FPSCR
VADDLS.F32      S7, S3, S1
VCMPELS.F32     S2, S7
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_237BC0
VADD.F32        S7, S3, S0
VSUB.F32        S6, S8, S6
VSUB.F32        S3, S1, S0
VLDR            S1, [R2,#0x108]
VSUB.F32        S0, S2, S7
VLDR            S2, [R1,#0x108]
VDIV.F32        S7, S6, S3
VMOV.F32        S6, S1
VMLA.F32        S6, S7, S0
VCMPE.F32       S6, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_237BC0
VSUB.F32        S5, S4, S5
VDIV.F32        S4, S5, S3
VMLA.F32        S1, S4, S0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #1
BGE             locret_237BC4
MOV             R0, #0
BX              LR
