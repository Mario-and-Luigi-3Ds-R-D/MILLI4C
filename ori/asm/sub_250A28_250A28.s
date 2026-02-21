PUSH            {R4-R11,LR}
MOV             R4, #0
MOV             R5, R2
MOV             R9, R1
MOV             R10, R0
MOV             R3, R4
VPUSH           {D8-D15}
SUB             SP, SP, #0xD4
MOV             R2, R4
STR             R4, [R0]
STR             R4, [R0,#4]
LDRD            R0, R1, [R9]
MUL             R1, R0, R1
SUB             R0, R0, R0,LSL#2
ADD             R1, R1, R1,LSL#1
MOV             R1, R1,LSL#2
ADD             R6, R1, R0,LSL#1
MOV             R11, R6
MOV             R0, R6,LSL#4
MOV             R1, R5
STR             R0, [SP,#0x138+var_B0]
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_250A98
LDR             R1, =nullsub_343
MOV             R3, R6
MOV             R2, #0x10
BLX             sub_1002F4
MOV             R1, R11,LSL#1
STR             R0, [R10]
STR             R1, [SP,#0x138+var_AC]
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0xC]
MOV             R0, R5
BLX             R3
CMP             R11, #0
STR             R0, [R10,#4]
BEQ             loc_250B0C
AND             R3, R11, #1
CMP             R3, #1
MOV             R1, #0
MOVEQ           R1, #1
STRHEQ          R4, [R0]
CMP             R3, R11
BCS             loc_250B0C
LDR             R0, [R10,#4]
ADD             R3, R3, #2
CMP             R3, R11
ADD             R12, R0, R1,LSL#1
ADD             R0, R1, #1
STRH            R1, [R12]
LDR             R1, [R10,#4]
ADD             R2, R1, R0,LSL#1
ADD             R1, R0, #1
STRH            R0, [R2]
BCC             loc_250AE0
MOV             R0, #0xFFFFFFFF
LDR             R4, [R10]
REV             R0, R0
VLDR            S0, =1.0
STR             R0, [SP,#0x138+var_94]
LDR             R0, [R9,#4]
VLDR            S2, [R9]
VLDR            S3, =6.2832
VMOV            S1, R0
VCVT.F32.U32    S2, S2
VLDR            S17, =0.0
CMP             R0, #0
LDRHI           R6, =0x3F7FFF58
VMOV.F32        S31, S17
VCVT.F32.U32    S4, S1
VMOVHI.F32      S16, S17
VLDR            S19, =0.5
VLDR            S18, =-0.5
MOV             R8, #0
VDIV.F32        S1, S0, S4
VSTR            S1, [SP,#0x138+var_A8]
VDIV.F32        S1, S3, S2
VSTR            S1, [SP,#0x138+var_A4]
BLS             loc_2513B0
VLDR            S0, [SP,#0x138+var_A8]
LDR             R5, [SP,#0x138+var_94]
MOV             R7, #0
VADD.F32        S0, S31, S0
VSTR            S0, [SP,#0x138+var_10C]
VMOV.F32        S0, S16
LDR             R0, [R9]
CMP             R0, #0
BLS             loc_251398
VLDR            S2, [SP,#0x138+var_10C]
VLDR            S1, =1.0
VSUB.F32        S21, S1, S2
VSUB.F32        S20, S1, S31
VSUB.F32        S2, S1, S21
VSUB.F32        S1, S1, S20
VSTR            S2, [SP,#0x138+var_B8]
VSTR            S1, [SP,#0x138+var_C8]
VLDR            S1, [SP,#0x138+var_A4]
VADD.F32        S25, S0, S1
VMOV.F32        S1, S0
VLDR            S0, =40.744
VMUL.F32        S22, S1, S0
VSTR            S22, [SP,#0x138+var_C4]
VMOV.F32        S0, S22
BL              sub_464380
VLDR            S30, =0.5
VMUL.F32        S23, S0, S30
VMOV.F32        S0, S22
BL              sub_464318
VMOV.F32        S1, S17
VLDR            S2, =-0.5
VMOV.F32        S3, S16
VLDR            S29, =0.0
VMUL.F32        S24, S0, S2
VMOV.F32        S0, S16
VMUL.F32        S1, S1, S23
VMOV.F32        S2, S17
VLDR            S27, [SP,#0x138+var_10C]
VLDR            S26, =1.0
VMLA.F32        S1, S19, S0
VMOV.F32        S0, S17
VMLA.F32        S1, S0, S24
VMOV.F32        S0, S1
VMLA.F32        S0, S2, S3
VCMPE.F32       S0, S29
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S26, =-1.0
VMOV            R0, S0
CMP             R0, R6
VMULGT.F32      S1, S26, S27
VMOVGT.F32      S22, S21
BGT             loc_250C7C
BL              sub_5F5B2C
VMOV.F32        S28, S0
NOP
BL              sub_140950
VSTR            S0, [SP,#0x138+var_118]
VMUL.F32        S0, S21, S28
BL              sub_140950
VMOV.F32        S1, S0
VLDR            S0, [SP,#0x138+var_118]
VDIV.F32        S22, S1, S0
VMUL.F32        S0, S27, S28
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S2, S0, S1
VMUL.F32        S1, S2, S26
VMOV.F32        S3, S17
VMOV.F32        S2, S16
VMOV.F32        S4, S17
VMOV.F32        S5, S17
VMOV.F32        S6, S16
VMUL.F32        S27, S19, S22
VMUL.F32        S0, S3, S23
VMUL.F32        S28, S3, S22
VMUL.F32        S26, S4, S22
VLDR            S3, =0.0
VLDR            S29, =1.0
VMLA.F32        S27, S1, S2
VMLA.F32        S0, S19, S2
VMLA.F32        S28, S1, S23
VMLA.F32        S26, S1, S24
VMLA.F32        S0, S4, S24
VMLA.F32        S0, S5, S6
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S29, =-1.0
VMOV            R0, S0
CMP             R0, R6
BGT             loc_250D28
BL              sub_5F5B2C
VSTR            S0, [SP,#0x138+var_134]
NOP
BL              sub_140950
VSTR            S0, [SP,#0x138+var_118]
VLDR            S0, [SP,#0x138+var_134]
VMUL.F32        S0, S20, S0
BL              sub_140950
VMOV.F32        S1, S0
VLDR            S0, [SP,#0x138+var_118]
VDIV.F32        S22, S1, S0
VMOV.F32        S1, S31
VLDR            S0, [SP,#0x138+var_134]
VMUL.F32        S0, S1, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S2, S0, S1
VMUL.F32        S0, S2, S29
B               loc_250D34
VMOV.F32        S0, S31
VMOV.F32        S22, S20
VMUL.F32        S0, S29, S0
VMOV.F32        S1, S17
VMOV.F32        S3, S17
VMUL.F32        S2, S19, S22
VMUL.F32        S1, S1, S22
VMUL.F32        S3, S3, S22
VMLA.F32        S1, S0, S23
VMLA.F32        S3, S0, S24
VSTR            S1, [SP,#0x138+var_78]
VMOV.F32        S1, S16
VMLA.F32        S2, S0, S1
VLDR            S0, =40.744
VMUL.F32        S22, S25, S0
VSTR            S2, [SP,#0x138+var_8C]
VSTR            S3, [SP,#0x138+var_80]
VSTR            S22, [SP,#0x138+var_104]
VMOV.F32        S0, S22
BL              sub_464380
VMOV.F32        S1, S0
VLDR            S0, =0.5
VMUL.F32        S23, S1, S0
VMOV.F32        S0, S22
BL              sub_464318
VMOV.F32        S1, S17
VLDR            S3, =-0.5
VLDR            S30, [SP,#0x138+var_10C]
VLDR            S29, =1.0
VMUL.F32        S24, S0, S3
VMOV.F32        S0, S16
VMUL.F32        S2, S1, S23
VMOV.F32        S3, S17
VLDR            S1, =0.0
VMLA.F32        S2, S19, S0
VMOV.F32        S0, S2
VMOV.F32        S2, S17
VMLA.F32        S0, S3, S24
VMOV.F32        S3, S16
VMLA.F32        S0, S2, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S29, =-1.0
VMOV            R0, S0
CMP             R0, R6
VMULGT.F32      S1, S29, S30
VMOVGT.F32      S22, S21
BGT             loc_250E2C
BL              sub_5F5B2C
VSTR            S0, [SP,#0x138+var_138]
NOP
BL              sub_140950
VSTR            S0, [SP,#0x138+var_118]
VLDR            S0, [SP,#0x138+var_138]
VMUL.F32        S0, S21, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S22, S0, S1
VLDR            S0, [SP,#0x138+var_138]
VMUL.F32        S0, S30, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S2, S0, S1
VMUL.F32        S1, S2, S29
VMOV.F32        S3, S17
VMOV.F32        S2, S16
VMOV.F32        S7, S17
VMOV.F32        S8, S17
VMOV.F32        S9, S16
VLDR            S6, =0.0
VMUL.F32        S0, S3, S23
VMUL.F32        S5, S3, S22
VMUL.F32        S3, S19, S22
VMUL.F32        S4, S7, S22
VLDR            S29, =1.0
VMLA.F32        S0, S19, S2
VMLA.F32        S5, S1, S23
VMLA.F32        S3, S1, S2
VMLA.F32        S4, S1, S24
VMLA.F32        S0, S7, S24
VMOV.F32        S30, S5
VSTR            S3, [SP,#0x138+var_F4]
VSTR            S4, [SP,#0x138+var_70]
VMLA.F32        S0, S8, S9
VCMPE.F32       S0, S6
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S29, =-1.0
VMOV            R0, S0
CMP             R0, R6
BGT             loc_250F04
BL              sub_5F5B2C
VSTR            S0, [SP,#0x138+var_11C]
NOP
BL              sub_140950
VSTR            S0, [SP,#0x138+var_118]
VLDR            S0, [SP,#0x138+var_11C]
VMUL.F32        S0, S20, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S22, S0, S1
VMOV.F32        S1, S31
VLDR            S0, [SP,#0x138+var_11C]
VMUL.F32        S0, S1, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S2, S0, S1
VMUL.F32        S0, S2, S29
B               loc_250F10
DCD nullsub_343
DCFS 0.0
DCFS 0.5
DCFS -0.5
DCFS 1.0
DCFS 6.2832
DCD 0x3F7FFF58
DCFS 40.744
DCFS -1.0
VMOV.F32        S0, S31
VMOV.F32        S22, S20
VMUL.F32        S0, S29, S0
VMOV.F32        S1, S17
VMUL.F32        S2, S19, S22
VMOV.F32        S4, S16
CMP             R8, #0
VMUL.F32        S3, S1, S22
VMUL.F32        S1, S1, S22
VMLA.F32        S2, S0, S4
VMLA.F32        S3, S0, S23
VMLA.F32        S1, S0, S24
BEQ             loc_250F78
VLDR            S0, [SP,#0x138+var_78]
VLDR            S5, [SP,#0x138+var_8C]
VLDR            S4, [SP,#0x138+var_80]
VSTR            S28, [R4]
VSTR            S27, [R4,#4]
VSTR            S26, [R4,#8]
STR             R5, [R4,#0xC]
VSTR            S0, [R4,#0x10]
VSTR            S5, [R4,#0x14]
VSTR            S4, [R4,#0x18]
STR             R5, [R4,#0x1C]
VSTR            S3, [R4,#0x20]
VSTR            S2, [R4,#0x24]
VSTR            S1, [R4,#0x28]
STR             R5, [R4,#0x2C]!
ADD             R4, R4, #4
VMOV.F32        S0, S30
VLDR            S5, [SP,#0x138+var_F4]
VLDR            S4, [SP,#0x138+var_70]
VSTR            S3, [R4]
VSTR            S2, [R4,#4]
VSTR            S1, [R4,#8]
STR             R5, [R4,#0xC]
VSTR            S0, [R4,#0x10]
VSTR            S5, [R4,#0x14]
VSTR            S4, [R4,#0x18]
STR             R5, [R4,#0x1C]
VSTR            S28, [R4,#0x20]
VSTR            S27, [R4,#0x24]
VSTR            S26, [R4,#0x28]
STR             R5, [R4,#0x2C]!
ADD             R4, R4, #4
VLDR            S0, [SP,#0x138+var_C4]
BL              sub_464380
VLDR            S1, =0.5
VMUL.F32        S23, S0, S1
VLDR            S0, [SP,#0x138+var_C4]
BL              sub_464318
VMOV.F32        S1, S17
VLDR            S3, =-0.5
VMOV.F32        S4, S17
VLDR            S26, =1.0
VMUL.F32        S24, S0, S3
VMOV.F32        S0, S16
VMUL.F32        S1, S1, S23
VMOV.F32        S3, S16
VLDR            S2, =0.0
VMOV.F32        S27, S26
VMLA.F32        S1, S18, S0
VMOV.F32        S0, S17
VMLA.F32        S1, S0, S24
VMOV.F32        S0, S1
VMLA.F32        S0, S4, S3
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S27, =-1.0
VMOV            R0, S0
CMP             R0, R6
BGT             loc_251064
BL              sub_5F5B2C
VMOV.F32        S28, S0
NOP
BL              sub_140950
VMOV.F32        S29, S0
VLDR            S0, [SP,#0x138+var_B8]
VMUL.F32        S0, S0, S28
BL              sub_140950
VDIV.F32        S22, S0, S29
VMOV.F32        S0, S21
VMUL.F32        S0, S0, S28
BL              sub_140950
VDIV.F32        S1, S0, S29
VMUL.F32        S1, S1, S27
B               loc_251070
VMOV.F32        S0, S21
VLDR            S22, [SP,#0x138+var_B8]
VMUL.F32        S1, S27, S0
VMOV.F32        S2, S17
VMOV.F32        S3, S16
VMOV.F32        S4, S17
VMOV.F32        S5, S17
VMOV.F32        S6, S16
VMUL.F32        S29, S18, S22
VMUL.F32        S0, S2, S23
VMUL.F32        S30, S2, S22
VMUL.F32        S28, S4, S22
VLDR            S2, =0.0
VLDR            S26, =1.0
VMLA.F32        S29, S1, S3
VMLA.F32        S0, S18, S3
VMLA.F32        S30, S1, S23
VMLA.F32        S28, S1, S24
VMLA.F32        S0, S4, S24
VMLA.F32        S0, S5, S6
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S26, =-1.0
VMOV            R0, S0
CMP             R0, R6
BGT             loc_251118
BL              sub_5F5B2C
VMOV.F32        S27, S0
NOP
BL              sub_140950
VSTR            S0, [SP,#0x138+var_118]
VLDR            S0, [SP,#0x138+var_C8]
VMUL.F32        S0, S0, S27
BL              sub_140950
VMOV.F32        S1, S0
VLDR            S0, [SP,#0x138+var_118]
VDIV.F32        S22, S1, S0
VMOV.F32        S0, S20
VMUL.F32        S0, S0, S27
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S2, S0, S1
VMUL.F32        S0, S2, S26
B               loc_251124
VMOV.F32        S0, S20
VLDR            S22, [SP,#0x138+var_C8]
VMUL.F32        S0, S26, S0
VMOV.F32        S1, S17
VMOV.F32        S3, S17
VMUL.F32        S2, S18, S22
VMUL.F32        S1, S1, S22
VMUL.F32        S27, S3, S22
VMLA.F32        S1, S0, S23
VMLA.F32        S27, S0, S24
VSTR            S1, [SP,#0x138+var_78]
VMOV.F32        S1, S16
VMLA.F32        S2, S0, S1
VSTR            S2, [SP,#0x138+var_8C]
VLDR            S0, [SP,#0x138+var_104]
BL              sub_464380
VLDR            S1, =0.5
VMUL.F32        S23, S0, S1
VLDR            S0, [SP,#0x138+var_104]
BL              sub_464318
VMOV.F32        S1, S17
VLDR            S2, =-0.5
VMOV.F32        S3, S17
VLDR            S26, =1.0
VMUL.F32        S24, S0, S2
VMOV.F32        S0, S16
VMUL.F32        S1, S1, S23
VLDR            S2, =0.0
VMLA.F32        S1, S18, S0
VMOV.F32        S0, S1
VMOV.F32        S1, S17
VMLA.F32        S0, S3, S24
VMOV.F32        S3, S16
VMLA.F32        S0, S1, S3
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S26, =-1.0
VMOV            R0, S0
CMP             R0, R6
BGT             loc_251208
BL              sub_5F5B2C
VSTR            S0, [SP,#0x138+var_134]
NOP
BL              sub_140950
VSTR            S0, [SP,#0x138+var_118]
VLDR            S1, [SP,#0x138+var_B8]
VLDR            S0, [SP,#0x138+var_134]
VMUL.F32        S0, S1, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S22, S0, S1
VMOV.F32        S1, S21
VLDR            S0, [SP,#0x138+var_134]
VMUL.F32        S0, S1, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S2, S0, S1
VMUL.F32        S1, S2, S26
B               loc_251214
VMOV.F32        S0, S21
VLDR            S22, [SP,#0x138+var_B8]
VMUL.F32        S1, S26, S0
VMOV.F32        S5, S17
VMOV.F64        D1, D8
VMOV.F32        S4, S17
VMOV.F32        S6, S16
VMUL.F32        S7, S18, S22
VLDR            S8, =0.0
VMUL.F32        S0, S5, S23
VMUL.F32        S5, S5, S22
VMUL.F32        S9, S3, S22
VLDR            S26, =1.0
VMLA.F32        S7, S1, S2
VMLA.F32        S0, S18, S2
VMLA.F32        S5, S1, S23
VMLA.F32        S9, S1, S24
VMLA.F32        S0, S3, S24
VSTR            S5, [SP,#0x138+var_68]
VSTR            S7, [SP,#0x138+var_F4]
VSTR            S9, [SP,#0x138+var_70]
VMLA.F32        S0, S4, S6
VCMPE.F32       S0, S8
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S0
VLDRCC          S26, =-1.0
VMOV            R0, S0
CMP             R0, R6
BGT             loc_2512CC
BL              sub_5F5B2C
VSTR            S0, [SP,#0x138+var_138]
NOP
BL              sub_140950
VSTR            S0, [SP,#0x138+var_118]
VLDR            S1, [SP,#0x138+var_C8]
VLDR            S0, [SP,#0x138+var_138]
VMUL.F32        S0, S1, S0
BL              sub_140950
VMOV.F32        S1, S0
VLDR            S0, [SP,#0x138+var_118]
VDIV.F32        S22, S1, S0
VMOV.F32        S1, S20
VLDR            S0, [SP,#0x138+var_138]
VMUL.F32        S0, S1, S0
BL              sub_140950
VLDR            S1, [SP,#0x138+var_118]
VDIV.F32        S2, S0, S1
VMUL.F32        S0, S2, S26
B               loc_2512D8
VMOV.F32        S0, S20
VLDR            S22, [SP,#0x138+var_C8]
VMUL.F32        S0, S26, S0
VMOV.F32        S1, S17
VMUL.F32        S2, S18, S22
VMOV.F32        S4, S16
VSTR            S30, [R4]
VSTR            S29, [R4,#4]
VSTR            S28, [R4,#8]
VMUL.F32        S3, S1, S22
VMUL.F32        S1, S1, S22
STR             R5, [R4,#0xC]
VMLA.F32        S2, S0, S4
VLDR            S4, [SP,#0x138+var_78]
VMLA.F32        S3, S0, S23
VMLA.F32        S1, S0, S24
VLDR            S0, [SP,#0x138+var_8C]
VSTR            S4, [R4,#0x10]
VSTR            S0, [R4,#0x14]
VSTR            S27, [R4,#0x18]
STR             R5, [R4,#0x1C]
VSTR            S3, [R4,#0x20]
VSTR            S2, [R4,#0x24]
VSTR            S1, [R4,#0x28]
STR             R5, [R4,#0x2C]
LDR             R1, [R9,#4]
ADD             R4, R4, #0x30 ; '0'
SUB             R1, R1, #1
CMP             R1, R8
BEQ             loc_251384
VLDR            S0, [SP,#0x138+var_68]
VLDR            S5, [SP,#0x138+var_F4]
VLDR            S4, [SP,#0x138+var_70]
VSTR            S3, [R4]
VSTR            S2, [R4,#4]
VSTR            S1, [R4,#8]
STR             R5, [R4,#0xC]
VSTR            S0, [R4,#0x10]
VSTR            S5, [R4,#0x14]
VSTR            S4, [R4,#0x18]
STR             R5, [R4,#0x1C]
VSTR            S30, [R4,#0x20]
VSTR            S29, [R4,#0x24]
VSTR            S28, [R4,#0x28]
STR             R5, [R4,#0x2C]!
ADD             R4, R4, #4
VMOV.F32        S0, S25
LDR             R1, [R9]
ADD             R7, R7, #1
CMP             R1, R7
BHI             loc_250BB0
LDR             R0, [R9,#4]
ADD             R1, R8, #1
VLDR            S31, [SP,#0x138+var_10C]
UXTH            R8, R1
CMP             R0, R8
BHI             loc_250B6C
LDR             R0, [R10]
LDR             R1, [SP,#0x138+var_B0]
BL              sub_126EA4
LDR             R0, [R10,#4]
LDR             R1, [SP,#0x138+var_AC]
BL              sub_126EA4
STR             R11, [R10,#0xC]
STR             R11, [R10,#8]
ADD             SP, SP, #0xD4
MOV             R0, R10
VPOP            {D8-D15}
POP             {R4-R11,PC}
