PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
VPUSH           {D8-D9}
ADD             R0, R0, #0x4300
SUB             SP, SP, #0x70
LDRB            R0, [R0,#0xFC]
CMP             R0, #0
BEQ             loc_1883D0
LDR             R0, =0x150A1
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_188404
CMP             R0, #1
BNE             loc_1883D0
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x35C
MOV             R5, R1
LDR             R2, [R0,#0x234]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x238]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x39C
MOV             R5, R1
LDR             R2, [R0,#0x24C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x250]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x14000
ADD             R1, R1, #0x3D8
MOV             R5, R1
LDR             R2, [R0,#0x274]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x278]
MOV             R0, R4
BLX             R2
VLDR            S16, =1.0
ADD             R0, R4, #0x14000
ADD             R0, R0, #0x460
VMOV.F32        S0, S16
BL              sub_5A176C
VMOV.F32        S0, S16
ADD             R0, R4, #0x14400
ADD             R0, R0, #0x94
BL              sub_5A2484
ADD             R5, R4, #0x14400
VLDR            S1, =0.5
VLDR            S0, [R5,#0x64]
LDR             R0, =0x401
VMUL.F32        S17, S0, S1
BL              sub_485BDC
ADD             R5, R5, #0x98
ADD             R3, SP, #0x90+var_84
LDM             R5, {R0-R2}
VDIV.F32        S18, S17, S0
VLDR            S1, =0.0
VLDR            S0, =40.744
STM             R3, {R0-R2}
ADD             R3, SP, #0x90+var_78
STM             R3, {R0-R2}
ADD             R0, R4, #0x4C ; 'L'
VSTR            S1, [SP,#0x90+var_70]
VSTR            S1, [SP,#0x90+var_90]
VSTR            S16, [SP,#0x90+var_8C]
VSTR            S1, [SP,#0x90+var_88]
VLDR            S4, [R4,#0x48]
VLDM            R0, {S2-S3}
LDR             R0, =0x47800000
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S4, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
VCMPE.F32       S2, S1
MOVCC           R3, #1
MOVCS           R3, #0
VMOV            R1, S0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S2
VCMPE.F32       S3, S1
MOVCC           R12, #1
MOVCS           R12, #0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S5, S3
VLDR            S1, =65536.0
MOVCC           R5, #1
MOVCS           R5, #0
CMP             R1, R0
BLT             loc_1881A8
VSUB.F32        S0, S0, S1
VMOV            R1, S0
CMP             R1, R0
BGE             loc_188198
VMOV            R1, S2
CMP             R1, R0
BLT             loc_1881C4
VSUB.F32        S2, S2, S1
VMOV            R1, S2
CMP             R1, R0
BGE             loc_1881B4
VMOV            R1, S5
CMP             R1, R0
BLT             loc_1881E0
VSUB.F32        S5, S5, S1
VMOV            R1, S5
CMP             R1, R0
BGE             loc_1881D0
VCVT.U32.F32    S1, S0
LDR             R6, =flt_697140
CMP             R3, #0
VMOV            R0, S1
VCVT.U32.F32    S1, S2
UXTH            R0, R0
VMOV            R1, S1
VCVT.U32.F32    S1, S5
UXTH            R1, R1
VMOV            R2, S1
VMOV            S1, R0
AND             R0, R0, #0xFF
UXTH            R2, R2
ADD             R0, R6, R0,LSL#4
VCVT.F32.U32    S3, S1
VMOV            S1, R1
AND             R1, R1, #0xFF
VLDR            S7, [R0,#4]
ADD             R1, R6, R1,LSL#4
VCVT.F32.U32    S4, S1
VMOV            S1, R2
AND             R2, R2, #0xFF
VSUB.F32        S0, S0, S3
ADD             R2, R6, R2,LSL#4
VLDR            S3, [R1]
VLDR            S8, [R2,#4]
VCVT.F32.U32    S6, S1
VSUB.F32        S1, S2, S4
VLDR            S4, [R1,#4]
ADD             R1, R1, #8
VLDM            R1, {S11-S12}
VSUB.F32        S2, S5, S6
VLDR            S5, [R0]
ADD             R0, R0, #8
VLDR            S6, [R2]
ADD             R2, R2, #8
VLDM            R0, {S9-S10}
VMLA.F32        S3, S1, S11
VMLA.F32        S4, S1, S12
VLDM            R2, {S13-S14}
VMLA.F32        S5, S0, S9
VMLA.F32        S7, S0, S10
ADD             R0, SP, #0x90+var_54
VMLA.F32        S6, S2, S13
VMLA.F32        S8, S2, S14
VNEGNE.F32      S5, S5
CMP             R12, #0
VNEGNE.F32      S3, S3
CMP             R5, #0
VNEGNE.F32      S6, S6
VMUL.F32        S0, S7, S8
VMUL.F32        S1, S5, S8
VMUL.F32        S8, S8, S4
VNEG.F32        S10, S3
VMUL.F32        S2, S5, S6
VMUL.F32        S9, S7, S6
VMUL.F32        S6, S6, S4
VMUL.F32        S5, S5, S4
VMUL.F32        S7, S7, S4
VSTR            S8, [SP,#0x90+var_68]
VMOV.F32        S4, S2
VSTR            S6, [SP,#0x90+var_58]
VSTR            S5, [SP,#0x90+var_44]
VSTR            S7, [SP,#0x90+var_40]
VMLA.F32        S4, S0, S3
VMLA.F32        S0, S2, S3
VMOV.F32        S2, S9
VNMLS.F32       S2, S1, S3
VNMLS.F32       S1, S9, S3
VSTR            S2, [SP,#0x90+var_64]
VSTR            S4, [SP,#0x90+var_60]
VSTR            S10, [SP,#0x90+var_48]
VSTM            R0, {S0-S1}
MOV             R0, #0
STR             R0, [SP,#0x90+var_5C]
MOV             R2, SP
STR             R0, [SP,#0x90+var_4C]
STR             R0, [SP,#0x90+var_3C]
ADD             R1, SP, #0x90+var_68
MOV             R0, R2
BL              sub_1169FC
ADD             R2, SP, #0x90+var_84
ADD             R1, SP, #0x90+var_78
MOV             R0, SP
BL              sub_50E688
ADD             R4, R4, #0x14400
ADD             R4, R4, #0x5C ; '\'
VMOV.F32        S4, S16
VMOV.F32        S3, S18
VNEG.F32        S2, S18
VMOV.F32        S1, S17
VNEG.F32        S0, S17
LDR             R0, [R4]
VLDR            S5, =2000.0
BL              sub_4C66DC
LDMFD           SP, {R2,R3,R12}
ADD             R5, SP, #0x90+var_38
LDR             R0, [R4]
ADD             R1, SP, #0x90+var_38
STM             R5, {R2,R3,R12}
BL              sub_4C56EC
ADD             R1, SP, #0x90+var_78
ADD             R5, SP, #0x90+var_2C
LDM             R1, {R2,R3,R12}
ADD             R1, SP, #0x90+var_2C
LDR             R0, [R4]
STM             R5, {R2,R3,R12}
BL              sub_4C57D8
LDR             R0, [R4]
LDR             R1, [SP,#0x90+var_84]
STR             R1, [R0,#0x98]
LDR             R1, [SP,#0x90+var_80]
STR             R1, [R0,#0xA8]
LDR             R1, [SP,#0x90+var_7C]
STR             R1, [R0,#0xB8]
LDR             R0, [R4]
LDR             R1, [R0,#0x38]
BIC             R1, R1, #2
STR             R1, [R0,#0x38]
LDR             R0, [R4]
BL              sub_4B0068
LDR             R0, [R4]
NOP
BL              sub_4C5864
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D9}
POP             {R4-R6,PC}
DCD 0x150A1
DCFS 1.0
DCFS 0.5
DCD 0x401
DCFS 0.0
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
DCFS 2000.0
ADD             SP, SP, #0x70 ; 'p'
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R6,LR}
NOP
