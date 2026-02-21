PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R0, [R0,#0x404]
SUB             SP, SP, #0xC
MOV             R1, #0
BL              sub_5CC1FC
MOV             R4, R0
LDR             R0, [R5,#0x404]
MOV             R1, #1
BL              sub_5CC1FC
VLDR            S1, [R4]
VLDR            S5, [R0]
VLDR            S4, [R0,#4]
VLDR            S2, [R4,#4]
VSUB.F32        S1, S1, S5
VLDR            S5, [R4,#0xC]
VLDR            S8, [R0,#0xC]
VSUB.F32        S2, S2, S4
VLDR            S3, [R0,#8]
VSUB.F32        S5, S5, S8
VLDR            S0, [R4,#8]
ADD             R4, R4, #0x10
ADD             R0, R0, #0x10
VSUB.F32        S0, S0, S3
VMUL.F32        S1, S1, S1
VLDM            R4, {S3-S4}
VLDM            R0, {S6-S7}
LDR             R0, =off_6CDF98
VSUB.F32        S3, S3, S6
VSUB.F32        S4, S4, S7
LDR             R0, [R0]
VMLA.F32        S1, S2, S2
VMUL.F32        S2, S5, S5
LDR             R0, [R0,#0x124]
ADD             R1, R0, #0x400
VMLA.F32        S1, S0, S0
VMLA.F32        S2, S3, S3
VMLA.F32        S2, S4, S4
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R1,#0x28C]
VLDR            S3, =1.0
VMOVCC.F32      S1, S2
VDIV.F32        S2, S1, S0
VMOV.F32        S0, S3
VSTR            S2, [R5,#0x3FC]
VLDR            S4, [R1,#0x28C]
VDIV.F32        S2, S1, S4
VLDR            S1, [R0,#0x26C]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_27E9B4
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
VMOVCS.F32      S0, S2
MOV             R1, SP
VSTR            S0, [R5,#0x3FC]
LDR             R0, [R5,#0x400]
STR             R0, [SP,#0x18+var_18]
VSTR            S0, [SP,#0x18+var_14]
VSTR            S3, [SP,#0x18+var_10]
MOV             R0, R5
BL              sub_14EA04
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
