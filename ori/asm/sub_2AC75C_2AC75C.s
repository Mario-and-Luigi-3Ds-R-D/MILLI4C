PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R4, R1
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0]
LDR             R5, =dword_6EDA78
ADD             R1, SP, #0x28+var_20
LDR             R2, [R0,#0x80]
MOV             R0, R6
BLX             R2
LDRSH           R0, [R5,#(word_6EDABC - 0x6EDA78)]
VLDR            S1, [SP,#0x28+var_20]
ADD             R6, R6, #0x13C00
VMOV            S0, R0
VLDR            S16, =0.0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4]
LDRSH           R0, [R5,#(word_6EDABE - 0x6EDA78)]
VLDR            S1, [SP,#0x28+var_1C]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R6,#0x58]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2AC824
ADD             R1, SP, #0x28+var_24
VLDR            S1, =40.744
MOV             R0, SP
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDM            R4, {S2-S3}
VLDR            S0, [SP,#0x28+var_24]
VLDR            S1, [SP,#0x28+var_28]
VMOV.F32        S6, S2
VMOV.F32        S5, S0
VNEG.F32        S4, S1
VMUL.F32        S5, S5, S6
VMUL.F32        S2, S4, S2
VMOV.F32        S4, S3
VMLA.F32        S5, S1, S4
VMLA.F32        S2, S0, S3
VMOV.F32        S0, S16
VADD.F32        S0, S5, S0
VADD.F32        S1, S2, S16
VSTR            S0, [R4]
VSTR            S1, [R4,#4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
