VLDR            S1, [R0,#0x34]
VLDR            S0, [R0,#0x40]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_1A574C
VLDR            S2, [R0,#0x38]
VLDR            S1, [R0,#0x44]
VCMP.F32        S2, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1A574C
VLDR            S3, [R0,#0x3C]
VLDR            S2, [R0,#0x48]
VCMP.F32        S3, S2
VMRS            APSR_nzcv, FPSCR
BXEQ            LR
PUSH            {R4,LR}
ADD             R1, R0, #0x44 ; 'D'
VPUSH           {D8-D13}
VMOV.F32        S16, S0
VLDR            S4, =0.0
VLDR            S22, [R0,#4]
ADD             R0, R0, #0x34 ; '4'
VMOV.F32        S0, S4
VLDM            R0, {S19-S21}
VLDR            S3, =1.0
VLDR            S7, =1.1921e-7
VMLA.F32        S0, S19, S16
VLDM            R1, {S1-S2}
VMOV.F32        S17, S1
VMOV.F32        S18, S2
VMLA.F32        S0, S20, S1
VMLA.F32        S0, S21, S2
VMLS.F32        S3, S0, S0
VSUB.F32        S5, S3, S4
VCMPE.F32       S5, S4
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S6, S3
VNEGCC.F32      S5, S5
VCMPE.F32       S6, S4
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S6, S6
VMUL.F32        S6, S6, S7
VCMPE.F32       S6, S5
VMRS            APSR_nzcv, FPSCR
VCMPELT.F32     S4, S5
VMRSLT          APSR_nzcv, FPSCR
VMOVGE.F32      S0, S16
BGE             loc_1A5818
VSQRT.F32       S23, S3
BL              sub_5F5B2C
VMOV.F32        S24, S0
VLDR            S26, =40.744
VMUL.F32        S25, S24, S22
VMUL.F32        S0, S25, S26
BL              sub_464380
VDIV.F32        S22, S0, S23
VSUB.F32        S0, S24, S25
VMUL.F32        S0, S0, S26
BL              sub_464380
VDIV.F32        S2, S0, S23
VMUL.F32        S0, S19, S2
VMUL.F32        S1, S20, S2
VMUL.F32        S2, S21, S2
VMLA.F32        S0, S16, S22
VMLA.F32        S1, S17, S22
VMLA.F32        S2, S18, S22
VPOP            {D8-D13}
POP             {R4,PC}
