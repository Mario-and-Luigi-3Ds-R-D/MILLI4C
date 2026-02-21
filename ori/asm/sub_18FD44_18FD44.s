PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R7, R0, #0x14000
MOV             R5, R1
VPUSH           {D8-D9}
SUB             SP, SP, #0xBC
LDRB            R6, [R7,#0x28F]
BL              sub_2B01F8
CMP             R6, #2
MOV             R8, #1
BEQ             loc_19014C
CMP             R5, #2
BNE             loc_190140
LDR             R0, [R4]
LDRB            R1, [R7,#0x290]
LDR             R2, [R0,#0x2A4]
MOV             R0, R4
BLX             R2
MOV             R6, R0
MOV             R7, #0
ADD             R1, SP, #0xE8+var_5C
ADD             R0, R4, #8
STRB            R7, [R4,#0xBC]
BL              sub_5C7AD0
ADD             R1, SP, #0xE8+var_44
ADD             R0, R4, #8
BL              sub_5C7AE8
ADD             R3, SP, #0xE8+var_5C
ADD             R5, R4, #0x14400
LDM             R3, {R0-R2}
ADD             R3, R4, #0x14400
ADD             R3, R3, #0x218
STM             R3, {R0-R2}
ADD             R1, SP, #0xE8+var_B4
VLDR            S1, [R6,#0x10C]
VLDR            S0, [SP,#0xE8+var_40]
ADD             R0, R4, #8
VSUB.F32        S0, S0, S1
VSTR            S0, [R5,#0x250]
VLDR            S0, [SP,#0xE8+var_58]
VLDR            S1, [SP,#0xE8+var_40]
VSUB.F32        S0, S0, S1
VSTR            S0, [R5,#0x254]
VLDR            S0, =3.4028e38
VSTR            S0, [R5,#0x224]
VSTR            S0, [R5,#0x228]
VSTR            S0, [R5,#0x22C]
VLDR            S18, [R6,#0x108]
ADD             R6, R6, #0x10C
VLDM            R6, {S16-S17}
BL              sub_5C7AD0
VLDR            S1, [R5,#0x250]
VLDR            S0, [R5,#0x254]
ADD             R0, SP, #0xE8+var_50
VADD.F32        S1, S16, S1
VADD.F32        S3, S1, S0
VSTR            S3, [SP,#0xE8+var_B0]
VLDR            S0, [R5,#0x250]
VLDR            S1, [SP,#0xE8+var_B4]
VADD.F32        S2, S16, S0
VLDR            S0, [SP,#0xE8+var_AC]
VSUB.F32        S1, S18, S1
VSUB.F32        S0, S17, S0
VSUB.F32        S2, S2, S3
VSTR            S0, [SP,#0xE8+var_48]
VSTM            R0, {S1-S2}
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S19, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S18, =6.2832
VLDR            S3, =0.0
LDR             R0, =0x47800000
MOV             R3, #0
MOV             R6, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S19
VMUL.F32        S16, S0, S18
VLDR            S0, =40.744
VMUL.F32        S0, S16, S0
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S17, S3
VABS.F32        S1, S0
MOVCC           R12, #1
MOVCS           R12, #0
VLDR            S0, =65536.0
VMOV.F32        S2, S17
VMOV            R1, S1
CMP             R1, R0
BLT             loc_18FEC4
VSUB.F32        S1, S1, S0
VMOV            R1, S1
CMP             R1, R0
BGE             loc_18FEB4
VMOV            R1, S2
CMP             R1, R0
BLT             loc_18FEE0
VSUB.F32        S2, S2, S0
VMOV            R1, S2
CMP             R1, R0
BGE             loc_18FED0
VCVT.U32.F32    S0, S3
CMP             R3, #0
VMOV            R0, S0
VCVT.U32.F32    S0, S1
UXTH            R1, R0
VMOV            R0, S0
VCVT.U32.F32    S0, S2
UXTH            R0, R0
VMOV            S4, R0
AND             R0, R0, #0xFF
VMOV            R2, S0
VMOV            S0, R1
VCVT.F32.U32    S5, S4
AND             R1, R1, #0xFF
UXTH            R2, R2
VMOV            S4, R2
AND             R9, R2, #0xFF
LDR             R2, =flt_697140
VCVT.F32.U32    S0, S0
ADD             R1, R2, R1,LSL#4
VCVT.F32.U32    S4, S4
ADD             R0, R2, R0,LSL#4
VSUB.F32        S1, S1, S5
VLDR            S6, [R1]
ADD             R2, R2, R9,LSL#4
VLDR            S5, [R0]
VLDR            S7, [R0,#4]
VSUB.F32        S0, S3, S0
ADD             R0, R0, #8
VLDR            S3, [R2]
VSUB.F32        S2, S2, S4
VLDR            S4, [R1,#4]
ADD             R1, R1, #8
VLDR            S8, [R2,#4]
ADD             R2, R2, #8
VLDM            R1, {S9-S10}
VLDM            R0, {S11-S12}
ADD             R0, SP, #0xE8+var_94
VMLA.F32        S6, S0, S9
VLDM            R2, {S13-S14}
VMLA.F32        S5, S1, S11
VMLA.F32        S4, S0, S10
VMLA.F32        S7, S1, S12
VMLA.F32        S3, S2, S13
VMLA.F32        S8, S2, S14
VNEGNE.F32      S6, S6
CMP             R12, #0
VNEGNE.F32      S5, S5
CMP             R6, #0
VMUL.F32        S1, S4, S7
VNEGNE.F32      S3, S3
VMUL.F32        S9, S4, S8
VMUL.F32        S10, S6, S8
VMUL.F32        S8, S8, S7
VNEG.F32        S12, S5
VMUL.F32        S0, S6, S3
VMUL.F32        S2, S4, S3
VMUL.F32        S3, S3, S7
VMUL.F32        S6, S6, S7
VSTR            S8, [SP,#0xE8+var_A8]
VMOV.F32        S11, S0
VSTR            S3, [SP,#0xE8+var_98]
VSTR            S6, [SP,#0xE8+var_84]
VSTR            S1, [SP,#0xE8+var_80]
VMLA.F32        S11, S9, S5
VMLA.F32        S9, S0, S5
VMOV.F32        S0, S2
VNMLS.F32       S0, S10, S5
VNMLS.F32       S10, S2, S5
VSTR            S0, [SP,#0xE8+var_A4]
VSTR            S11, [SP,#0xE8+var_A0]
VSTR            S12, [SP,#0xE8+var_88]
VSTM            R0, {S9-S10}
STR             R7, [SP,#0xE8+var_9C]
STR             R7, [SP,#0xE8+var_8C]
ADD             R2, SP, #0xE8+var_50
ADD             R1, SP, #0xE8+var_A8
ADD             R0, SP, #0xE8+var_6C
STR             R7, [SP,#0xE8+var_7C]
BL              sub_1169FC
ADD             R1, SP, #0xE8+var_68
VLDM            R1, {S0-S1}
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S1, =4.7124
UXTH            R0, R0
VMOV            S0, R0
VNEG.F32        S2, S16
