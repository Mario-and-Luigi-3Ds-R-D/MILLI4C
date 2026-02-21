PUSH            {R4,LR}
VLDR            S4, [R1]
VLDR            S6, [R0]
VLDR            S1, [R1,#8]
VLDR            S3, [R0,#8]
VSUB.F32        S4, S4, S6
VLDR            S2, [R1,#4]
VLDR            S5, [R0,#4]
VSUB.F32        S3, S1, S3
SUB             SP, SP, #0x10
VSUB.F32        S2, S2, S5
VLDR            S5, =1.0
MOV             R4, R3
LDR             R3, [SP,#0x18+arg_0]
VSTR            S4, [SP,#0x18+var_14]
VMUL.F32        S1, S4, S4
ADD             R12, SP, #0x18+var_10
ADD             R1, SP, #0x18+var_14
VSTM            R12, {S2-S3}
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S3, S3
VSQRT.F32       S9, S1
VDIV.F32        S1, S5, S9
VMUL.F32        S4, S4, S1
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S3, S1
VSTR            S4, [SP,#0x18+var_14]
VSTR            S2, [SP,#0x18+var_10]
VSTR            S1, [SP,#0x18+var_C]
STR             R3, [SP,#0x18+var_18]
MOV             R3, R4
BL              sub_275B80
CMP             R0, #0
BEQ             loc_275CF4
VLDR            S0, [R4]
VCMPE.F32       S0, S9
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #1
BLS             loc_275CF8
MOV             R0, #0
ADD             SP, SP, #0x10
POP             {R4,PC}
