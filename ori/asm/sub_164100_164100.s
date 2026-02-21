PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VPUSH           {D8}
SUB             SP, SP, #0x1A8
MOV             R5, R0
BL              sub_5F1964
VLDR            S16, =1.0
CMP             R0, #0
BEQ             loc_16413C
VMOV.F32        S0, S16
MOV             R0, R5
BL              sub_5A176C
VSTR            S0, [R4,#0x94]
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x1EC
MOV             R5, R0
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             loc_164168
VMOV.F32        S0, S16
MOV             R0, R5
BL              sub_5A176C
VSTR            S0, [R4,#0xA4]
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E32F0
MOV             R0, R4
NOP
BL              sub_18DB5C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
LDRB            R0, [R0,#0xA1]
CMP             R0, #2
BNE             loc_164680
MOV             R1, #0
VLDR            S1, =0.0
MOV             R0, #0x3F800000
STRD            R0, R1, [SP,#0x1C8+var_1C0]
STR             R1, [SP,#0x1C8+var_1B8]
VSTR            S1, [SP,#0x1C8+var_1B4]
STR             R1, [SP,#0x1C8+var_1B0]
STRD            R0, R1, [SP,#0x1C8+var_1AC]
VSTR            S16, [SP,#0x1C8+var_1A4]
STR             R1, [SP,#0x1C8+var_1A0]
STR             R0, [SP,#0x1C8+var_198]
STR             R1, [SP,#0x1C8+var_19C]
VSTR            S1, [SP,#0x1C8+var_194]
VLDR            S2, [R4,#0x48]
VLDR            S16, =40.744
VLDR            S0, [R4,#0x4C]
LDR             R0, =0x47800000
VMUL.F32        S2, S2, S16
VMUL.F32        S0, S0, S16
MOV             R2, #0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S2
VCMPE.F32       S0, S1
MOVCC           R1, #1
MOVCS           R1, #0
VMOV            R12, S2
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
VLDR            S3, =65536.0
MOVCC           R3, #1
MOVCS           R3, #0
CMP             R12, R0
BLT             loc_164234
VSUB.F32        S2, S2, S3
VMOV            R12, S2
CMP             R12, R0
BGE             loc_164224
VMOV            R12, S0
CMP             R12, R0
BLT             loc_164250
VSUB.F32        S0, S0, S3
VMOV            R12, S0
CMP             R12, R0
BGE             loc_164240
VMOV            R12, S1
CMP             R12, R0
BLT             loc_16426C
VSUB.F32        S1, S1, S3
VMOV            R12, S1
CMP             R12, R0
BGE             loc_16425C
VCVT.U32.F32    S3, S2
LDR             R8, =flt_697140
CMP             R1, #0
VMOV            R0, S3
VCVT.U32.F32    S3, S0
UXTH            R0, R0
VMOV            R12, S3
VCVT.U32.F32    S3, S1
UXTH            R5, R12
AND             R6, R5, #0xFF
VMOV            R12, S3
VMOV            S3, R0
AND             R0, R0, #0xFF
UXTH            R12, R12
AND             R7, R12, #0xFF
VCVT.F32.U32    S4, S3
VMOV            S3, R5
ADD             R5, R8, R0,LSL#4
ADD             R0, R8, R7,LSL#4
VCVT.F32.U32    S5, S3
VMOV            S3, R12
ADD             R12, R8, R6,LSL#4
VSUB.F32        S6, S2, S4
VLDR            S2, [R5]
VLDR            S4, [R5,#4]
ADD             R5, R5, #8
VCVT.F32.U32    S3, S3
VLDM            R5, {S9-S10}
MOV             R6, #0
VSUB.F32        S7, S0, S5
VLDR            S0, [R12]
VLDR            S5, [R0,#4]
VMLA.F32        S2, S6, S9
VMLA.F32        S4, S6, S10
VSUB.F32        S8, S1, S3
VLDR            S3, [R12,#4]
ADD             R12, R12, #8
VLDR            S1, [R0]
ADD             R0, R0, #8
VLDM            R12, {S11-S12}
VNEGNE.F32      S2, S2
CMP             R3, #0
VLDM            R0, {S13-S14}
VMLA.F32        S0, S7, S11
VMLA.F32        S3, S7, S12
ADD             R0, SP, #0x1C8+var_180
VMLA.F32        S1, S8, S13
VMLA.F32        S5, S8, S14
VNEGNE.F32      S0, S0
CMP             R2, #0
VNEGNE.F32      S1, S1
VMUL.F32        S8, S4, S5
VMUL.F32        S9, S2, S5
VMUL.F32        S5, S5, S3
VNEG.F32        S13, S0
VMUL.F32        S6, S2, S1
VMUL.F32        S10, S4, S1
VMUL.F32        S12, S1, S3
VMUL.F32        S2, S2, S3
VMUL.F32        S1, S4, S3
VMOV.F32        S11, S6
VMOV.F32        S6, S10
VSTR            S12, [SP,#0x1C8+var_170]
VSTR            S2, [SP,#0x1C8+var_15C]
VSTR            S1, [SP,#0x1C8+var_158]
VSTR            S13, [SP,#0x1C8+var_160]
VMOV.F32        S7, S11
VNMLS.F32       S6, S9, S0
VNMLS.F32       S9, S10, S0
VMLA.F32        S7, S8, S0
VMLA.F32        S8, S11, S0
VSTM            R0, {S5-S7}
ADD             R0, SP, #0x1C8+var_16C
VSTM            R0, {S8-S9}
STR             R6, [SP,#0x1C8+var_174]
ADD             R2, SP, #0x1C8+var_1C0
ADD             R1, SP, #0x1C8+var_180
MOV             R0, R2
STR             R6, [SP,#0x1C8+var_164]
STR             R6, [SP,#0x1C8+var_154]
BL              sub_141F30
VLDR            S0, [R4,#0x24]
VLDR            S5, [R4,#0xC]
VLDR            S2, [R4,#0x28]
VLDR            S4, [R4,#0x10]
VLDR            S1, [R4,#0x2C]
VLDR            S3, [R4,#0x14]
VSUB.F32        S0, S0, S5
VSUB.F32        S2, S2, S4
VSUB.F32        S1, S1, S3
ADD             R1, SP, #0x1C8+var_90
ADD             R0, SP, #0x1C8+var_140
VSTR            S0, [SP,#0x1C8+var_90]
VSTR            S2, [SP,#0x1C8+var_8C]
VSTR            S1, [SP,#0x1C8+var_88]
VLDR            S0, [R4,#0x50]
VMUL.F32        S0, S0, S16
BL              sub_4631F0
ADD             R2, SP, #0x1C8+var_1C0
ADD             R1, SP, #0x1C8+var_140
MOV             R0, R2
BL              sub_141F30
LDR             R2, [SP,#0x1C8+var_1B4]
LDR             R0, [SP,#0x1C8+var_1A4]
LDR             R1, [SP,#0x1C8+var_194]
STR             R2, [R4,#0x60]
ADD             R3, SP, #0x1C8+var_CC
STRD            R0, R1, [R4,#0x64]
ADD             R1, R4, #0x64 ; 'd'
MOV             R0, R2
LDM             R1, {R1,R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0xC
ADD             R3, SP, #0x1C8+var_D8
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x24 ; '$'
ADD             R3, SP, #0x1C8+var_150
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R2, SP, #0x1C8+var_D8
ADD             R1, SP, #0x1C8+var_150
ADD             R0, SP, #0x1C8+var_CC
BL              sub_50E688
VLDR            S0, [SP,#0x1C8+var_150]
VLDR            S8, [SP,#0x1C8+var_D8]
VLDR            S6, [SP,#0x1C8+var_148]
VLDR            S1, [SP,#0x1C8+var_D0]
VLDR            S7, [SP,#0x1C8+var_14C]
VLDR            S3, [SP,#0x1C8+var_D4]
VSUB.F32        S2, S0, S8
VSUB.F32        S5, S6, S1
VSUB.F32        S4, S7, S3
ADD             R0, SP, #0x1C8+var_80
MOV             R1, #0x3F800000
VSTR            S2, [SP,#0x1C8+var_84]
VSTM            R0, {S4-S5}
MOV             R0, #0
VLDR            S2, [R4,#0xC]
VSUB.F32        S2, S8, S2
VSTR            S2, [SP,#0x1C8+var_D8]
VLDR            S2, [R4,#0x10]
VSUB.F32        S2, S3, S2
VSTR            S2, [SP,#0x1C8+var_D4]
VLDR            S2, [R4,#0x14]
VSUB.F32        S1, S1, S2
VSTR            S1, [SP,#0x1C8+var_D0]
VLDR            S1, [R4,#0x24]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x1C8+var_150]
VLDR            S0, [R4,#0x28]
VSUB.F32        S0, S7, S0
VSTR            S0, [SP,#0x1C8+var_14C]
VLDR            S0, [R4,#0x2C]
VSUB.F32        S0, S6, S0
VSTR            S0, [SP,#0x1C8+var_148]
B               loc_1644FC
DCFS 1.0
DCD off_6D1648
DCFS 0.0
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
LDR             R2, [SP,#0x1C8+var_D8]
ADD             R3, SP, #0x1C8+var_B0
STR             R0, [SP,#0x1C8+var_BC]
STR             R1, [SP,#0x1C8+var_C0]
STR             R0, [SP,#0x1C8+var_B8]
STR             R2, [SP,#0x1C8+var_B4]
STM             R3, {R0,R1}
ADD             R3, SP, #0x1C8+var_9C
LDR             R2, [SP,#0x1C8+var_D4]
STR             R0, [SP,#0x1C8+var_A8]
STR             R0, [SP,#0x1C8+var_A0]
STR             R2, [SP,#0x1C8+var_A4]
STM             R3, {R0,R1}
LDR             R0, [SP,#0x1C8+var_D0]
STR             R1, [SP,#0x1C8+var_108]
STR             R0, [SP,#0x1C8+var_94]
MOV             R0, #0
STR             R0, [SP,#0x1C8+var_100]
LDR             R2, [SP,#0x1C8+var_150]
STR             R0, [SP,#0x1C8+var_104]
STRD            R0, R1, [SP,#0x1C8+var_F8]
STR             R2, [SP,#0x1C8+var_FC]
LDR             R2, [SP,#0x1C8+var_14C]
STR             R0, [SP,#0x1C8+var_F0]
STR             R0, [SP,#0x1C8+var_E8]
STR             R2, [SP,#0x1C8+var_EC]
STRD            R0, R1, [SP,#0x1C8+var_E4]
VSTR            S0, [SP,#0x1C8+var_DC]
VLDR            S0, [R4,#0x50]
ADD             R0, SP, #0x1C8+var_78
ADD             R1, SP, #0x1C8+var_84
VMUL.F32        S0, S0, S16
BL              sub_4631F0
ADD             R2, SP, #0x1C8+var_C0
ADD             R1, SP, #0x1C8+var_78
MOV             R0, R2
BL              sub_141F30
ADD             R2, SP, #0x1C8+var_108
ADD             R1, SP, #0x1C8+var_78
MOV             R0, R2
BL              sub_141F30
ADD             R1, R4, #0xC
VLDR            S2, [SP,#0x1C8+var_94]
VLDR            S0, [SP,#0x1C8+var_B4]
VLDR            S1, [SP,#0x1C8+var_A4]
ADD             R3, SP, #0x1C8+var_CC
VLDM            R1, {S3-S5}
ADD             R1, SP, #0x1C8+var_D8
ADD             R7, SP, #0x1C8+var_190
ADD             R5, SP, #0x1C8+var_150
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTM            R1, {S0-S2}
ADD             R1, R4, #0x24 ; '$'
VLDR            S1, [SP,#0x1C8+var_FC]
VLDR            S0, [SP,#0x1C8+var_EC]
VLDR            S2, [SP,#0x1C8+var_DC]
VLDM            R1, {S3-S5}
VADD.F32        S1, S3, S1
VADD.F32        S0, S4, S0
VADD.F32        S2, S5, S2
VSTR            S1, [SP,#0x1C8+var_150]
VSTR            S0, [SP,#0x1C8+var_14C]
VSTR            S2, [SP,#0x1C8+var_148]
LDM             R3, {R0-R2}
ADD             R3, SP, #0x1C8+var_190
LDR             R12, [R4,#0xC0]
STM             R7, {R0-R2}
MOV             R1, R3
MOV             R0, R12
BL              sub_4C56EC
LDR             R0, [R4,#0xC0]
MOV             R1, R5
BL              sub_4C57D8
LDR             R0, [R4,#0xC0]
LDR             R1, [SP,#0x1C8+var_D8]
STR             R1, [R0,#0x98]
LDR             R1, [SP,#0x1C8+var_D4]
STR             R1, [R0,#0xA8]
LDR             R1, [SP,#0x1C8+var_D0]
STR             R1, [R0,#0xB8]
LDR             R0, [R4,#0xC0]
BL              sub_4C5864
MOV             R0, #1
STR             R0, [SP,#0x1C8+var_1C4]; float
ADD             R0, R4, #0x14400
STR             R6, [SP,#0x1C8+var_1C8]; int
VLDR            S1, [R4,#0xA8]
VLDR            S2, [R0,#0x210]
ADD             R1, R4, #0xC4
LDR             R3, [R4,#0xC0]; int
VMUL.F32        S1, S1, S2
LDM             R1, {R1,R2}; int
ADD             R0, R4, #0xCC; int
VLDR            S0, [R4,#0xA4]
BL              sub_59C830
ADD             SP, SP, #0x1A8
VPOP            {D8}
POP             {R4-R8,PC}
