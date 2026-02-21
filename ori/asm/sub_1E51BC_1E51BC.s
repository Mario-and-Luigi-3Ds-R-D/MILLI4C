PUSH            {R4-R8,LR}
MOV             R4, R0
VLDR            S0, =40.744
LDR             R2, =0x47800000
VPUSH           {D8}
SUB             SP, SP, #0xB8
VLDR            S1, [R0,#0x40]
VLDR            S3, [R0,#0x44]
VLDR            S2, [R0,#0x48]
VMUL.F32        S1, S1, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S4, S2, S0
VLDR            S0, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S1
VCMPE.F32       S3, S0
MOVCC           R3, #1
MOVCS           R3, #0
VMOV            R0, S2
VMRS            APSR_nzcv, FPSCR
VABS.F32        S3, S3
VCMPE.F32       S4, S0
MOVCC           R12, #1
MOVCS           R12, #0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S4, S4
VLDR            S5, =65536.0
MOVCC           LR, #1
MOVCS           LR, #0
CMP             R0, R2
BLT             loc_1E524C
VSUB.F32        S2, S2, S5
VMOV            R0, S2
CMP             R0, R2
BGE             loc_1E523C
VMOV            R0, S3
CMP             R0, R2
BLT             loc_1E5268
VSUB.F32        S3, S3, S5
VMOV            R0, S3
CMP             R0, R2
BGE             loc_1E5258
VMOV            R0, S4
CMP             R0, R2
BLT             loc_1E5284
VSUB.F32        S4, S4, S5
VMOV            R0, S4
CMP             R0, R2
BGE             loc_1E5274
VCVT.U32.F32    S1, S2
CMP             R3, #0
VMOV            R0, S1
VCVT.U32.F32    S1, S3
UXTH            R0, R0
AND             R6, R0, #0xFF
VMOV            R1, S1
VCVT.U32.F32    S1, S4
UXTH            R1, R1
VMOV            S6, R1
AND             R7, R1, #0xFF
VMOV            R5, S1
VMOV            S1, R0
VCVT.F32.U32    S7, S6
LDR             R0, =flt_697140
UXTH            R5, R5
VMOV            S6, R5
ADD             R1, R0, R6,LSL#4
VCVT.F32.U32    S1, S1
AND             R8, R5, #0xFF
ADD             R5, R0, R7,LSL#4
ADD             R6, R0, R8,LSL#4
VCVT.F32.U32    S6, S6
VSUB.F32        S3, S3, S7
VLDR            S7, [R1]
VLDR            S9, [R5,#4]
VLDR            S8, [R6]
VLDR            S10, [R6,#4]
VSUB.F32        S2, S2, S1
VLDR            S1, [R5]
ADD             R5, R5, #8
ADD             R6, R6, #8
VSUB.F32        S4, S4, S6
VLDR            S6, [R1,#4]
ADD             R1, R1, #8
VLDM            R5, {S13-S14}
VLDM            R1, {S11-S12}
MOV             R1, #0
VMLA.F32        S1, S3, S13
VLDM            R6, {S15-S16}
VMLA.F32        S7, S2, S11
VMLA.F32        S6, S2, S12
VMLA.F32        S9, S3, S14
VMLA.F32        S8, S4, S15
VMLA.F32        S10, S4, S16
VNEGNE.F32      S7, S7
CMP             R12, #0
VNEGNE.F32      S1, S1
CMP             LR, #0
VNEGNE.F32      S8, S8
VMUL.F32        S4, S6, S10
VMUL.F32        S3, S7, S10
VMUL.F32        S10, S10, S9
VNEG.F32        S13, S1
VMUL.F32        S2, S6, S8
VMUL.F32        S12, S7, S8
VMUL.F32        S8, S8, S9
VMUL.F32        S7, S7, S9
VMUL.F32        S9, S6, S9
VSTR            S10, [SP,#0xD8+var_60]
VMOV.F32        S6, S2
VMOV.F32        S11, S12
VSTR            S8, [SP,#0xD8+var_50]
VSTR            S7, [SP,#0xD8+var_3C]
VSTR            S9, [SP,#0xD8+var_38]
VNMLS.F32       S6, S3, S1
VNMLS.F32       S3, S2, S1
VMLA.F32        S11, S4, S1
VMLA.F32        S4, S12, S1
VSTR            S6, [SP,#0xD8+var_5C]
VSTR            S3, [SP,#0xD8+var_48]
VSTR            S11, [SP,#0xD8+var_58]
VSTR            S4, [SP,#0xD8+var_4C]
VSTR            S13, [SP,#0xD8+var_40]
STR             R1, [SP,#0xD8+var_54]
STR             R1, [SP,#0xD8+var_44]
STR             R1, [SP,#0xD8+var_34]
VLDR            S2, [R4,#0x70]
VLDR            S16, =1.0
VLDR            S1, =90.0
MOV             R5, #0
VSUB.F32        S2, S16, S2
MOV             R6, R5
VMUL.F32        S1, S2, S1
VLDR            S2, =0.71111
VMUL.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S6, S0
VABS.F32        S2, S1
MOVCC           LR, #1
MOVCS           LR, #0
VMOV.F32        S1, S6
VMOV            R3, S2
CMP             R3, R2
BLT             loc_1E5414
VSUB.F32        S2, S2, S5
VMOV            R3, S2
CMP             R3, R2
BGE             loc_1E5404
VMOV            R3, S0
CMP             R3, R2
BLT             loc_1E5430
VSUB.F32        S0, S0, S5
VMOV            R3, S0
CMP             R3, R2
BGE             loc_1E5420
VMOV            R3, S1
CMP             R3, R2
BLT             loc_1E544C
VSUB.F32        S1, S1, S5
VMOV            R3, S1
CMP             R3, R2
BGE             loc_1E543C
VCVT.U32.F32    S3, S2
CMP             LR, #0
VMOV            R2, S3
VCVT.U32.F32    S3, S0
UXTH            R2, R2
VMOV            R3, S3
VCVT.U32.F32    S3, S1
UXTH            R3, R3
VMOV            R12, S3
VMOV            S3, R2
AND             R2, R2, #0xFF
UXTH            R12, R12
ADD             R2, R0, R2,LSL#4
VCVT.F32.U32    S4, S3
VMOV            S3, R3
AND             R3, R3, #0xFF
VLDR            S8, [R2]
ADD             R3, R0, R3,LSL#4
VLDR            S9, [R3,#4]
VCVT.F32.U32    S5, S3
VMOV            S3, R12
AND             R12, R12, #0xFF
VSUB.F32        S2, S2, S4
VLDR            S4, [R2,#4]
ADD             R0, R0, R12,LSL#4
ADD             R2, R2, #8
VCVT.F32.U32    S7, S3
VLDM            R2, {S10-S11}
VSUB.F32        S3, S0, S5
VLDR            S5, [R3]
ADD             R3, R3, #8
VLDR            S0, [R0]
VMLA.F32        S8, S2, S10
VLDM            R3, {S12-S13}
VMLA.F32        S4, S2, S11
VSUB.F32        S1, S1, S7
VLDR            S7, [R0,#4]
ADD             R0, R0, #8
VMLA.F32        S5, S3, S12
VLDM            R0, {S14-S15}
VMLA.F32        S9, S3, S13
VNEGNE.F32      S8, S8
CMP             R5, #0
VMLA.F32        S0, S1, S14
VMLA.F32        S7, S1, S15
VNEGNE.F32      S5, S5
CMP             R6, #0
VNEG.F32        S13, S5
VNEGNE.F32      S0, S0
VMUL.F32        S3, S8, S7
VMUL.F32        S11, S4, S7
VMUL.F32        S7, S7, S9
VMUL.F32        S2, S4, S0
VMUL.F32        S1, S8, S0
VMUL.F32        S12, S0, S9
VMUL.F32        S8, S8, S9
VMUL.F32        S4, S4, S9
VSTR            S7, [SP,#0xD8+var_C0]
VMOV.F32        S0, S2
VMOV.F32        S10, S1
VSTR            S12, [SP,#0xD8+var_B0]
VSTR            S8, [SP,#0xD8+var_9C]
VSTR            S4, [SP,#0xD8+var_98]
VNMLS.F32       S0, S3, S5
VNMLS.F32       S3, S2, S5
VMLA.F32        S10, S11, S5
VMLA.F32        S11, S1, S5
VSTR            S0, [SP,#0xD8+var_BC]
VSTR            S3, [SP,#0xD8+var_A8]
VSTR            S10, [SP,#0xD8+var_B8]
VSTR            S11, [SP,#0xD8+var_AC]
VSTR            S13, [SP,#0xD8+var_A0]
STR             R1, [SP,#0xD8+var_B4]
B               loc_1E5594
DCFS 40.744
DCFS 0.0
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
DCFS 1.0
DCFS 90.0
DCFS 0.71111
STR             R1, [SP,#0xD8+var_A4]
STR             R1, [SP,#0xD8+var_94]
VSTR            S6, [SP,#0xD8+var_88]
VSTR            S16, [SP,#0xD8+var_84]
ADD             R2, SP, #0xD8+var_88
VSTR            S6, [SP,#0xD8+var_80]
ADD             R1, SP, #0xD8+var_C0
MOV             R0, R2
BL              sub_1169FC
VLDR            S3, [SP,#0xD8+var_88]
VLDR            S0, [SP,#0xD8+var_84]
VLDR            S2, [SP,#0xD8+var_80]
VMUL.F32        S1, S3, S3
ADD             R3, SP, #0xD8+var_84
ADD             R2, SP, #0xD8+var_88
ADD             R1, SP, #0xD8+var_60
ADD             R0, R4, #0x58 ; 'X'
VMLA.F32        S1, S0, S0
VMLA.F32        S1, S2, S2
VSQRT.F32       S4, S1
VDIV.F32        S1, S16, S4
VMUL.F32        S3, S3, S1
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S2, S1
VSTR            S3, [SP,#0xD8+var_88]
VSTM            R3, {S0-S1}
BL              sub_1169FC
LDRB            R0, [R4,#0xB4]
CMP             R0, #1
BEQ             loc_1E5640
CMP             R0, #0
BNE             loc_1E566C
LDR             R0, [R4]
VLDR            S0, [R4,#0x8C]
ADD             R3, R4, #0x40 ; '@'
ADD             R2, R4, #4
LDR             R12, [R0,#0x34]
ADD             SP, SP, #0xB8
ADD             R1, R4, #0x1C
VPOP            {D8}
MOV             R0, R4
POP             {R4-R8,LR}
BX              R12
LDR             R0, [R4]
VLDR            S0, [R4,#0x8C]
ADD             R3, R4, #0x40 ; '@'
ADD             R2, R4, #0x1C
LDR             R12, [R0,#0x2C]
ADD             SP, SP, #0xB8
ADD             R1, R4, #4
VPOP            {D8}
MOV             R0, R4
POP             {R4-R8,LR}
BX              R12
ADD             SP, SP, #0xB8
VPOP            {D8}
POP             {R4-R8,PC}
