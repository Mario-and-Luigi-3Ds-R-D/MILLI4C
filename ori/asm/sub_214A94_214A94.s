VLDM            R0!, {S5}
VLDR            S2, [R1]
VLDR            S1, [R1,#4]
VLDR            S0, [R1,#8]
VSUB.F32        S2, S2, S5
VLDM            R0, {S3-S4}
LDR             R0, =flt_6E34B0
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S4
VLDR            S5, [R0,#(flt_6E35B4 - 0x6E34B0)]
MOV             R1, R0
VMUL.F32        S2, S2, S2
VMLA.F32        S2, S1, S1
VLDR            S1, [R1,#(flt_6E35B8 - 0x6E34B0)]
VMLA.F32        S2, S0, S0
VSQRT.F32       S4, S2
VCMPE.F32       S5, S4
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S1
BLS             locret_214B38
VLDR            S6, [R0,#(flt_6E35A4 - 0x6E34B0)]
LDR             R1, =flt_6E34B0
VCMPE.F32       S6, S4
VLDR            S0, [R1,#(flt_6E35A8 - 0x6E34B0)]
VMRS            APSR_nzcv, FPSCR
BGE             locret_214B38
VLDR            S2, [R0,#(flt_6E35AC - 0x6E34B0)]
VLDR            S3, [R1,#(flt_6E35B0 - 0x6E34B0)]
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S1, S3
VMOVGE.F32      S3, S6
BGE             loc_214B24
VMOV.F32        S0, S3
VMOV.F32        S3, S2
VMOV.F32        S2, S5
VSUB.F32        S4, S4, S3
VSUB.F32        S3, S2, S3
VSUB.F32        S2, S1, S0
VDIV.F32        S1, S4, S3
VMLA.F32        S0, S2, S1
BX              LR
