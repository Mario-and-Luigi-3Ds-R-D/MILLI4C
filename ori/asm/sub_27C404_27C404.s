PUSH            {R4,LR}
ADD             R0, R0, #0x400
VPUSH           {D8}
ADD             R0, R0, #0xC4
VLDR            S16, =0.0
VLDR            S6, [R0]
VLDR            S3, [R0,#8]
VLDR            S5, [R0,#4]
VLDR            S2, =1.0
VLDM            R1!, {S4}
VLDM            R1, {S0-S1}
VSUB.F32        S17, S4, S6
VSUB.F32        S0, S0, S5
VSUB.F32        S1, S1, S3
VMUL.F32        S3, S17, S17
VMLA.F32        S3, S0, S0
VMLA.F32        S3, S1, S1
VSQRT.F32       S4, S3
VCMP.F32        S4, S16
VMRS            APSR_nzcv, FPSCR
VMOVEQ.F32      S0, S16
BEQ             loc_27C488
VMOV.F32        S3, S17
VMOV.F32        S5, S16
VMUL.F32        S3, S3, S5
VMLA.F32        S3, S0, S2
VMOV.F32        S0, S16
VMLA.F32        S3, S1, S0
VDIV.F32        S0, S3, S4
BL              sub_5F5B2C
VCMPE.F32       S17, S16
VMRS            APSR_nzcv, FPSCR
VNEGGT.F32      S0, S0
VPOP            {D8}
POP             {R4,PC}
