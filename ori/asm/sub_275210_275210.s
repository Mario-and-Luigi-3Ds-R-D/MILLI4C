VLDR            S3, [R0]
VLDR            S5, [R1]
VLDR            S2, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S4, [R1,#4]
VLDR            S1, [R1,#8]
VSUB.F32        S3, S3, S5
VSUB.F32        S4, S2, S4
VSUB.F32        S5, S0, S1
VLDR            S0, =0.0
MOV             R0, #0
VMOV.F32        S9, S0
ADD             R2, R0, R0,LSL#1
ADD             R3, R1, R0,LSL#2
ADD             R2, R1, R2,LSL#2
VLDR            S6, [R3,#0x30]
VLDR            S1, [R2,#0xC]
VLDR            S8, [R2,#0x10]
VLDR            S7, [R2,#0x14]
VMUL.F32        S1, S3, S1
VMOV.F32        S2, S9
VMLA.F32        S1, S4, S8
VNEG.F32        S8, S6
VMLA.F32        S1, S5, S7
VCMPE.F32       S8, S1
VMRS            APSR_nzcv, FPSCR
VADDGT.F32      S2, S6, S1
BGT             loc_27528C
VCMPE.F32       S6, S1
VMRS            APSR_nzcv, FPSCR
VSUBCC.F32      S2, S1, S6
ADD             R0, R0, #1
CMP             R0, #3
VMLA.F32        S0, S2, S2
BCC             loc_275240
BX              LR
