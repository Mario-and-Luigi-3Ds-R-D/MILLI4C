LDR             R2, [R0,#0x464]
VLDR            S1, [R0,#0x24]
VLDR            S0, =0.0
ADD             R2, R2, #0xC
ADD             R3, R2, #0x74 ; 't'
VLDR            S2, =1.0
VLDR            S3, [R0,#0x2C]
VLDM            R3, {S4-S5}
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_28390C
VSUB.F32        S1, S4, S1
VLDR            S5, [R1,#8]
VSUB.F32        S3, S5, S3
VMUL.F32        S4, S1, S1
VMLA.F32        S4, S0, S0
VMLA.F32        S4, S3, S3
VSQRT.F32       S5, S4
VDIV.F32        S4, S2, S5
VMUL.F32        S1, S1, S4
VMUL.F32        S0, S0, S4
VMUL.F32        S2, S3, S4
B               loc_283948
VCMPE.F32       S1, S5
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S1, S0
BLE             loc_283948
VLDR            S4, [R1,#8]
VSUB.F32        S1, S5, S1
VSUB.F32        S3, S4, S3
VMUL.F32        S4, S1, S1
VMLA.F32        S4, S0, S0
VMLA.F32        S4, S3, S3
VSQRT.F32       S5, S4
VDIV.F32        S4, S2, S5
VMUL.F32        S1, S1, S4
VMUL.F32        S0, S0, S4
VMUL.F32        S2, S3, S4
MOV             R3, #1
MOV             R1, #8
STRB            R3, [R0,#0x455]
STRB            R1, [R0,#0x3F4]
VLDR            S3, [R2,#0x6C]
ADD             R1, R0, #0x400
VMUL.F32        S1, S1, S3
VMUL.F32        S0, S0, S3
VMUL.F32        S2, S2, S3
VSTR            S3, [R1,#0x50]
VSTR            S1, [R1,#0x58]
VSTR            S0, [R1,#0x5C]
VSTR            S2, [R1,#0x60]
B               sub_2835A8
