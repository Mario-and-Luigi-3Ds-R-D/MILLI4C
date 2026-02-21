PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0x94
LDR             R0, [R0,#4]
TST             R0, #1
LDREQ           R1, [R4]
ADD             R0, R4, R0,ASR#1
BEQ             loc_29C598
LDR             R2, [R0]
LDR             R1, [R4]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#8]
MOV             R1, #0
VLDR            S2, =1.5708
VLDR            S0, =0.0
LDR             R2, [R0,#0xE4]
STR             R1, [SP,#0xA8+var_A4]
STR             R1, [SP,#0xA8+var_A0]
STR             R2, [SP,#0xA8+var_A8]
STR             R1, [SP,#0xA8+var_9C]
STR             R1, [SP,#0xA8+var_98]
LDR             R2, [R0,#0xE8]
STR             R1, [SP,#0xA8+var_90]
STR             R1, [SP,#0xA8+var_8C]
STR             R2, [SP,#0xA8+var_94]
STR             R1, [SP,#0xA8+var_88]
STR             R1, [SP,#0xA8+var_84]
LDR             R0, [R0,#0xEC]
VMOV.F32        S3, S0
MOV             R3, #0
STRD            R0, R1, [SP,#0xA8+var_80]
LDR             R0, [R4,#8]
MOV             R12, R3
VLDR            S1, [R0,#0xF4]
LDR             R0, =0x47800000
VADD.F32        S1, S1, S2
VLDR            S2, =40.744
VMUL.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S1, S1
VLDR            S2, =65536.0
MOVCC           R2, #1
MOVCS           R2, #0
VMOV            LR, S1
CMP             LR, R0
BLT             loc_29C640
VSUB.F32        S1, S1, S2
VMOV            LR, S1
CMP             LR, R0
BGE             loc_29C630
VMOV            LR, S0
CMP             LR, R0
BLT             loc_29C65C
VSUB.F32        S0, S0, S2
VMOV            LR, S0
CMP             LR, R0
BGE             loc_29C64C
VCVT.U32.F32    S2, S3
CMP             R1, #0
VMOV            R0, S2
VCVT.U32.F32    S2, S1
UXTH            R0, R0
AND             R6, R0, #0xFF
VMOV            LR, S2
VCVT.U32.F32    S2, S0
UXTH            LR, LR
VMOV            S4, LR
AND             LR, LR, #0xFF
VMOV            R5, S2
VMOV            S2, R0
VCVT.F32.U32    S5, S4
LDR             R0, =flt_697140
UXTH            R5, R5
VMOV            S4, R5
ADD             LR, R0, LR,LSL#4
VCVT.F32.U32    S2, S2
AND             R7, R5, #0xFF
ADD             R5, R0, R6,LSL#4
ADD             R0, R0, R7,LSL#4
VCVT.F32.U32    S6, S4
VSUB.F32        S5, S1, S5
VLDR            S1, [R0]
VLDR            S12, [R5,#8]
VLDR            S8, [R0,#4]
ADD             R0, R0, #8
VSUB.F32        S4, S3, S2
VLDR            S3, [LR]
VLDR            S2, [LR,#4]
ADD             LR, LR, #8
VSUB.F32        S6, S0, S6
VLDR            S0, [R5]
VLDR            S7, [R5,#4]
VLDR            S9, [R5,#0xC]
VLDM            LR, {S10-S11}
VMLA.F32        S0, S4, S12
VMLA.F32        S7, S4, S9
VLDM            R0, {S13-S14}
VMLA.F32        S3, S5, S10
VMLA.F32        S2, S5, S11
VMLA.F32        S1, S6, S13
VMLA.F32        S8, S6, S14
VNEGNE.F32      S0, S0
CMP             R2, #0
VNEGNE.F32      S3, S3
CMP             R3, #0
VNEGNE.F32      S1, S1
VMUL.F32        S4, S0, S8
VMUL.F32        S5, S7, S8
VMUL.F32        S11, S0, S2
VMUL.F32        S8, S8, S2
VNEG.F32        S12, S3
VMUL.F32        S10, S7, S1
VMUL.F32        S9, S0, S1
VMUL.F32        S1, S1, S2
VMUL.F32        S2, S7, S2
VSTR            S8, [SP,#0xA8+var_78]
VMOV.F32        S6, S10
VMOV.F32        S0, S9
VSTR            S1, [SP,#0xA8+var_68]
VSTR            S11, [SP,#0xA8+var_54]
VSTR            S2, [SP,#0xA8+var_50]
VNMLS.F32       S6, S4, S3
VNMLS.F32       S4, S10, S3
VMLA.F32        S0, S5, S3
VMLA.F32        S5, S9, S3
VSTR            S6, [SP,#0xA8+var_74]
VSTR            S4, [SP,#0xA8+var_60]
VSTR            S0, [SP,#0xA8+var_70]
VSTR            S5, [SP,#0xA8+var_64]
VSTR            S12, [SP,#0xA8+var_58]
STR             R12, [SP,#0xA8+var_6C]
STR             R12, [SP,#0xA8+var_5C]
MOV             R2, SP
ADD             R1, SP, #0xA8+var_78
ADD             R0, SP, #0xA8+var_48
STR             R12, [SP,#0xA8+var_4C]
BL              sub_141F30
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x108]
STR             R0, [SP,#0xA8+var_3C]
LDR             R0, [R4,#8]
ADD             R1, R0, #0x400
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R1,#0x1B8]
VLDR            S2, [R1,#0x1AC]
ADD             R1, SP, #0xA8+var_48
VADD.F32        S0, S0, S1
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0xA8+var_2C]
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x110]
STR             R0, [SP,#0xA8+var_1C]
LDR             R0, [R4,#0xB0]
ADD             R4, R0, #0x4C ; 'L'
MOV             R0, R4
BL              sub_1169CC
LDR             R0, [R4,#0x3C]
ORR             R0, R0, #0x800
STR             R0, [R4,#0x3C]
ADD             SP, SP, #0x94
POP             {R4-R7,PC}
