PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R4, R1
VPUSH           {D8}
SUB             SP, SP, #0xCC
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BEQ             loc_16D6BC
ADD             R0, R6, #0x2600
ADD             R0, R0, #0x86
ADD             R1, R6, #0x2400
ADD             R1, R1, #0x298
STR             R0, [SP,#0xF8+var_40]
STR             R1, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #1
LDRB            R0, [R1]
BNE             loc_16CE44
CMP             R0, #0
BEQ             loc_16CE44
CMP             R0, #1
BEQ             loc_16CE74
CMP             R0, #2
BEQ             loc_16CE5C
CMP             R0, #3
BEQ             loc_16CE8C
B               loc_16CEAC
VLDR            S0, [R6,#0x10C]
VLDR            S1, [R6,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16CEA0
B               loc_16CEA8
VLDR            S0, [R6,#0x10C]
VLDR            S1, [R6,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_16CEA0
B               loc_16CEA8
VLDR            S0, [R6,#0x108]
VLDR            S1, [R6,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16CEA0
B               loc_16CEA8
VLDR            S0, [R6,#0x108]
VLDR            S1, [R6,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_16CEA8
MOV             R8, #1
B               loc_16CEAC
MOV             R8, #0
VLDR            S17, =0.0
SXTB            R0, R8
CMP             R0, #0
MOVEQ           R4, R2
CMP             R4, #0
ADD             R9, R6, #0x400
BEQ             loc_16D6B0
ADD             R0, R6, #0x650
STR             R0, [SP,#0xF8+var_D0]
ADD             R0, R6, #0x400
ADD             R0, R0, #0x248
STR             R0, [SP,#0xF8+var_3C]
ADD             R0, R6, #0x400
VLDR            S16, =0.5
ADD             R0, R0, #0x258
ADD             R10, SP, #0xF8+var_60
ADD             R5, R6, #0x2400
STR             R0, [SP,#0xF8+var_5C]
ADD             R0, SP, #0xF8+var_84
STMEA           SP, {R0,R10}
LDR             R0, [R6]
ADD             R3, SP, #0xF8+var_88
ADD             R2, SP, #0xF8+var_64
MOV             R1, R4
LDR             R12, [R0,#0x430]
MOV             R0, R6
BLX             R12
CMP             R0, #0
BEQ             loc_16D698
VLDR            S1, [R5,#0x2C4]
VLDR            S0, [R6,#0x118]
VLDR            S5, [R5,#0x2CC]
VLDR            S2, [R6,#0x11C]
VLDR            S4, [R5,#0x2D0]
VLDR            S6, [R5,#0x2C8]
VADD.F32        S3, S0, S1
VADD.F32        S1, S2, S5
VADD.F32        S2, S2, S4
VADD.F32        S0, S0, S6
ADD             R0, SP, #0xF8+var_54
ADD             R7, R4, #0x400
VSTR            S3, [SP,#0xF8+var_58]
VSTM            R0, {S0-S2}
VADD.F32        S4, S1, S2
VADD.F32        S5, S3, S0
ADD             R0, SP, #0xF8+var_48
VMUL.F32        S1, S4, S16
VMUL.F32        S0, S5, S16
VSTM            R0, {S0-S1}
ADD             R0, R5, #0x2C4
VLDR            S0, [R6,#0x10C]
VLDR            S3, [R5,#0x2CC]
VLDR            S2, [R5,#0x2D0]
VLDR            S1, [R6,#0x108]
VADD.F32        S3, S0, S3
VLDM            R0, {S4-S5}
VADD.F32        S2, S0, S2
ADD             R0, SP, #0xF8+var_90
VADD.F32        S4, S1, S4
VADD.F32        S5, S1, S5
VSTR            S3, [SP,#0xF8+var_98]
VSTR            S2, [SP,#0xF8+var_94]
VADD.F32        S1, S3, S2
VADD.F32        S0, S4, S5
VMUL.F32        S1, S1, S16
VMUL.F32        S0, S0, S16
VSTM            R0, {S0-S1}
ADD             R0, SP, #0xF8+var_A0
VSTM            R0, {S4-S5}
ADD             R0, R7, #0x224
VLDR            S1, [R4,#0x118]
VLDR            S8, [R7,#0x234]
VLDR            S0, [R4,#0x11C]
VLDM            R0, {S6-S7}
ADD             R0, SP, #0xF8+var_70
VADD.F32        S6, S1, S6
VADD.F32        S7, S1, S7
VADD.F32        S1, S0, S8
VADD.F32        S8, S6, S7
VADD.F32        S9, S1, S0
VSTR            S1, [SP,#0xF8+var_78]
VSTR            S0, [SP,#0xF8+var_74]
VMUL.F32        S0, S8, S16
VMUL.F32        S1, S9, S16
VSTM            R0, {S0-S1}
ADD             R0, SP, #0xF8+var_80
VSTM            R0, {S6-S7}
ADD             R0, SP, #0xF8+var_E4
VLDR            S1, [R7,#0x224]
VLDR            S6, [R4,#0x108]
VLDR            S8, [R7,#0x228]
VLDR            S7, [R7,#0x234]
VLDR            S0, [R4,#0x10C]
VADD.F32        S1, S6, S1
VADD.F32        S6, S6, S8
VADD.F32        S7, S0, S7
VSTR            S1, [SP,#0xF8+var_E8]
VCMPE.F32       S1, S4
VADD.F32        S8, S1, S6
VADD.F32        S9, S7, S0
VSTR            S0, [SP,#0xF8+var_DC]
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S8, S8, S16
VMUL.F32        S9, S9, S16
VMOVLE.F32      S4, S1
VCMPE.F32       S5, S6
VSTM            R0, {S6-S7}
ADD             R0, SP, #0xF8+var_D8
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S2, S0
VSTM            R0, {S8-S9}
VMOVLE.F32      S5, S6
ADD             R0, R5, #0x2C4
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S3, S7
VMOVCS.F32      S2, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R6,#0x110]
VLDR            S6, [R9,#0x22C]
VLDR            S0, [R4,#0x110]
VLDR            S8, [R7,#0x22C]
VMOVLE.F32      S3, S7
VADD.F32        S9, S1, S6
VADD.F32        S7, S0, S8
VCMPE.F32       S9, S7
VMRS            APSR_nzcv, FPSCR
VLDR            S10, [R7,#0x230]
VMOVCC.F32      S7, S9
VLDR            S9, [R9,#0x230]
VADD.F32        S11, S0, S10
VADD.F32        S12, S1, S9
VCMPE.F32       S12, S11
VMRS            APSR_nzcv, FPSCR
VSUB.F32        S5, S5, S4
VMOVGT.F32      S11, S12
VLDM            R0, {S12-S13}
ADD             R0, R7, #0x224
VLDM            R0, {S14-S15}
VSUB.F32        S4, S13, S12
VSUB.F32        S12, S15, S14
VADD.F32        S4, S4, S12
VCMPE.F32       S4, S5
VMRS            APSR_nzcv, FPSCR
BLS             loc_16D698
VLDR            S4, [R5,#0x2CC]
VLDR            S12, [R5,#0x2D0]
VSUB.F32        S2, S3, S2
VLDR            S5, [R7,#0x234]
VSUB.F32        S3, S4, S12
VADD.F32        S3, S3, S5
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_16D698
VSUB.F32        S2, S9, S6
VSUB.F32        S3, S10, S8
VSUB.F32        S4, S11, S7
VADD.F32        S2, S2, S3
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_16D698
VLDR            S2, [R6,#0x108]
VLDR            S3, [R6,#0x118]
ADD             R1, R6, #0x108
ADD             R0, R6, #0x118
VCMP.F32        S2, S3
VMRS            APSR_nzcv, FPSCR
BNE             loc_16D16C
VLDR            S2, [R1,#4]
VLDR            S3, [R0,#4]
VCMP.F32        S2, S3
VMRS            APSR_nzcv, FPSCR
VLDREQ          S2, [R0,#8]
VCMPEQ.F32      S1, S2
VMRSEQ          APSR_nzcv, FPSCR
MOVEQ           R2, #0
BEQ             loc_16D170
MOV             R2, #1
VLDR            S1, [R4,#0x108]
VLDR            S2, [R4,#0x118]
ADD             R1, R4, #0x108
ADD             R0, R4, #0x118
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_16D1B0
VLDR            S1, [R1,#4]
VLDR            S2, [R0,#4]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#8]
VCMPEQ.F32      S0, S1
VMRSEQ          APSR_nzcv, FPSCR
MOVEQ           R3, #0
BEQ             loc_16D1B4
MOV             R3, #1
LDRB            R0, [SP,#0xF8+var_64]
CMP             R0, #0
BNE             loc_16D1D0
LDRSB           R0, [SP,#0xF8+var_88]
LDRSB           R1, [SP,#0xF8+var_84]
BICS            R0, R0, R1
BEQ             loc_16D1D8
BICS            R0, R3, R2
BEQ             loc_16D244
ADD             R3, SP, #0xF8+var_E8
ADD             R2, SP, #0xF8+var_80
ADD             R1, SP, #0xF8+var_A0
MOV             R0, R6
BL              sub_16A5C4
AND             R1, R0, #8
AND             R2, R0, #2
AND             R3, R0, #0x10
MOV             R1, R1,LSR#2
AND             R0, R0, #0x20 ; ' '
ORR             R1, R1, R2,LSL#2
ORR             R1, R1, R3,LSL#1
ORR             R0, R1, R0,LSR#1
STR             R0, [SP,#0xF8+var_F8]
LDRB            R0, [SP,#0xF8+var_88]
CMP             R0, #0
BEQ             loc_16D39C
MOV             R1, R6
LDR             R3, [SP,#0xF8+var_F8]
MOV             R2, R4
MOV             R0, R1
BL              sub_16DE6C
CMP             R0, #0
BEQ             loc_16D264
B               loc_16D39C
DCFS 0.0
DCFS 0.5
ADD             R3, SP, #0xF8+var_A0
ADD             R2, SP, #0xF8+var_58
ADD             R1, SP, #0xF8+var_E8
MOV             R0, R6
BL              sub_16A5C4
NOP
NOP
B               loc_16D20C
LDR             R0, [SP,#0xF8+var_40]
LDR             R1, [SP,#0xF8+var_F8]
LDRB            R0, [R0]
CMP             R0, #1
MOV             R0, #0
BNE             loc_16D2A8
LDR             R2, [SP,#0xF8+var_A4]
LDRB            R2, [R2]
CMP             R2, #0
BEQ             loc_16D2A8
CMP             R2, #1
BEQ             loc_16D2B0
CMP             R2, #2
BEQ             loc_16D2D4
CMP             R2, #3
BNE             loc_16D318
B               loc_16D2F8
MOV             R0, R1
B               loc_16D318
TST             R1, #2
MOVNE           R0, #0x10
TST             R1, #8
ORRNE           R0, R0, #0x20 ; ' '
TST             R1, #0x10
ORRNE           R0, R0, #8
TST             R1, #0x20
ORRNE           R0, R0, #2
B               loc_16D318
TST             R1, #2
MOVNE           R0, #8
TST             R1, #8
ORRNE           R0, R0, #2
TST             R1, #0x10
ORRNE           R0, R0, #0x20 ; ' '
TST             R1, #0x20
ORRNE           R0, R0, #0x10
B               loc_16D318
TST             R1, #2
MOVNE           R0, #0x20 ; ' '
TST             R1, #8
ORRNE           R0, R0, #0x10
TST             R1, #0x10
ORRNE           R0, R0, #2
TST             R1, #0x20
ORRNE           R0, R0, #8
LDR             R2, [R6,#0x750]
MOV             R3, R6
MOV             R1, R4
CMP             R2, #0
BEQ             loc_16D36C
LDR             R12, [R1,#0x4EC]
TST             R12, #0xE0
BNE             loc_16D344
LDR             R2, [R3,#0x754]
CMP             R2, R1
BNE             loc_16D36C
AND             R12, R12, #0xE0
CMP             R12, #0x80
BNE             loc_16D39C
LDR             R2, [R3,#0x754]
CMP             R2, R1
BNE             loc_16D36C
LDRH            R2, [R9,#0x6C]
LDRH            R12, [R9,#0x6E]
CMP             R2, R12
BEQ             loc_16D39C
STR             R4, [R3,#0x750]
LDR             R2, [R3,#0x658]
MOV             R1, #0xFC0
AND             R0, R1, R0,LSL#6
BIC             R1, R2, #0xFC0
ORR             R0, R0, R1
LDR             R1, [SP,#0xF8+var_5C]
STR             R0, [R1]
LDR             R0, [R6,#0x648]
LDR             R1, [SP,#0xF8+var_3C]
BIC             R0, R0, #0x180000
STR             R0, [R1]
LDRB            R0, [SP,#0xF8+var_60]
CMP             R0, #0
BEQ             loc_16D470
LDR             R3, [SP,#0xF8+var_F8]
AND             R0, R3, #8
AND             R1, R3, #2
MOV             R0, R0,LSR#2
AND             R2, R3, #0x10
ORR             R0, R0, R1,LSL#2
AND             R1, R3, #0x20 ; ' '
ORR             R0, R0, R2,LSL#1
ORR             R3, R0, R1,LSR#1
MOV             R2, R6
MOV             R11, R3
MOV             R1, R4
MOV             R0, R2
BL              sub_16DE6C
CMP             R0, #0
NOP
BNE             loc_16D470
LDR             R2, [R4,#0x750]
MOV             R0, R4
MOV             R1, R6
CMP             R2, #0
BEQ             loc_16D440
LDR             R3, [R1,#0x4EC]
TST             R3, #0xE0
BNE             loc_16D418
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_16D440
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_16D470
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_16D440
LDRH            R2, [R7,#0x6C]
LDRH            R3, [R7,#0x6E]
CMP             R2, R3
BEQ             loc_16D470
STR             R6, [R0,#0x750]
LDR             R12, [R0,#0x658]
MOV             R3, #0xFC0
AND             R3, R3, R11,LSL#6
BIC             R12, R12, #0xFC0
ORR             R3, R3, R12
ADD             R2, R0, #0x400
STR             R3, [R0,#0x658]
LDR             R0, [R4,#0x648]
ADD             R2, R2, #0x248
BIC             R0, R0, #0x180000
STR             R0, [R2]
LDRB            R0, [SP,#0xF8+var_64]
CMP             R0, #0
BEQ             loc_16D698
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #2
BEQ             loc_16D49C
VLDR            S1, [R5,#0x2C8]
VLDR            S0, [SP,#0xF8+var_E8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R6,#0x108]
B               loc_16D4D8
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #8
BEQ             loc_16D4BC
VLDR            S1, [R5,#0x2C4]
VLDR            S0, [SP,#0xF8+var_E4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R6,#0x108]
B               loc_16D4D8
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #0x20
BEQ             loc_16D54C
VLDR            S1, [R5,#0x2D0]
VLDR            S0, [SP,#0xF8+var_E0]
VSUB.F32        S0, S0, S1
VSTR            S0, [R6,#0x10C]
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #0x10
BEQ             loc_16D4F4
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_16D56C
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #8
BEQ             loc_16D510
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #3
BEQ             loc_16D56C
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #0x20
BEQ             loc_16D52C
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_16D56C
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #2
BEQ             loc_16D580
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #1
BEQ             loc_16D56C
B               loc_16D580
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #0x10
BEQ             loc_16D624
VLDR            S1, [R5,#0x2CC]
VLDR            S0, [SP,#0xF8+var_DC]
VSUB.F32        S0, S0, S1
VSTR            S0, [R6,#0x10C]
B               loc_16D4E4
VLDR            S0, [R9,#0xC4]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VNEGGT.F32      S0, S0
VSTRGT          S0, [R9,#0xC4]
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #0x10
BEQ             loc_16D59C
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_16D5F0
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #8
BEQ             loc_16D5B8
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #1
BEQ             loc_16D5F0
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #0x20
BEQ             loc_16D5D4
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_16D5F0
LDR             R0, [SP,#0xF8+var_F8]
TST             R0, #2
BEQ             loc_16D624
LDR             R0, [SP,#0xF8+var_A4]
LDRB            R0, [R0]
CMP             R0, #3
BNE             loc_16D624
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BEQ             loc_16D624
LDR             R0, [R6]
LDR             R1, [R0,#0x220]
MOV             R0, R6
BLX             R1
STR             R4, [R6,#0x740]
LDRB            R0, [R4,#0xDC]
STRB            R0, [R6,#0x65E]
ADD             R7, R6, #0x650
LDR             R0, [SP,#0xF8+var_F8]
LDM             R7, {R7,R11}
MOV             R3, #1
LDRB            R2, [R4,#0xDC]
STR             R0, [SP,#0xF8+var_CC]
MOV             R1, #0
MOV             R0, R3
BL              sub_300CF8
MOV             R3, R1
LDR             R1, [SP,#0xF8+var_D0]
MOV             R2, R0
LDR             R0, [SP,#0xF8+var_CC]
ORR             R2, R2, R7
ORR             R3, R3, R11
STRD            R2, R3, [R1]
LDR             R1, [R6,#0x658]
AND             R0, R0, #0x3F ; '?'
ORR             R1, R1, R0
LDR             R0, [SP,#0xF8+var_5C]
STR             R1, [R0]
LDR             R0, [R6]
LDR             R1, [R0,#0x288]
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
LDR             R1, [R0,#0x28C]
MOV             R0, R6
BLX             R1
SXTB            R0, R8
CMP             R0, #0
LDRNE           R4, [R4,#0xC]
LDREQ           R4, [R4,#0x10]
CMP             R4, #0
BNE             loc_16CEF4
VSTR            S17, [R9,#0x234]
VSTR            S17, [R9,#0x228]
VSTR            S17, [R9,#0x224]
ADD             SP, SP, #0xCC
VPOP            {D8}
POP             {R4-R11,PC}
