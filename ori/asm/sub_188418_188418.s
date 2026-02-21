PUSH            {R4-R9,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
SUB             SP, SP, #0xDC
LDRB            R0, [R0,#0xFC]
CMP             R0, #0
BEQ             loc_188A34
ADD             R1, SP, #0xF8+var_30
ADD             R0, R4, #8
BL              sub_5C7AE8
LDR             R0, =0x14290
ADD             R5, R4, #0x14000
ADD             R2, SP, #0xF8+var_30
ADD             R1, SP, #0xF8+var_98
LDRSB           R0, [R0,R4]
STR             R0, [SP,#0xF8+var_F8]
LDRB            R3, [R5,#0x28F]
MOV             R0, R4
BL              sub_2AE650
LDR             R0, =0x14408
LDR             R0, [R0,R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
LDR             R1, =0x1441D
ADD             R0, R4, #0x14400
ADD             R0, R0, #0x1C
LDRB            R2, [R0]
LDRB            R1, [R1,R4]
CMP             R2, R1
BEQ             loc_1884C0
STRB            R1, [R0]
LDR             R0, [R4]
LDR             R2, [R0,#0x288]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, #0xFFFFFFFF
LDR             R2, [R0,#0x28C]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #0x14400
ADD             R0, R0, #0x24 ; '$'
MOV             R6, R0
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             loc_188544
MOV             R0, R6
VLDR            S0, =1.0
BL              sub_5A176C
ADD             R0, R4, #0x14400
VLDR            S1, [R0,#0x28]
VSTR            S1, [R4,#0x94]
VLDR            S2, [R0,#0x20]
LDR             R0, =off_6D1648
VDIV.F32        S0, S1, S2
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#0xF8+var_F8]
LDR             R0, [R0,#0x10]
MOV             R1, SP
STR             R0, [SP,#0xF8+var_F4]
MOV             R0, #0
VMOV.F32        S1, S0
LDR             R2, [R1,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #2
VSTR            S1, [R2,#0xE4]
VSTR            S1, [R2,#0xE8]
VSTR            S1, [R2,#0xEC]
BLT             loc_188524
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x35C
MOV             R8, R1
LDR             R2, [R0,#0x234]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x39C
MOV             R6, R1
LDR             R2, [R0,#0x24C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x3D8
MOV             R7, R1
LDR             R2, [R0,#0x274]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #0x14000
LDRB            R1, [R4,#0xBC]
ADD             R0, R0, #0x2CC
VLDR            S1, [R0]
CMP             R1, #1
BEQ             loc_188A3C
VLDR            S0, [R4,#0xC]
ADD             R2, SP, #0xF8+var_98
ADD             R1, SP, #0xF8+var_80
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xC]
VLDR            S0, [R4,#0x10]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10]
VLDR            S0, [R4,#0x14]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x14]
VLDR            S1, [R4,#0xC]
VLDR            S5, [R4,#0x18]
VLDR            S2, [R4,#0x14]
VLDR            S3, [R4,#0x20]
VSUB.F32        S1, S1, S5
VLDR            S0, [R4,#0x10]
VSUB.F32        S2, S2, S3
VLDR            S3, [SP,#0xF8+var_98]
VLDR            S4, [R4,#0x1C]
VSUB.F32        S0, S0, S4
VADD.F32        S3, S3, S1
VSTR            S3, [SP,#0xF8+var_98]
VLDR            S3, [SP,#0xF8+var_94]
VADD.F32        S1, S3, S1
VSTR            S1, [SP,#0xF8+var_94]
VLDR            S1, [SP,#0xF8+var_90]
VADD.F32        S1, S1, S0
VSTR            S1, [SP,#0xF8+var_90]
VLDR            S1, [SP,#0xF8+var_8C]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xF8+var_8C]
VLDR            S0, [SP,#0xF8+var_88]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xF8+var_88]
VLDR            S0, [SP,#0xF8+var_84]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xF8+var_84]
LDR             R0, [R4]
LDR             R3, [R0,#0x21C]
MOV             R0, R4
BLX             R3
VLDR            S0, [R4,#0xC]
VLDR            S1, [SP,#0xF8+var_80]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xC]
VLDR            S0, [R4,#0x10]
VLDR            S1, [SP,#0xF8+var_7C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10]
VLDR            S0, [R4,#0x14]
VLDR            S1, [SP,#0xF8+var_78]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x14]
LDR             R0, [R4]
MOV             R1, R8
LDR             R2, [R0,#0x238]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R6
LDR             R2, [R0,#0x250]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R7
LDR             R2, [R0,#0x278]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #8
BL              sub_1E51BC
ADD             R0, R4, #0xC
ADD             R3, SP, #0xF8+var_60
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x24 ; '$'
ADD             R3, SP, #0xF8+var_3C
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x60 ; '`'
ADD             R3, SP, #0xF8+var_54
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, =flt_6EA394
VLDR            S5, [R5,#0x2D8]
VLDR            S1, [R0]
VLDR            S2, [R0,#(flt_6EA398 - 0x6EA394)]
VLDR            S0, [R0,#(flt_6EA39C - 0x6EA394)]
ADD             R0, R5, #0x2DC
VMUL.F32        S1, S1, S5
VLDM            R0, {S3-S4}
ADD             R0, SP, #0xF8+var_48
VMUL.F32        S2, S2, S3
VMUL.F32        S0, S0, S4
VLDR            S3, =40.744
VSTR            S0, [SP,#0xF8+var_40]
VSTM            R0, {S1-S2}
ADD             R0, R5, #0x2E4
VLDM            R0, {S0-S2}
LDR             R0, =0x47800000
VMUL.F32        S0, S0, S3
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S3
VLDR            S3, =0.0
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
VCMPE.F32       S1, S3
MOVCC           R2, #1
MOVCS           R2, #0
VMOV            R12, S0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S1, S1
VCMPE.F32       S2, S3
MOVCC           R3, #1
MOVCS           R3, #0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S2
VLDR            S3, =65536.0
MOVCC           R1, #1
MOVCS           R1, #0
CMP             R12, R0
BLT             loc_1887B4
VSUB.F32        S0, S0, S3
VMOV            R12, S0
CMP             R12, R0
BGE             loc_1887A4
VMOV            R12, S1
CMP             R12, R0
BLT             loc_1887D0
VSUB.F32        S1, S1, S3
VMOV            R12, S1
CMP             R12, R0
BGE             loc_1887C0
VMOV            R12, S2
CMP             R12, R0
BLT             loc_1887EC
VSUB.F32        S2, S2, S3
VMOV            R12, S2
CMP             R12, R0
BGE             loc_1887DC
VCVT.U32.F32    S3, S0
CMP             R2, #0
VMOV            R0, S3
VCVT.U32.F32    S3, S1
UXTH            R0, R0
AND             R7, R0, #0xFF
VMOV            R12, S3
VCVT.U32.F32    S3, S2
UXTH            R12, R12
VMOV            R6, S3
VMOV            S3, R0
LDR             R0, =flt_697140
UXTH            R6, R6
AND             R8, R6, #0xFF
VCVT.F32.U32    S4, S3
VMOV            S3, R12
AND             R12, R12, #0xFF
ADD             R12, R0, R12,LSL#4
VCVT.F32.U32    S6, S3
VMOV            S3, R6
ADD             R6, R0, R7,LSL#4
VSUB.F32        S5, S0, S4
VLDR            S4, [R6,#4]
VLDR            S0, [R12]
ADD             R0, R0, R8,LSL#4
VCVT.F32.U32    S3, S3
VLDR            S8, [R0]
VSUB.F32        S6, S1, S6
VLDR            S1, [R6]
ADD             R6, R6, #8
VLDM            R6, {S9-S10}
VSUB.F32        S7, S2, S3
VLDR            S2, [R12,#4]
ADD             R12, R12, #8
VLDR            S3, [R0,#4]
VMLA.F32        S1, S5, S9
VLDM            R12, {S11-S12}
ADD             R0, R0, #8
VMLA.F32        S4, S5, S10
VLDM            R0, {S13-S14}
VMLA.F32        S0, S6, S11
VMLA.F32        S2, S6, S12
VMLA.F32        S8, S7, S13
VMLA.F32        S3, S7, S14
VNEGNE.F32      S1, S1
CMP             R3, #0
VNEGNE.F32      S0, S0
B               loc_1888D8
DCD 0x14290
DCD 0x14408
DCD 0x1441D
DCFS 1.0
DCD off_6D1648
DCD flt_6EA394
DCFS 40.744
DCFS 0.0
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
CMP             R1, #0
VNEGNE.F32      S8, S8
VMUL.F32        S5, S1, S3
VMUL.F32        S9, S4, S3
VMUL.F32        S11, S1, S2
VMUL.F32        S3, S3, S2
VNEG.F32        S12, S0
VMUL.F32        S6, S4, S8
VMUL.F32        S10, S1, S8
VMUL.F32        S8, S8, S2
VMUL.F32        S2, S4, S2
ADD             R0, SP, #0xF8+var_C8
ADD             R2, SP, #0xF8+var_48
ADD             R1, SP, #0xF8+var_D8
VSTR            S3, [SP,#0xF8+var_D8]
VSTR            S11, [SP,#0xF8+var_B4]
VMOV.F32        S1, S6
VMOV.F32        S7, S10
VSTR            S2, [SP,#0xF8+var_B0]
VNMLS.F32       S1, S5, S0
VNMLS.F32       S5, S6, S0
VMLA.F32        S7, S9, S0
VMLA.F32        S9, S10, S0
VSTR            S1, [SP,#0xF8+var_D4]
VSTR            S5, [SP,#0xF8+var_C0]
VSTR            S7, [SP,#0xF8+var_D0]
VSTR            S12, [SP,#0xF8+var_B8]
VSTM            R0, {S8-S9}
MOV             R0, #0
STR             R0, [SP,#0xF8+var_CC]
STR             R0, [SP,#0xF8+var_BC]
STR             R0, [SP,#0xF8+var_AC]
LDR             R0, =flt_6EA394
BL              sub_1169FC
ADD             R2, SP, #0xF8+var_60
ADD             R1, SP, #0xF8+var_3C
ADD             R0, SP, #0xF8+var_54
BL              sub_50E688
ADD             R2, SP, #0xF8+var_54
ADD             R7, SP, #0xF8+var_F0
LDM             R2, {R0,R1,R3}
ADD             R2, SP, #0xF8+var_F0
LDR             R12, [R4,#0xC0]
ADD             R6, SP, #0xF8+var_3C
STM             R7, {R0,R1,R3}
MOV             R1, R2
MOV             R0, R12
BL              sub_4C56EC
LDR             R0, [R4,#0xC0]
MOV             R1, R6
BL              sub_4C57D8
LDR             R0, [R4,#0xC0]
LDR             R1, [SP,#0xF8+var_60]
STR             R1, [R0,#0x98]
LDR             R1, [SP,#0xF8+var_5C]
STR             R1, [R0,#0xA8]
LDR             R1, [SP,#0xF8+var_58]
STR             R1, [R0,#0xB8]
LDR             R0, [R4,#0xC0]
BL              sub_4C5864
LDR             R0, [R4,#0xC0]
ADD             R1, R0, #0x148
ADD             R0, R4, #0x13800
ADD             R0, R0, #0x374
BL              sub_142378
ADD             R2, R4, #0x13800
ADD             R2, R2, #0x374
ADD             R0, R4, #0x13800
LDM             R2, {R2-R4,R6-R9,R12}
LDR             R1, [R5,#0x184]
ADD             LR, R1, #0x8C0
ADD             R1, R1, #0x8E0
STM             LR, {R2-R4,R6-R9,R12}
ADD             R2, R0, #0x394
LDM             R2, {R2-R4,R12}
STM             R1, {R2-R4,R12}
ADD             R2, R0, #0x374
LDR             R1, [R5,#0x188]
LDM             R2, {R2-R4,R6-R9,R12}
ADD             LR, R1, #0x8C0
STM             LR, {R2-R4,R6-R9,R12}
ADD             R2, R0, #0x394
LDR             R0, [R0,#0x3A0]
LDM             R2, {R2,R3,R12}
STR             R0, [R1,#0x8EC]
ADD             R1, R1, #0x8E0
STM             R1, {R2,R3,R12}
ADD             SP, SP, #0xDC
POP             {R4-R9,PC}
VLDR            S0, [R4,#0x24]
ADD             R2, SP, #0xF8+var_98
ADD             R1, SP, #0xF8+var_80
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x2C]
VLDR            S0, [R4,#0x24]
VLDR            S5, [R4,#0x30]
VLDR            S1, [R4,#0x2C]
VLDR            S3, [R4,#0x38]
VSUB.F32        S0, S0, S5
VLDR            S2, [R4,#0x28]
VSUB.F32        S1, S1, S3
VLDR            S3, [SP,#0xF8+var_98]
VLDR            S4, [R4,#0x34]
VSUB.F32        S2, S2, S4
VADD.F32        S3, S3, S0
VSTR            S3, [SP,#0xF8+var_98]
VLDR            S3, [SP,#0xF8+var_94]
VADD.F32        S0, S3, S0
VSTR            S0, [SP,#0xF8+var_94]
VLDR            S0, [SP,#0xF8+var_90]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xF8+var_90]
VLDR            S0, [SP,#0xF8+var_8C]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0xF8+var_8C]
VLDR            S0, [SP,#0xF8+var_88]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF8+var_88]
VLDR            S0, [SP,#0xF8+var_84]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xF8+var_84]
LDR             R0, [R4]
LDR             R3, [R0,#0x21C]
MOV             R0, R4
BLX             R3
VLDR            S0, [R4,#0x24]
VLDR            S1, [SP,#0xF8+var_80]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x24]
VLDR            S0, [R4,#0x28]
VLDR            S1, [SP,#0xF8+var_7C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VLDR            S1, [SP,#0xF8+var_78]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x2C]
B               loc_188690
