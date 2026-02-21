MOV             R3, R1
VMOV.F32        S4, S0
MOV             R2, R1
PUSH            {LR}
SUB             SP, SP, #0xC
MOV             R1, R0
MOV             R0, SP
BL              sub_223B5C
VLDR            S3, [R3]
VLDR            S6, [SP,#0x10+var_10]
VLDR            S0, [R3,#8]
VLDR            S2, [SP,#0x10+var_8]
VSUB.F32        S3, S3, S6
VLDR            S1, [R3,#4]
VLDR            S5, [SP,#0x10+var_C]
VSUB.F32        S2, S0, S2
VMUL.F32        S4, S4, S4
VSUB.F32        S1, S1, S5
ADD             R2, SP, #0x10+var_C
VSTR            S3, [SP,#0x10+var_10]
VMUL.F32        S0, S3, S3
VSTM            R2, {S1-S2}
ADD             SP, SP, #0xC
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #1
MOVHI           R0, #0
POP             {PC}
