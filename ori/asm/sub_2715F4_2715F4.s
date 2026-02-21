PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R3, R5, #0x400
ADD             R3, R3, #0x198
ADD             R4, R5, #0x580
VPUSH           {D8-D9}
SUB             SP, SP, #0xF0
LDM             R1, {R0,R2}
LDR             R1, [R1,#8]
VLDR            S18, =1.0
VLDR            S17, =0.0
STR             R1, [R5,#0x5A0]
STM             R3, {R0,R2}
ADD             R0, R5, #0x34 ; '4'
MOV             R2, #0x3F800000
MOV             R3, #0
STRD            R2, R3, [R0]
STR             R3, [R5,#0x3C]
LDR             R12, [R5,#0x598]
STR             R3, [R5,#0x44]
STR             R12, [R5,#0x40]
STRD            R2, R3, [R0,#0x14]
LDR             R12, [R5,#0x59C]
STR             R3, [R5,#0x54]
STR             R12, [R5,#0x50]
STR             R2, [R5,#0x5C]
STR             R3, [R5,#0x58]
LDR             R1, [R5,#0x5A0]
STR             R1, [R0,#0x2C]
LDM             R4, {R4,R7}
CMP             R4, R7
BEQ             loc_271A7C
LDR             R0, =off_6CDF98
LDR             R0, [R0]
LDR             R6, [R0,#0x124]
LDR             R0, [R4]
ADD             R1, R5, #0x34 ; '4'
BL              sub_27C598
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_271680
LDR             R2, [R5,#0x70]
MOV             R1, #0
STR             R1, [SP,#0x120+var_11C]
STR             R2, [SP,#0x120+var_120]
STR             R1, [SP,#0x120+var_118]
STR             R1, [SP,#0x120+var_114]
STR             R1, [SP,#0x120+var_110]
LDR             R2, [R5,#0x74]
STR             R1, [SP,#0x120+var_108]
STR             R1, [SP,#0x120+var_104]
STR             R2, [SP,#0x120+var_10C]
STR             R1, [SP,#0x120+var_100]
STR             R1, [SP,#0x120+var_FC]
LDR             R0, [R5,#0x78]
STRD            R0, R1, [SP,#0x120+var_F8]
VLDR            S0, [R5,#0x70]
VLDR            S1, [R6,#0x2D8]
ADD             R1, SP, #0x120+var_EC
VSUB.F32        S0, S0, S18
VMLA.F32        S18, S0, S1
VSTR            S18, [SP,#0x120+var_120]
LDR             R0, [R5,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x120+var_EC]
STR             R2, [SP,#0x120+var_F0]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x120+var_E8]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x120+var_F0]
MOV             R1, SP
BL              sub_27D6E4
LDR             R1, [SP,#0x120+var_E8]
ADD             R0, SP, #0x120+var_EC
CMP             R1, R0
BNE             loc_271744
LDR             R0, [SP,#0x120+var_F0]
CMP             R0, #0
BEQ             loc_271744
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x120+var_EC]
MOV             R6, #0
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R5,#4]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2719F0
LDR             R0, [R5,#0x584]
ADD             R1, SP, #0x120+var_58
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x120+var_58]
STR             R2, [SP,#0x120+var_5C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x120+var_54]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0x120+var_54]
LDR             R4, [SP,#0x120+var_5C]
ADD             R0, SP, #0x120+var_58
CMP             R1, R0
BNE             loc_2717B4
MOVS            R0, R4
BEQ             loc_2717B4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x120+var_58]
VMOV.F32        S16, S17
MOV             R3, #0
MOV             R12, R3
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x400
ADD             R1, SP, #0x120+var_E0
VLDR            S1, [R0,#0xC4]
VLDR            S0, [R0,#0xC8]
VLDR            S2, [R0,#0xCC]
VNEG.F32        S1, S1
MOV             R0, #0x3F800000
STM             R1, {R0,R6}
VNEG.F32        S0, S0
STR             R6, [SP,#0x120+var_D8]
VSTR            S1, [SP,#0x120+var_D4]
ADD             R1, SP, #0x120+var_CC
STR             R6, [SP,#0x120+var_D0]
STM             R1, {R0,R6}
VNEG.F32        S2, S2
VSTR            S0, [SP,#0x120+var_C4]
STR             R6, [SP,#0x120+var_C0]
STR             R0, [SP,#0x120+var_B8]
STR             R6, [SP,#0x120+var_BC]
VSTR            S2, [SP,#0x120+var_B4]
VLDR            S0, [R5,#4]
VLDR            S1, =40.744
LDR             R0, =0x47800000
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S0
MOVCC           R8, #1
MOVCS           R8, #0
VMOV            R1, S2
CMP             R1, R0
VLDRGE          S0, =65536.0
BLT             loc_271860
VSUB.F32        S2, S2, S0
VMOV            R1, S2
CMP             R1, R0
BGE             loc_271850
VCVT.U32.F32    S0, S17
CMP             R3, #0
VMOV            R0, S0
VCVT.U32.F32    S0, S16
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
VSUB.F32        S0, S17, S1
VLDR            S7, [R1]
VSUB.F32        S1, S16, S3
VLDR            S9, [R1,#4]
ADD             R1, R1, #8
ADD             R2, R2, R10,LSL#4
VLDM            R1, {S12-S13}
VLDR            S6, [R0]
VLDR            S14, [R0,#8]
VSUB.F32        S2, S2, S4
VMLA.F32        S7, S0, S12
VLDR            S8, [R2]
VLDR            S5, [R2,#8]
VMLA.F32        S6, S1, S14
VLDR            S3, [R2,#4]
VLDR            S4, [R2,#0xC]
VMLA.F32        S9, S0, S13
VLDR            S11, [R0,#4]
VLDR            S10, [R0,#0xC]
VMLA.F32        S8, S2, S5
VNEGNE.F32      S7, S7
CMP             R12, #0
VMLA.F32        S3, S2, S4
VNEGNE.F32      S6, S6
CMP             R8, #0
VMLA.F32        S11, S1, S10
VNEGNE.F32      S8, S8
VNEG.F32        S12, S6
VMUL.F32        S1, S9, S3
VMUL.F32        S10, S7, S3
VMUL.F32        S5, S7, S8
VMUL.F32        S0, S9, S8
VMUL.F32        S3, S3, S11
VMUL.F32        S8, S8, S11
VMUL.F32        S7, S7, S11
VMUL.F32        S2, S9, S11
VMOV.F32        S4, S5
VSTR            S3, [SP,#0x120+var_A8]
VSTR            S8, [SP,#0x120+var_98]
VSTR            S7, [SP,#0x120+var_84]
VSTR            S2, [SP,#0x120+var_80]
VMLA.F32        S4, S1, S6
VMLA.F32        S1, S5, S6
VMOV.F32        S5, S0
VNMLS.F32       S5, S10, S6
VNMLS.F32       S10, S0, S6
VSTR            S5, [SP,#0x120+var_A4]
VSTR            S10, [SP,#0x120+var_90]
VSTR            S4, [SP,#0x120+var_A0]
VSTR            S1, [SP,#0x120+var_94]
VSTR            S12, [SP,#0x120+var_88]
STR             R6, [SP,#0x120+var_9C]
STR             R6, [SP,#0x120+var_8C]
ADD             R2, SP, #0x120+var_E0
ADD             R1, SP, #0x120+var_A8
ADD             R0, SP, #0x120+var_118
STR             R6, [SP,#0x120+var_7C]
BL              sub_141F30
LDR             R1, [R4,#0x4C4]
ADD             R2, SP, #0x120+var_E0
STR             R1, [SP,#0x120+var_D4]
LDR             R1, [R4,#0x4C8]
STR             R1, [SP,#0x120+var_C4]
LDR             R0, [R4,#0x4CC]
ADD             R1, SP, #0x120+var_118
STR             R0, [SP,#0x120+var_B4]
MOV             R0, R1
BL              sub_141F30
ADD             R6, SP, #0x120+var_118
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
B               loc_271A18
DCFS 1.0
DCFS 0.0
DCD off_6CDF98
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
LDR             R4, [R5,#0xB4]
CMP             R4, R7
BEQ             loc_271A38
LDR             R0, [R4]
BL              sub_27CBB8
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_271A24
LDR             R6, [R5,#0xB4]
CMP             R6, R7
BEQ             loc_271A7C
LDR             R8, [R6]
ADD             R4, R8, #0x6F0
LDM             R4, {R4,R5}
CMP             R4, R5
BEQ             loc_271A70
LDR             R0, [R4]
MOV             R1, R8
BL              sub_26A1F0
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_271A58
ADD             R6, R6, #0xC
CMP             R6, R7
BNE             loc_271A44
ADD             SP, SP, #0xF0
VPOP            {D8-D9}
POP             {R4-R10,PC}
