PUSH            {R4-R9,LR}
MOV             R8, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x9C
MOV             R7, #0
LDR             R0, [R8,#0x584]
LDR             R6, [R8,#0x580]
CMP             R0, R6
BEQ             loc_26E690
MOV             R9, #0
VLDR            S18, =1.0
VLDR            S17, =0.0
LDR             R0, [R6]
LDRB            R1, [R0,#0x708]
CMP             R1, #0
BEQ             loc_26E264
ADD             R0, R0, #0x6F0
MOV             R1, #0
LDM             R0, {R4,R5}
CMP             R4, R5
BEQ             loc_26E264
LDR             R0, [R4]
LDRB            R2, [R0,#0xE]
CMP             R2, #0
BEQ             loc_26E250
LDRB            R2, [R0,#0xC]
CMP             R2, #0
MOVEQ           R2, #1
BEQ             loc_26E1C0
CMP             R2, #3
MOVNE           R2, #0
BEQ             loc_26E250
CMP             R2, #0
BNE             loc_26E250
STRB            R9, [R0,#0xE]
LDR             R3, [R0]
VMOV.F32        S0, S18
VMOV.F32        S16, S17
ADD             R2, R3, #0x6F0
LDM             R2, {R0,R2}
CMP             R0, R2
BEQ             loc_26E228
LDR             R1, [R0]
LDRB            R12, [R1,#0xE]
CMP             R12, #0
BEQ             loc_26E21C
VLDR            S1, [R1,#0x10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R1,#0x14]
VMOVGT.F32      S0, S1
VCMPE.F32       S16, S2
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S2, S16
VMOV.F32        S16, S2
ADD             R0, R0, #0xC
CMP             R0, R2
BNE             loc_26E1E8
ADD             R0, R3, #0x400
VSTR            S0, [R0,#0x70]
VSTR            S16, [R0,#0x74]
LDR             R0, [R3,#0x71C]
CMP             R0, #0
BEQ             loc_26E24C
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
MOV             R1, #1
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_26E194
CMP             R1, #0
MOVNE           R7, #1
LDR             R0, [R8,#0x584]
ADD             R6, R6, #0xC
CMP             R0, R6
BNE             loc_26E170
CMP             R7, #0
BEQ             loc_26E690
LDR             R0, =off_6CDF98
ADD             R4, R8, #0x580
LDM             R4, {R4,R7}
LDR             R0, [R0]
CMP             R4, R7
LDR             R5, [R0,#0x124]
BEQ             loc_26E2B0
LDR             R0, [R4]
ADD             R1, R8, #0x34 ; '4'
BL              sub_27C598
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_26E298
LDR             R2, [R8,#0x70]
MOV             R1, #0
STR             R1, [SP,#0xC8+var_C4]
STR             R2, [SP,#0xC8+var_C8]
STR             R1, [SP,#0xC8+var_C0]
STR             R1, [SP,#0xC8+var_BC]
STR             R1, [SP,#0xC8+var_B8]
LDR             R2, [R8,#0x74]
STR             R1, [SP,#0xC8+var_B0]
STR             R1, [SP,#0xC8+var_AC]
STR             R2, [SP,#0xC8+var_B4]
STR             R1, [SP,#0xC8+var_A8]
STR             R1, [SP,#0xC8+var_A4]
LDR             R0, [R8,#0x78]
STRD            R0, R1, [SP,#0xC8+var_A0]
VLDR            S0, [R8,#0x70]
VLDR            S1, [R5,#0x2D8]
ADD             R1, SP, #0xC8+var_94
VSUB.F32        S0, S0, S18
VMLA.F32        S18, S0, S1
VSTR            S18, [SP,#0xC8+var_C8]
LDR             R0, [R8,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0xC8+var_94]
STR             R2, [SP,#0xC8+var_98]
LDR             R2, [R0,#4]
STR             R2, [SP,#0xC8+var_90]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0xC8+var_98]
MOV             R1, SP
BL              sub_27D6E4
LDR             R1, [SP,#0xC8+var_90]
ADD             R0, SP, #0xC8+var_94
CMP             R1, R0
BNE             loc_26E35C
LDR             R0, [SP,#0xC8+var_98]
CMP             R0, #0
BEQ             loc_26E35C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0xC8+var_94]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [R8,#4]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_26E620
LDR             R0, [R8,#0x584]
ADD             R1, SP, #0xC8+var_34
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0xC8+var_34]
STR             R2, [SP,#0xC8+var_38]
LDR             R2, [R0,#4]
STR             R2, [SP,#0xC8+var_30]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R1, [SP,#0xC8+var_30]
LDR             R4, [SP,#0xC8+var_38]
ADD             R0, SP, #0xC8+var_34
CMP             R1, R0
BNE             loc_26E3C8
MOVS            R0, R4
BEQ             loc_26E3C8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0xC8+var_34]
MOV             R3, #0
MOV             R12, R3
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R4, #0x400
ADD             R1, SP, #0xC8+var_B4
VLDR            S0, [R0,#0xC4]
VLDR            S2, [R0,#0xC8]
VLDR            S1, [R0,#0xCC]
VNEG.F32        S0, S0
MOV             R0, #0x3F800000
STMEA           SP, {R0,R9}
VNEG.F32        S3, S2
STR             R9, [SP,#0xC8+var_C0]
VSTR            S0, [SP,#0xC8+var_BC]
STR             R9, [SP,#0xC8+var_B8]
STM             R1, {R0,R9}
VNEG.F32        S2, S1
VSTR            S3, [SP,#0xC8+var_AC]
STR             R9, [SP,#0xC8+var_A8]
STR             R0, [SP,#0xC8+var_A0]
STR             R9, [SP,#0xC8+var_A4]
VSTR            S2, [SP,#0xC8+var_9C]
VLDR            S0, [R8,#4]
VLDR            S2, =40.744
VMOV.F32        S1, S17
LDR             R0, =0x47800000
VMUL.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S0
MOVCC           R5, #1
MOVCS           R5, #0
VMOV            R1, S2
CMP             R1, R0
VLDRGE          S0, =65536.0
BLT             loc_26E470
VSUB.F32        S2, S2, S0
VMOV            R1, S2
CMP             R1, R0
BGE             loc_26E460
VCVT.U32.F32    S0, S17
CMP             R3, #0
VMOV            R0, S0
VCVT.U32.F32    S0, S1
UXTH            R0, R0
VMOV            R1, S0
VCVT.U32.F32    S0, S2
UXTH            R1, R1
VMOV            R2, S0
VMOV            S0, R0
AND             R0, R0, #0xFF
UXTH            R2, R2
AND             R6, R2, #0xFF
VCVT.F32.U32    S4, S0
VMOV            S0, R1
AND             R1, R1, #0xFF
VCVT.F32.U32    S3, S0
VMOV            S0, R2
LDR             R2, =flt_697140
ADD             R0, R2, R0,LSL#4
ADD             R1, R2, R1,LSL#4
VCVT.F32.U32    S5, S0
VSUB.F32        S0, S17, S4
VLDR            S6, [R0]
VSUB.F32        S1, S1, S3
VLDR            S13, [R0,#0xC]
ADD             R0, R0, #4
ADD             R2, R2, R6,LSL#4
VLDM            R0, {S7-S8}
VLDR            S3, [R1]
VLDR            S14, [R1,#8]
VSUB.F32        S2, S2, S5
VMLA.F32        S6, S0, S8
VLDR            S5, [R2]
VLDR            S11, [R2,#8]
VMLA.F32        S3, S1, S14
VLDR            S12, [R2,#4]
VLDR            S10, [R2,#0xC]
VLDR            S4, [R1,#4]
VLDR            S9, [R1,#0xC]
VMLA.F32        S7, S0, S13
VMLA.F32        S5, S2, S11
VNEGNE.F32      S6, S6
CMP             R12, #0
VMLA.F32        S12, S2, S10
VNEGNE.F32      S3, S3
CMP             R5, #0
VMLA.F32        S4, S1, S9
VNEGNE.F32      S5, S5
VNEG.F32        S11, S3
VMUL.F32        S10, S6, S5
B               loc_26E55C
DCFS 1.0
DCFS 0.0
DCD off_6CDF98
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
VMUL.F32        S2, S7, S5
VMUL.F32        S8, S6, S12
VMUL.F32        S9, S7, S12
VMUL.F32        S0, S6, S4
VMUL.F32        S12, S12, S4
VMUL.F32        S5, S5, S4
VMUL.F32        S1, S7, S4
VMOV.F32        S4, S10
ADD             R0, SP, #0xC8+var_44
MOV             R2, SP
VMOV.F32        S6, S2
ADD             R1, SP, #0xC8+var_68
VMLA.F32        S4, S9, S3
VMLA.F32        S9, S10, S3
VSTR            S12, [SP,#0xC8+var_68]
VNMLS.F32       S6, S8, S3
VNMLS.F32       S8, S2, S3
VSTR            S5, [SP,#0xC8+var_58]
VSTR            S6, [SP,#0xC8+var_64]
VSTR            S8, [SP,#0xC8+var_50]
VSTR            S4, [SP,#0xC8+var_60]
VSTR            S9, [SP,#0xC8+var_54]
VSTR            S11, [SP,#0xC8+var_48]
VSTM            R0, {S0-S1}
ADD             R0, SP, #0xC8+var_98
STR             R9, [SP,#0xC8+var_5C]
STR             R9, [SP,#0xC8+var_4C]
STR             R9, [SP,#0xC8+var_3C]
BL              sub_141F30
LDR             R1, [R4,#0x4C4]
MOV             R2, SP
STR             R1, [SP,#0xC8+var_BC]
LDR             R1, [R4,#0x4C8]
STR             R1, [SP,#0xC8+var_AC]
LDR             R0, [R4,#0x4CC]
ADD             R1, SP, #0xC8+var_98
STR             R0, [SP,#0xC8+var_9C]
MOV             R0, R1
BL              sub_141F30
ADD             R5, SP, #0xC8+var_98
ADD             R0, R4, #0x5D0
MOV             R2, R0
MOV             R1, R5
BL              sub_1169FC
ADD             R2, R4, #0x400
ADD             R2, R2, #0x1F4
MOV             R1, R5
MOV             R0, R2
BL              sub_1169FC
LDR             R4, [R8,#0x580]
ADD             R5, R8, #0x400
ADD             R5, R5, #0xCC
CMP             R4, R7
BEQ             loc_26E648
LDR             R0, [R4]
BL              sub_27CBB8
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_26E634
LDR             R6, [R5,#0xB4]
CMP             R6, R7
BEQ             loc_26E150
LDR             R9, [R6]
ADD             R4, R9, #0x6F0
LDM             R4, {R4,R5}
CMP             R4, R5
BEQ             loc_26E680
LDR             R0, [R4]
MOV             R1, R9
BL              sub_26A1F0
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_26E668
ADD             R6, R6, #0xC
CMP             R6, R7
BNE             loc_26E654
B               loc_26E150
ADD             SP, SP, #0x9C
VPOP            {D8-D9}
POP             {R4-R9,PC}
