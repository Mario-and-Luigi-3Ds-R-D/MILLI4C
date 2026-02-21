VLDR            S4, =0.0
VLDR            S5, =1.0
LDR             R0, =off_6D48F8
VCMPE.F32       S0, S4
LDR             R0, [R0]
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S4
BLS             loc_126440
VMOV            R1, S0
CMP             R1, #0x3F800000
VMOVGE.F32      S0, S5
VCMPE.F32       S1, S4
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x260]
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S1, S4
BLS             loc_126464
VMOV            R1, S1
CMP             R1, #0x3F800000
VMOVGE.F32      S1, S5
VCMPE.F32       S2, S4
VSTR            S1, [R0,#0x264]
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S2, S4
BLS             loc_126484
VMOV            R1, S2
CMP             R1, #0x3F800000
VMOVGE.F32      S2, S5
VCMPE.F32       S3, S4
VSTR            S2, [R0,#0x268]
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S3, S4
BLS             loc_1264A4
VMOV            R1, S3
CMP             R1, #0x3F800000
VMOVGE.F32      S3, S5
VSTR            S3, [R0,#0x26C]
BX              LR
