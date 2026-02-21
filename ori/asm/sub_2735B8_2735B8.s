PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R4, R5, #0x580
LDR             R0, =off_6CDF98
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
LDM             R4, {R4,R7}
SUB             SP, SP, #0xF0
LDR             R6, [R0,#0x124]
CMP             R4, R7
BEQ             loc_27360C
LDR             R0, [R4]
ADD             R1, R5, #0x34 ; '4'
BL              sub_27C598
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_27CC94
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_2735E8
LDR             R2, [R5,#0x70]
MOV             R1, #0
STR             R1, [SP,#0x118+var_F4]
STR             R2, [SP,#0x118+var_F8]
STR             R1, [SP,#0x118+var_F0]
STR             R1, [SP,#0x118+var_EC]
STR             R1, [SP,#0x118+var_E8]
LDR             R2, [R5,#0x74]
STR             R1, [SP,#0x118+var_E0]
STR             R1, [SP,#0x118+var_DC]
STR             R2, [SP,#0x118+var_E4]
STR             R1, [SP,#0x118+var_D8]
STR             R1, [SP,#0x118+var_D4]
LDR             R0, [R5,#0x78]
VLDR            S0, =1.0
VLDR            S16, =0.0
STRD            R0, R1, [SP,#0x118+var_D0]
VLDR            S1, [R5,#0x70]
VLDR            S2, [R6,#0x2D8]
ADD             R1, SP, #0x118+var_114
VSUB.F32        S1, S1, S0
VMLA.F32        S0, S1, S2
VSTR            S0, [SP,#0x118+var_F8]
LDR             R0, [R5,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x118+var_114]
STR             R2, [SP,#0x118+var_118]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x118+var_110]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x118+var_118]
ADD             R1, SP, #0x118+var_F8
BL              sub_27D6E4
LDR             R1, [SP,#0x118+var_110]
ADD             R0, SP, #0x118+var_114
CMP             R1, R0
BNE             loc_2736C0
LDR             R0, [SP,#0x118+var_118]
CMP             R0, #0
BEQ             loc_2736C0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x118+var_114]
MOV             R6, #0
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R5,#4]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_273964
LDR             R0, [R5,#0x584]
ADD             R1, SP, #0x118+var_F4
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x118+var_F4]
STR             R2, [SP,#0x118+var_F8]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x118+var_F0]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0x118+var_F0]
LDR             R4, [SP,#0x118+var_F8]
ADD             R0, SP, #0x118+var_F4
CMP             R1, R0
BNE             loc_273730
MOVS            R0, R4
BEQ             loc_273730
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x118+var_F4]
VMOV.F32        S17, S16
MOV             R3, #0
MOV             R12, R3
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x400
ADD             R1, SP, #0x118+var_E0
VLDR            S0, [R0,#0xC4]
VLDR            S2, [R0,#0xC8]
VLDR            S1, [R0,#0xCC]
VNEG.F32        S0, S0
MOV             R0, #0x3F800000
STM             R1, {R0,R6}
VNEG.F32        S2, S2
STR             R6, [SP,#0x118+var_D8]
VSTR            S0, [SP,#0x118+var_D4]
ADD             R1, SP, #0x118+var_CC
STR             R6, [SP,#0x118+var_D0]
STM             R1, {R0,R6}
VNEG.F32        S1, S1
VSTR            S2, [SP,#0x118+var_C4]
STR             R6, [SP,#0x118+var_C0]
STR             R0, [SP,#0x118+var_B8]
STR             R6, [SP,#0x118+var_BC]
VSTR            S1, [SP,#0x118+var_B4]
VLDR            S0, [R5,#4]
VLDR            S1, =40.744
LDR             R0, =0x47800000
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S0
MOVCC           R8, #1
MOVCS           R8, #0
VMOV            R1, S2
CMP             R1, R0
VLDRGE          S0, =65536.0
BLT             loc_2737DC
VSUB.F32        S2, S2, S0
VMOV            R1, S2
CMP             R1, R0
BGE             loc_2737CC
VCVT.U32.F32    S0, S16
CMP             R3, #0
VMOV            R0, S0
VCVT.U32.F32    S0, S17
UXTH            R0, R0
VMOV            R1, S0
VCVT.U32.F32    S0, S2
UXTH            R1, R1
AND             R9, R1, #0xFF
VMOV            R2, S0
VMOV            S0, R0
AND             R0, R0, #0xFF
UXTH            R2, R2
AND             R10, R2, #0xFF
VCVT.F32.U32    S1, S0
VMOV            S0, R1
VCVT.F32.U32    S3, S0
VMOV            S0, R2
LDR             R2, =flt_697140
ADD             R1, R2, R0,LSL#4
ADD             R0, R2, R9,LSL#4
VCVT.F32.U32    S4, S0
VSUB.F32        S0, S16, S1
ADD             R2, R2, R10,LSL#4
VSUB.F32        S1, S17, S3
VLDR            S3, [R0]
VLDR            S5, [R0,#4]
ADD             R0, R0, #8
VLDR            S7, [R2]
VLDR            S6, [R2,#4]
ADD             R2, R2, #8
VSUB.F32        S2, S2, S4
VLDM            R1!, {S4}
VLDM            R1, {S8-S10}
VLDM            R0, {S11-S12}
ADD             R0, SP, #0x118+var_A4
VMLA.F32        S4, S0, S9
VLDM            R2, {S13-S14}
VMLA.F32        S3, S1, S11
VMLA.F32        S8, S0, S10
VMLA.F32        S5, S1, S12
VMLA.F32        S7, S2, S13
VMLA.F32        S6, S2, S14
ADD             R2, SP, #0x118+var_E0
VNEGNE.F32      S4, S4
CMP             R12, #0
VNEGNE.F32      S3, S3
CMP             R8, #0
VNEGNE.F32      S7, S7
VMUL.F32        S1, S4, S6
VMUL.F32        S2, S8, S6
VMUL.F32        S10, S4, S5
VMUL.F32        S6, S6, S5
VNEG.F32        S11, S3
VMUL.F32        S0, S8, S7
VMUL.F32        S9, S4, S7
VMUL.F32        S7, S7, S5
VMUL.F32        S8, S8, S5
VSTR            S6, [SP,#0x118+var_A8]
VMOV.F32        S4, S0
VMOV.F32        S5, S9
VSTR            S7, [SP,#0x118+var_98]
VSTR            S10, [SP,#0x118+var_84]
VSTR            S8, [SP,#0x118+var_80]
VNMLS.F32       S4, S1, S3
VMLA.F32        S5, S2, S3
VNMLS.F32       S1, S0, S3
VMLA.F32        S2, S9, S3
VSTR            S1, [SP,#0x118+var_90]
VSTR            S2, [SP,#0x118+var_94]
VSTR            S11, [SP,#0x118+var_88]
VSTM            R0, {S4-S5}
STR             R6, [SP,#0x118+var_9C]
STR             R6, [SP,#0x118+var_8C]
STR             R6, [SP,#0x118+var_7C]
ADD             R1, SP, #0x118+var_A8
ADD             R0, SP, #0x118+var_78
BL              sub_141F30
LDR             R1, [R4,#0x4C4]
ADD             R2, SP, #0x118+var_E0
STR             R1, [SP,#0x118+var_D4]
LDR             R1, [R4,#0x4C8]
STR             R1, [SP,#0x118+var_C4]
LDR             R0, [R4,#0x4CC]
ADD             R1, SP, #0x118+var_78
STR             R0, [SP,#0x118+var_B4]
MOV             R0, R1
BL              sub_141F30
ADD             R6, SP, #0x118+var_78
ADD             R0, R4, #0x5D0
MOV             R2, R0
MOV             R1, R6
BL              sub_1169FC
ADD             R2, R4, #0x400
ADD             R2, R2, #0x1F4
MOV             R1, R6
MOV             R0, R2
BL              sub_1169FC
ADD             R5, R5, #0x400
ADD             R5, R5, #0xCC
LDR             R4, [R5,#0xB4]
CMP             R4, R7
BEQ             loc_27398C
LDR             R0, [R4]
BL              sub_27CBB8
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_273978
LDR             R6, [R5,#0xB4]
CMP             R6, R7
BEQ             loc_2739F0
LDR             R8, [R6]
ADD             R4, R8, #0x6F0
LDM             R4, {R4,R5}
CMP             R4, R5
BEQ             loc_2739E4
MOV             R1, R8
B               loc_2739D0
DCD off_6CDF98
DCFS 0.0
DCFS 1.0
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
LDR             R0, [R4]
BL              sub_26A1F0
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2739AC
ADD             R6, R6, #0xC
CMP             R6, R7
BNE             loc_273998
ADD             SP, SP, #0xF0
VPOP            {D8}
POP             {R4-R10,PC}
