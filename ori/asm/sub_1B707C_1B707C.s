PUSH            {R4-R9,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R7, #0
VLDR            S2, =0.00097656
MOV             R9, #0
VPUSH           {D8-D13}
VMOV.F32        S25, S0
SUB             SP, SP, #0x164
LDRH            R0, [R1,#0x14]
VLDR            S19, =6.2832
VLDR            S23, =-1.0
CMP             R0, #0
LDRSH           R0, [R4,#0x1A]
VLDR            S22, =1.0
LDRSH           R1, [R4,#2]
VMOV            S1, R0
LDRSH           R0, [R4]
VMOVNE.F32      S0, S23
VMOVEQ.F32      S0, S22
LDRSH           R2, [R4,#4]
VLDR            S20, =0.0
VCVT.F32.S32    S1, S1
VMOV            S3, R2
VMOV.F32        S21, S20
VCVT.F32.S32    S3, S3
VMUL.F32        S1, S1, S2
VMOV            S2, R1
LDRSH           R1, [R4,#0x18]
VMOV            S4, R1
VCVT.F32.S32    S2, S2
VMUL.F32        S16, S1, S19
VMOV            S1, R0
LDRSH           R0, [R4,#0x16]
VSTR            S0, [SP,#0x1B0+var_B8]
VLDR            S0, =40.744
VMOV            S5, R0
VCVT.F32.S32    S18, S4
VCVT.F32.S32    S1, S1
MOV             R0, #0
STR             R0, [SP,#0x1B0+var_B4]
VMUL.F32        S26, S16, S0
VCVT.F32.S32    S17, S5
STR             R0, [SP,#0x1B0+var_B0]
STR             R0, [SP,#0x1B0+var_AC]
STR             R0, [SP,#0x1B0+var_A8]
VSTR            S22, [SP,#0x1B0+var_A4]
STR             R0, [SP,#0x1B0+var_A0]
STR             R0, [SP,#0x1B0+var_9C]
STR             R0, [SP,#0x1B0+var_98]
STR             R0, [SP,#0x1B0+var_94]
VMOV.F32        S0, S26
VSTR            S22, [SP,#0x1B0+var_90]
MOV             R6, R0
STR             R0, [SP,#0x1B0+var_8C]
LDR             R0, =0x47800000
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S0, S26
MOVCC           R8, #1
MOVCS           R8, #0
VABS.F32        S6, S0
VMOV            R1, S6
CMP             R1, R0
VLDRGE          S0, =65536.0
BLT             loc_1B7194
VSUB.F32        S6, S6, S0
VMOV            R3, S6
CMP             R3, R0
BGE             loc_1B7184
VCVT.U32.F32    S0, S21
LDR             R12, =flt_697140
CMP             R6, #0
VMOV            R0, S0
VMOV.F32        S0, S20
UXTH            R0, R0
VCVT.U32.F32    S0, S0
VMOV            R1, S0
VCVT.U32.F32    S0, S6
UXTH            R2, R1
VMOV            S4, R2
AND             R2, R2, #0xFF
VMOV            R1, S0
VMOV            S0, R0
VCVT.F32.U32    S5, S4
AND             R0, R0, #0xFF
UXTH            R1, R1
VMOV            S4, R1
AND             R3, R1, #0xFF
VCVT.F32.U32    S0, S0
ADD             R1, R12, R0,LSL#4
ADD             R0, R12, R2,LSL#4
ADD             R2, R12, R3,LSL#4
VCVT.F32.U32    S7, S4
VLDM            R0!, {S8}
VLDR            S9, [R2]
VLDR            S24, [R2,#8]
VLDM            R0, {S13-S15}
VSUB.F32        S4, S21, S0
VMOV.F32        S0, S20
VLDR            S21, [R2,#4]
ADD             R0, SP, #0x1B0+var_74
VSUB.F32        S6, S6, S7
VLDM            R1!, {S7}
VSUB.F32        S5, S0, S5
VLDM            R1, {S10-S12}
MOV             R1, #0x3F800000
VLDR            S0, [R2,#0xC]
VMLA.F32        S7, S4, S11
VMLA.F32        S10, S4, S12
VMLA.F32        S9, S6, S24
VMLA.F32        S21, S6, S0
VMLA.F32        S8, S5, S14
VMLA.F32        S13, S5, S15
VNEGNE.F32      S7, S7
CMP             R7, #0
VMUL.F32        S5, S10, S21
VNEGNE.F32      S8, S8
CMP             R8, #0
VNEGNE.F32      S9, S9
VMUL.F32        S6, S7, S21
VMUL.F32        S14, S21, S13
VNEG.F32        S15, S8
VMUL.F32        S11, S10, S9
VMUL.F32        S12, S7, S9
VMUL.F32        S9, S9, S13
VMUL.F32        S7, S7, S13
VMUL.F32        S10, S10, S13
VSTR            S14, [SP,#0x1B0+var_88]
VMOV.F32        S0, S11
VMOV.F32        S4, S12
VSTR            S9, [SP,#0x1B0+var_78]
VSTR            S7, [SP,#0x1B0+var_64]
VSTR            S10, [SP,#0x1B0+var_60]
VNMLS.F32       S0, S6, S8
VMLA.F32        S4, S5, S8
VNMLS.F32       S6, S11, S8
VMLA.F32        S5, S12, S8
VSTR            S0, [SP,#0x1B0+var_84]
VSTR            S4, [SP,#0x1B0+var_80]
VSTR            S15, [SP,#0x1B0+var_68]
VSTM            R0, {S5-S6}
MOV             R0, #0
STR             R9, [SP,#0x1B0+var_7C]
STR             R9, [SP,#0x1B0+var_6C]
STR             R9, [SP,#0x1B0+var_5C]
STR             R0, [SP,#0x1B0+var_114]
STR             R1, [SP,#0x1B0+var_118]
STR             R0, [SP,#0x1B0+var_110]
VSTR            S1, [SP,#0x1B0+var_10C]
STRD            R0, R1, [SP,#0x1B0+var_108]
STR             R0, [SP,#0x1B0+var_100]
VSTR            S2, [SP,#0x1B0+var_FC]
STR             R0, [SP,#0x1B0+var_F8]
STRD            R0, R1, [SP,#0x1B0+var_F4]
VSTR            S3, [SP,#0x1B0+var_EC]
ADD             R1, SP, #0x1B0+var_B8
ADD             R0, SP, #0x1B0+var_E8
BL              sub_1169CC
VLDR            S0, [SP,#0x1B0+var_DC]
ADD             R2, SP, #0x1B0+var_E8
ADD             R1, SP, #0x1B0+var_88
VSUB.F32        S0, S0, S17
MOV             R0, R2
VSTR            S0, [SP,#0x1B0+var_DC]
VLDR            S0, [SP,#0x1B0+var_CC]
VSUB.F32        S0, S0, S18
VSTR            S0, [SP,#0x1B0+var_CC]
BL              sub_141F30
VLDR            S0, [SP,#0x1B0+var_DC]
ADD             R2, SP, #0x1B0+var_E8
ADD             R1, SP, #0x1B0+var_118
VADD.F32        S0, S0, S17
MOV             R0, R2
VSTR            S0, [SP,#0x1B0+var_DC]
VLDR            S0, [SP,#0x1B0+var_CC]
VADD.F32        S0, S0, S18
VSTR            S0, [SP,#0x1B0+var_CC]
BL              sub_141F30
ADD             R0, SP, #0x1B0+var_158
ADD             R1, SP, #0x1B0+var_E8
BL              sub_1169CC
VSTR            S20, [SP,#0x1B0+var_120]
VSTR            S20, [SP,#0x1B0+var_124]
VSTR            S20, [SP,#0x1B0+var_128]
VSTR            S22, [SP,#0x1B0+var_11C]
BL              sub_4635D8
ADD             R1, SP, #0x1B0+var_124
VLDM            R0!, {S2}
VLDR            S7, [SP,#0x1B0+var_144]
VLDR            S3, [SP,#0x1B0+var_11C]
VLDR            S10, [SP,#0x1B0+var_128]
VLDR            S14, [SP,#0x1B0+var_140]
VLDR            S5, [SP,#0x1B0+var_13C]
VMLA.F32        S3, S10, S2
VLDM            R1, {S8-S9}
ADD             R1, SP, #0x1B0+var_154
VLDR            S15, [SP,#0x1B0+var_148]
VLDR            S4, [SP,#0x1B0+var_14C]
VLDR            S13, [SP,#0x1B0+var_158]
VLDR            S6, [SP,#0x1B0+var_12C]
VLDR            S21, [SP,#0x1B0+var_138]
VMLA.F32        S5, S15, S2
VLDM            R0, {S0-S1}
VMLA.F32        S4, S13, S2
VMLA.F32        S6, S21, S2
VLDM            R1, {S11-S12}
VMUL.F32        S8, S8, S0
ADD             R1, SP, #0x1B0+var_134
VMUL.F32        S7, S7, S0
VLDM            R1, {S17-S18}
VMUL.F32        S10, S11, S0
VMUL.F32        S0, S17, S0
VMLA.F32        S8, S9, S1
VMLA.F32        S7, S14, S1
VMLA.F32        S10, S12, S1
VMLA.F32        S0, S18, S1
VADD.F32        S3, S8, S3
VADD.F32        S2, S7, S5
VADD.F32        S1, S10, S4
VADD.F32        S4, S0, S6
VDIV.F32        S0, S22, S3
VMUL.F32        S2, S2, S0
VMUL.F32        S18, S1, S0
VMUL.F32        S21, S4, S0
VMOV.F32        S0, S26
VSUB.F32        S17, S2, S25
BL              sub_464380
VLDR            S24, =18.0
VMLS.F32        S18, S0, S24
VMOV.F32        S0, S26
BL              sub_464318
VMLA.F32        S17, S0, S24
VMUL.F32        S0, S18, S18
VSTR            S18, [R5]
VSTR            S17, [R5,#4]
VSTR            S21, [R5,#8]
VMLA.F32        S0, S17, S17
VMLA.F32        S0, S21, S21
VSQRT.F32       S1, S0
VMOV.F32        S0, S17
VSTR            S1, [R5,#0xC]
VMOV.F32        S1, S18
BL              sub_4645C0
VLDR            S21, =0.024544
VMUL.F32        S0, S0, S21
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S19
VSUB.F32        S0, S16, S0
VSTR            S0, [R5,#0x10]
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
B               loc_1B74A0
DCFS -1.0
DCFS 1.0
DCFS 0.00097656
DCFS 6.2832
DCFS 0.0
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
DCFS 18.0
DCFS 0.024544
VADDCC.F32      S0, S0, S19
VMOV.F32        S1, S18
VSTRCC          S0, [R5,#0x10]
VMOV.F32        S0, S17
BL              sub_4645C0
VMUL.F32        S0, S0, S21
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S19
VSTR            S0, [R5,#0x14]
LDRH            R0, [R4,#0x14]
CMP             R0, #0
VMOVNE.F32      S22, S23
VSTR            S22, [R5,#0x18]
ADD             SP, SP, #0x164
VPOP            {D8-D13}
POP             {R4-R9,PC}
