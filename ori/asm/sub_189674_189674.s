PUSH            {R4-R8,LR}
ADD             R4, R0, #0x14000
MOV             R5, R0
MOV             R8, R1
VPUSH           {D8-D13}
SUB             SP, SP, #0xD0
ADD             R1, SP, #0x118+var_114
VLDR            S0, [R2,#0x14]
VLDR            S1, [R4,#0x2B0]
VLDR            S4, [R2]
VLDR            S3, [R2,#0xC]
VSUB.F32        S24, S0, S1
VLDR            S0, [R0,#0xA0]
VLDR            S1, =0.5
VLDR            S5, [R4,#0x294]
VLDR            S2, [R4,#0x2A0]
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VLDR            S16, =0.0
VSUB.F32        S19, S4, S5
VSUB.F32        S20, S3, S2
VMOV.F32        S17, S16
VMOV.F32        S18, S16
MOV             R0, SP
VMUL.F32        S0, S0, S1
BL              sub_462B20
VLDMEA          SP, {S0-S1}
MOV             R7, #0
VLDR            S23, [R5,#0x94]
VSTR            S16, [SP,#0x118+var_6C]
LDR             R0, =0x47800000
VDIV.F32        S21, S0, S1
VLDR            S1, =40.744
VMUL.F32        S22, S23, S21
VNMUL.F32       S0, S23, S21
VSTR            S22, [SP,#0x118+var_68]
VSTR            S16, [SP,#0x118+var_64]
VSTR            S16, [SP,#0x118+var_60]
VSTR            S0, [SP,#0x118+var_5C]
VSTR            S16, [SP,#0x118+var_58]
VLDR            S0, [R5,#0x48]
MOV             R5, R7
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S25, S16
VABS.F32        S0, S0
MOVCC           R6, #1
MOVCS           R6, #0
VLDR            S1, =65536.0
VMOV.F32        S26, S25
VMOV            R2, S0
CMP             R2, R0
BLT             loc_18975C
VSUB.F32        S0, S0, S1
VMOV            R12, S0
CMP             R12, R0
BGE             loc_18974C
VMOV            R2, S26
CMP             R2, R0
BLT             loc_189778
VSUB.F32        S26, S26, S1
VMOV            R2, S26
CMP             R2, R0
BGE             loc_189768
VMOV            R2, S25
CMP             R2, R0
BLT             loc_189794
VSUB.F32        S25, S25, S1
VMOV            R2, S25
CMP             R2, R0
BGE             loc_189784
VCVT.U32.F32    S1, S0
CMP             R6, #0
VMOV            R0, S1
VCVT.U32.F32    S1, S26
UXTH            R0, R0
VMOV            R2, S1
VCVT.U32.F32    S1, S25
UXTH            R2, R2
VMOV            R3, S1
VMOV            S1, R0
AND             R0, R0, #0xFF
UXTH            R3, R3
AND             R12, R3, #0xFF
VCVT.F32.U32    S3, S1
VMOV            S1, R2
AND             R2, R2, #0xFF
VCVT.F32.U32    S4, S1
VMOV            S1, R3
LDR             R3, =flt_697140
VSUB.F32        S0, S0, S3
ADD             R0, R3, R0,LSL#4
ADD             R2, R3, R2,LSL#4
VCVT.F32.U32    S2, S1
VLDR            S3, [R0]
VLDR            S9, [R0,#0xC]
VSUB.F32        S1, S26, S4
ADD             R0, R0, #4
VLDR            S4, [R2]
VLDR            S8, [R2,#4]
ADD             R3, R3, R12,LSL#4
VLDM            R0, {S6-S7}
ADD             R2, R2, #8
VSUB.F32        S2, S25, S2
VLDM            R3!, {S5}
VMLA.F32        S6, S0, S9
VLDM            R2, {S10-S11}
VMLA.F32        S3, S0, S7
MOV             R0, #0
VLDM            R3, {S12-S14}
VMLA.F32        S4, S1, S10
VMLA.F32        S8, S1, S11
VMLA.F32        S5, S2, S13
VMLA.F32        S12, S2, S14
VNEGNE.F32      S3, S3
CMP             R7, #0
VNEGNE.F32      S4, S4
CMP             R5, #0
VNEGNE.F32      S5, S5
VMUL.F32        S1, S6, S12
VMUL.F32        S0, S3, S12
VMUL.F32        S11, S12, S8
VNEG.F32        S10, S4
VMUL.F32        S9, S3, S5
VMUL.F32        S7, S6, S5
VMUL.F32        S5, S5, S8
VMUL.F32        S3, S3, S8
VMUL.F32        S6, S6, S8
VSTR            S11, [SP,#0x118+var_B8]
VMOV.F32        S2, S9
VSTR            S5, [SP,#0x118+var_A8]
VSTR            S3, [SP,#0x118+var_94]
VSTR            S6, [SP,#0x118+var_90]
VMLA.F32        S2, S1, S4
VMLA.F32        S1, S9, S4
VMOV.F32        S9, S7
VNMLS.F32       S9, S0, S4
VNMLS.F32       S0, S7, S4
VSTR            S9, [SP,#0x118+var_B4]
VSTR            S0, [SP,#0x118+var_A0]
VSTR            S2, [SP,#0x118+var_B0]
VSTR            S1, [SP,#0x118+var_A4]
VSTR            S10, [SP,#0x118+var_98]
STR             R0, [SP,#0x118+var_AC]
STR             R0, [SP,#0x118+var_9C]
STR             R0, [SP,#0x118+var_8C]
ADD             R2, SP, #0x118+var_6C
ADD             R1, SP, #0x118+var_B8
ADD             R0, SP, #0x118+var_EC
BL              sub_1169FC
ADD             R2, SP, #0x118+var_60
ADD             R1, SP, #0x118+var_B8
ADD             R0, SP, #0x118+var_88
BL              sub_1169FC
VLDR            S0, [SP,#0x118+var_E4]
VLDR            S1, [SP,#0x118+var_80]
LDR             R0, [R4,#0x180]
VSUB.F32        S0, S23, S0
VSUB.F32        S1, S23, S1
VMUL.F32        S23, S0, S21
VMUL.F32        S21, S1, S21
BL              sub_485BDC
VMUL.F32        S0, S0, S22
VLDR            S1, [R4,#0x2B4]
VSUB.F32        S2, S19, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S19, S0
VSUBCC.F32      S16, S1, S2
VLDR            S1, [R4,#0x2B8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S16, S1, S0
VSUB.F32        S1, S20, S21
VLDR            S0, [R4,#0x2BC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSUBCC.F32      S17, S0, S1
VADD.F32        S1, S20, S23
VLDR            S0, [R4,#0x2C0]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S17, S0, S1
VSUB.F32        S1, S24, S23
VLDR            S0, [R4,#0x2C4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSUBCC.F32      S18, S0, S1
VADD.F32        S1, S24, S21
VLDR            S0, [R4,#0x2C8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSUBGT.F32      S18, S0, S1
VSTM            R8, {S16-S18}
ADD             SP, SP, #0xD0
VPOP            {D8-D13}
POP             {R4-R8,PC}
