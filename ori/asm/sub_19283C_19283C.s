PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R0, #1
ADD             R8, R6, #0x14000
MOV             R4, #0
VPUSH           {D8-D11}
SUB             SP, SP, #0x15C
STR             R0, [SP,#0x1A0+var_14C]
LDRB            R0, [R8,#0x28D]
CMP             R0, #0
BLE             loc_1928C0
ADD             R0, R6, R4,LSL#2
ADD             R5, R0, #0x14000
LDR             R0, [R5,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_1928B0
LDR             R0, [R5,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
LDRB            R1, [R0,#0x2F7]
TST             R1, #2
BEQ             loc_1928B0
LDR             R0, [R0,#0xA4]
MOV             R1, #0
BL              sub_146E50
LDRB            R0, [R8,#0x28D]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_192868
ADD             R0, R6, #0x13C00
ADD             R0, R0, #0xFC
STR             R0, [SP,#0x1A0+var_18C]
LDR             R0, [R0]
LDR             R3, =0x49249249
MOV             R1, #0
MOV             R10, R1
LDR             R12, [R0,#0x34]
UMLAL           R3, R1, R12, R3
MOVS            R2, R1,LSR#3
LDREQ           R0, =0x13D5C
STREQ           R10, [R0,R6]
BEQ             loc_192910
LDR             R3, [R6]
LDR             R1, [R0,#0x30]
LDR             R12, [R3,#0x114]
ADD             R1, R1, R0
MOV             R3, #0
MOV             R0, R6
BLX             R12
ADD             R11, R6, #0x13000
ADD             R0, R6, #0x13C00
ADD             R11, R11, #0xC70
ADD             R0, R0, #0x5C ; '\'
STR             R0, [SP,#0x1A0+var_164]
LDR             R0, [R11]
ADD             R9, R6, #0x13C00
ADD             R9, R9, #0x78 ; 'x'
CMP             R0, #0
BEQ             loc_192B18
LDR             R1, [R0,#8]
LDRH            R7, [R0,R1]
CMP             R7, #0
BEQ             loc_192B18
ADD             R1, R6, #0x13C00
ADD             R1, R1, #0x7C ; '|'
MOV             R3, #0
LDR             R5, [R1]
STR             R10, [R1]
LDR             R1, [R0,#8]
MOV             R2, R3
ADD             R0, R0, R1
ADD             R4, R0, #4
MOV             R0, #0x2C ; ','
LDR             R1, [SP,#0x1A0+var_164]
MUL             R0, R7, R0
BL              sub_1143B4
LDR             R3, =0xFFFF
VLDR            S1, =3.4028e38
MOV             R1, #0
MOV             R12, #0x80000
SUB             R7, R7, #1
STR             R0, [R9]
LDRSH           R2, [R4]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0]
LDRSH           R2, [R4,#2]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#4]
LDRSH           R2, [R4,#4]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#8]
LDRSH           R2, [R4,#6]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0xC]
LDRSH           R2, [R4,#8]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x10]
LDRSH           R2, [R4,#0xA]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x14]
LDRSH           R2, [R4,#0xC]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x18]
LDRSH           R2, [R4,#0xE]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x1C]
LDRSH           R2, [R4,#0x10]
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x20]
LDRH            R2, [R4,#0x12]
CMP             R2, R3
VMOVEQ.F32      S0, S1
BEQ             loc_192A44
LDRSH           R9, [R4,#0x10]
ADD             R2, R2, R9
VMOV            S0, R2
VCVT.F32.S32    S0, S0
CMP             R1, R7
VSTR            S0, [R0,#0x24]
LDR             R2, [R0,#0x28]
LDR             R9, [R4,#0x18]
BIC             R2, R2, #3
AND             R9, R9, #3
ORR             R2, R2, R9
STR             R2, [R0,#0x28]
LDR             R9, [R4,#0x18]
BIC             R2, R2, #0xC
AND             R9, R9, #0xC
ORR             R2, R2, R9
STR             R2, [R0,#0x28]
LDR             R9, [R4,#0x18]
BIC             R2, R2, #0x10
AND             R9, R9, #0x10
ORR             R2, R2, R9
STR             R2, [R0,#0x28]
LDR             R9, [R4,#0x18]
BIC             R2, R2, #0x20 ; ' '
AND             R9, R9, #0x20 ; ' '
ORR             R2, R2, R9
STR             R2, [R0,#0x28]
LDR             R9, [R4,#0x18]
BIC             R2, R2, #0x4000
BIC             R2, R2, #0x3FC0
MOV             R9, R9,LSL#17
MOV             R9, R9,LSR#23
ORR             R2, R2, R9,LSL#6
STR             R2, [R0,#0x28]
LDR             R9, [R4,#0x18]
BIC             R2, R2, #0x78000
AND             R9, R9, #0x78000
ORR             R2, R2, R9
AND             R9, R12, R5,LSL#19
BIC             R2, R2, #0x80000
ORR             R2, R2, R9
STR             R2, [R0,#0x28]
LDRH            R9, [R4,#0x14]
MOV             R2, R2,LSL#11
MOV             R2, R2,LSR#11
ORR             R2, R2, R9,LSL#21
STR             R2, [R0,#0x28]
ORREQ           R2, R2, #0x100000
BICNE           R2, R2, #0x100000
TST             R2, #0x100000
STR             R2, [R0,#0x28]
BNE             loc_192B1C
ADD             R1, R1, #1
ADD             R4, R4, #0x1C
ADD             R0, R0, #0x2C ; ','
MOV             R5, R5,LSR#1
B               loc_192994
STR             R10, [R9]
LDR             R4, =off_6D1648
VLDR            S1, =18.0
VLDR            S0, =6.0
VLDR            S19, =0.0
LDR             R0, [R4]
LDR             R1, [R0,#0x60]
STR             R1, [SP,#0x1A0+var_B8]
ADD             R1, R1, #0x60 ; '`'
STR             R1, [SP,#0x1A0+var_B4]
LDR             R0, [R0,#0x60]
ADD             R1, R6, #0x13800
ADD             R1, R1, #0x36C
ADD             R0, R0, #0xC0
STRD            R0, R1, [SP,#0x1A0+var_B0]
LDR             R0, [SP,#0x1A0+var_164]
STR             R0, [SP,#0x1A0+var_A8]
VSTR            S1, [SP,#0x1A0+var_98]
VSTR            S0, [SP,#0x1A0+var_94]
VLDR            S1, =-18.0
VSTR            S19, [SP,#0x1A0+var_90]
VLDR            S0, =-10.0
VSTR            S1, [SP,#0x1A0+var_8C]
VSTR            S0, [SP,#0x1A0+var_88]
ADD             R0, R6, #0x10000
VSTR            S19, [SP,#0x1A0+var_84]
ADD             R0, R0, #0x3D00
STR             R0, [SP,#0x1A0+var_48]
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R0, [R0]
VLDR            S1, =154.0
VLDR            S0, =78.0
TST             R0, #1
VLDREQ          S2, =320.0
VLDRNE          S2, =490.0
VSTR            S1, [SP,#0x1A0+var_A4]
VSTR            S0, [SP,#0x1A0+var_A0]
VSTR            S2, [SP,#0x1A0+var_9C]
MOV             R3, #0
LDR             R1, [SP,#0x1A0+var_164]
MOV             R2, R3
MOV             R0, #0xC10
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_192C1C
MOV             R1, #0xC10
BL              sub_2FFE8C
MOV             R0, R5
NOP
BL              sub_234BEC
LDR             R1, =off_6B5FA8
MOV             R3, #2
MOV             R2, #0x3F0
STR             R1, [R0],#0x38
LDR             R1, =sub_59B438
BLX             sub_1002F4
LDR             R1, =sub_59B438
MOV             R3, #1
MOV             R2, #0x3F0
ADD             R0, R0, #0x7E0
BLX             sub_1002F4
SUB             R0, R0, #0x800
SUB             R0, R0, #0x18
LDR             R1, =0x14408
STR             R0, [R1,R6]
ADD             R1, SP, #0x1A0+var_B8
BL              sub_2FBD70
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x84]
BLX             R1
MOV             R4, #0
MOV             R3, #0
LDR             R1, [SP,#0x1A0+var_164]
MOV             R2, R3
MOV             R0, #0x11C
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_2B668C
ADD             R1, R6, R4,LSL#2
ADD             R1, R1, #0x14400
ADD             R1, R1, #0xC
ADD             R4, R4, #1
CMP             R4, #0x4F ; 'O'
STR             R0, [R1]
BLT             loc_192C4C
MOV             R4, #0
MOV             R3, #0
LDR             R1, [SP,#0x1A0+var_164]
MOV             R2, R3
MOV             R0, #0x17C
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_1E9F04
ADD             R1, R6, R4,LSL#2
ADD             R1, R1, #0x14400
ADD             R1, R1, #0x148
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
STR             R0, [R1]
BLT             loc_192C8C
ADD             R0, R6, #0x10000
ADD             R1, R6, #0x13C00
ADD             R2, SP, #0x1A0+var_50
ADD             R0, R0, #0x3D40
ADD             R1, R1, #0x24 ; '$'
STM             R2, {R0,R1}
LDR             R0, [R0]
TST             R0, #1
BEQ             loc_192DA4
LDR             R0, [R6]
LDR             R1, [R0,#0x2D0]
MOV             R0, R6
BLX             R1
LDR             R0, [SP,#0x1A0+var_48]
LDRSH           R0, [R0,#0x46]
CMP             R0, #0
BLT             loc_192DA4
LDR             R0, [SP,#0x1A0+var_4C]
B               loc_192D58
DCD 0x49249249
DCD 0x13D5C
DCFS 3.4028e38
DCD 0xFFFF
DCD off_6D1648
DCFS 0.0
DCFS 18.0
DCFS 6.0
DCFS -18.0
DCFS -10.0
DCFS 154.0
DCFS 78.0
DCFS 320.0
DCFS 490.0
DCD off_6B5FA8
DCD sub_59B438
DCD 0x14408
LDR             R0, [R0]
LDR             R1, [R0,#0x1A8]
BIC             R1, R1, #2
STR             R1, [R0,#0x1A8]
LDR             R2, [SP,#0x1A0+var_48]
LDR             R1, [R11]
LDR             R0, [SP,#0x1A0+var_4C]
LDRSH           R12, [R2,#0x46]
LDR             R2, [R1,#0x14]
LDR             R0, [R0]
ADD             R1, R1, R2
LDR             R3, [R1]
LDR             R2, [R0]
ADD             R3, R1, R3,LSL#2
ADD             R3, R3, R12,LSL#2
LDR             R2, [R2,#0x2C]
LDR             R3, [R3,#4]
ADD             R1, R1, R3
BLX             R2
LDR             R0, [R6]
LDR             R1, [R0,#0x1F4]
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
LDR             R1, [R0,#0x200]
MOV             R0, R6
BLX             R1
LDR             R9, [R8,#0x16C]
CMP             R9, #0
BEQ             loc_192E90
LDRB            R0, [R9,#0xDE]
TST             R0, #1
BEQ             loc_192E84
LDR             R0, [R9]
LDR             R1, [R0,#8]
MOV             R0, R9
BLX             R1
CMP             R0, #3
BEQ             loc_192E84
LDR             R0, [R9]
LDR             R1, [R0,#8]
MOV             R0, R9
BLX             R1
CMP             R0, #4
BEQ             loc_192E84
LDR             R0, [R9]
LDR             R1, [R0,#0x288]
MOV             R0, R9
BLX             R1
LDR             R0, [R9]
LDR             R1, [R0,#8]
MOV             R0, R9
BLX             R1
CMP             R0, #2
BCS             loc_192E84
LDR             R0, [R9]
LDR             R1, [R0,#0x3C4]
MOV             R0, R9
BLX             R1
MOV             R5, R0
LDR             R0, [R9]
LDR             R1, [R0,#0x3CC]
MOV             R0, R9
BLX             R1
SUBS            R7, R0, #0
MOV             R4, #0
BLS             loc_192E84
LDR             R0, [R5]
LDR             R1, [R0]
LDR             R1, [R1,#0x288]
BLX             R1
ADD             R4, R4, #1
CMP             R7, R4
ADD             R5, R5, #4
BHI             loc_192E64
LDR             R9, [R9,#8]
CMP             R9, #0
BNE             loc_192DD0
LDR             R0, [SP,#0x1A0+var_18C]
LDR             R3, =0x49249249
MOV             R1, #0
VLDR            S23, =1.0
LDR             R0, [R0]
LDR             R12, [R0,#0x5C]
UMLAL           R3, R1, R12, R3
MOVS            R1, R1,LSR#3
BEQ             loc_193214
LDR             R1, [R0,#0x58]
LDR             R10, =0x47800000
LDR             R11, =flt_697140
VLDR            S20, =0.000095874
VLDR            S21, =40.744
VLDR            S18, =65536.0
VLDR            S22, =0.001
ADD             R7, R0, R1
LDR             R0, =off_6D1648
LDR             R2, [R7,#4]
LDR             R1, [R8,#0x180]
LDR             R0, [R0]
UXTH            R2, R2
AND             R1, R1, #0xFF
LDR             R0, [R0,#0xA0]
BL              sub_2D3DF8
LDRSH           R3, [R7,#0xE]
LDRSH           R12, [R7,#0x10]
LDRSH           R4, [R7,#0x12]
VMOV            S1, R3
VMOV            S3, R12
VMOV            S0, R4
MOV             R9, R0
MOV             R0, #0
MOV             R2, #0x3F800000
VCVT.F32.S32    S2, S1
VCVT.F32.S32    S1, S3
VCVT.F32.S32    S0, S0
ADD             R3, SP, #0x1A0+var_108
STR             R0, [SP,#0x1A0+var_114]
STR             R2, [SP,#0x1A0+var_118]
STR             R0, [SP,#0x1A0+var_110]
MOV             R1, R7
ADD             R5, SP, #0x1A0+var_148
VSTR            S2, [SP,#0x1A0+var_10C]
STM             R3, {R0,R2}
ADD             R3, SP, #0x1A0+var_F4
STR             R0, [SP,#0x1A0+var_100]
VSTR            S1, [SP,#0x1A0+var_FC]
STR             R0, [SP,#0x1A0+var_F8]
STM             R3, {R0,R2}
VSTR            S0, [SP,#0x1A0+var_EC]
LDRH            R0, [R1,#8]
LDRH            R2, [R1,#0xA]
LDRH            R3, [R1,#0xC]
VMOV            S1, R0
VMOV            S0, R2
VMOV            S2, R3
STR             R5, [SP,#0x1A0+var_198]
VCVT.F32.U32    S3, S1
VCVT.F32.U32    S1, S0
VCVT.F32.U32    S0, S2
VMUL.F32        S2, S3, S20
VMUL.F32        S1, S1, S20
VMUL.F32        S0, S0, S20
VMUL.F32        S2, S2, S21
VMUL.F32        S1, S1, S21
VMUL.F32        S0, S0, S21
VCMPE.F32       S2, S19
VMRS            APSR_nzcv, FPSCR
VABS.F32        S2, S2
VCMPE.F32       S1, S19
MOVCC           R3, #1
MOVCS           R3, #0
VMOV            R0, S2
VMRS            APSR_nzcv, FPSCR
VABS.F32        S1, S1
VCMPE.F32       S0, S19
MOVCC           R5, #1
MOVCS           R5, #0
VMRS            APSR_nzcv, FPSCR
VABS.F32        S0, S0
MOVCC           R12, #1
MOVCS           R12, #0
CMP             R0, R10
MOV             R2, R12
BLT             loc_192FF8
VSUB.F32        S2, S2, S18
VMOV            R0, S2
CMP             R0, R10
BGE             loc_192FE8
VMOV            R0, S1
CMP             R0, R10
BLT             loc_193014
VSUB.F32        S1, S1, S18
VMOV            R0, S1
CMP             R0, R10
BGE             loc_193004
VMOV            R0, S0
CMP             R0, R10
BLT             loc_193030
VSUB.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R10
BGE             loc_193020
VCVT.U32.F32    S3, S2
VCVT.U32.F32    S4, S1
VCVT.U32.F32    S5, S0
CMP             R3, #0
VMOV            R0, S3
VMOV            R4, S4
VMOV            R12, S5
UXTH            R0, R0
VMOV            S8, R0
UXTH            LR, R4
VMOV            S7, LR
UXTH            R4, R12
VMOV            S9, R4
AND             R3, LR, #0xFF
VCVT.F32.U32    S14, S8
AND             R12, R0, #0xFF
VCVT.F32.U32    S12, S7
ADD             R3, R11, R3,LSL#4
VCVT.F32.U32    S8, S9
ADD             R12, R11, R12,LSL#4
VLDR            S3, [R3]
VLDR            S4, [R3,#4]
AND             R0, R4, #0xFF
ADD             R3, R3, #8
VSUB.F32        S2, S2, S14
VLDR            S6, [R12]
VSUB.F32        S1, S1, S12
VLDR            S11, [R12,#8]
VSUB.F32        S0, S0, S8
ADD             R0, R11, R0,LSL#4
VLDM            R3, {S16-S17}
MOV             R4, #0
VLDR            S9, [R0]
VLDR            S10, [R0,#8]
VMLA.F32        S6, S2, S11
VLDR            S5, [R12,#4]
VMLA.F32        S3, S1, S16
VLDR            S15, [R12,#0xC]
VMLA.F32        S9, S0, S10
VLDR            S7, [R0,#4]
VMLA.F32        S5, S2, S15
VLDR            S13, [R0,#0xC]
VMLA.F32        S4, S1, S17
ADD             R0, SP, #0x1A0+var_C8
VNEGNE.F32      S6, S6
CMP             R5, #0
VNEGNE.F32      S3, S3
CMP             R2, #0
VNEGNE.F32      S9, S9
VMLA.F32        S7, S0, S13
VMUL.F32        S2, S5, S9
VMUL.F32        S8, S6, S9
VMUL.F32        S9, S9, S4
VMUL.F32        S0, S6, S7
VMUL.F32        S1, S5, S7
VMUL.F32        S7, S7, S4
VMUL.F32        S6, S6, S4
VMUL.F32        S4, S5, S4
VMOV.F32        S11, S2
VMOV.F32        S10, S8
VNEG.F32        S5, S3
VNMLS.F32       S11, S0, S3
VNMLS.F32       S0, S2, S3
VMLA.F32        S10, S1, S3
VMLA.F32        S1, S8, S3
VSTR            S7, [SP,#0x1A0+var_E8]
VSTR            S9, [SP,#0x1A0+var_D8]
VSTR            S4, [SP,#0x1A0+var_C0]
VSTR            S11, [SP,#0x1A0+var_E4]
VSTR            S0, [SP,#0x1A0+var_D0]
VSTR            S10, [SP,#0x1A0+var_E0]
VSTR            S1, [SP,#0x1A0+var_D4]
VSTM            R0, {S5-S6}
STR             R4, [SP,#0x1A0+var_DC]
STR             R4, [SP,#0x1A0+var_CC]
STR             R4, [SP,#0x1A0+var_BC]
LDRSH           R0, [R1,#0x14]
ADD             R2, SP, #0x1A0+var_80
VMOV            S0, R0
LDRSH           R0, [R1,#0x16]
ADD             R1, SP, #0x1A0+var_E8
VMOV            S1, R0
LDRSH           R0, [R7,#0x18]
VCVT.F32.S32    S0, S0
VMOV            S2, R0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VMUL.F32        S0, S0, S22
VMUL.F32        S1, S1, S22
VMUL.F32        S2, S2, S22
VSTR            S0, [SP,#0x1A0+var_80]
STR             R4, [SP,#0x1A0+var_7C]
STR             R4, [SP,#0x1A0+var_78]
STR             R4, [SP,#0x1A0+var_74]
STR             R4, [SP,#0x1A0+var_70]
VSTR            S1, [SP,#0x1A0+var_6C]
STR             R4, [SP,#0x1A0+var_68]
STR             R4, [SP,#0x1A0+var_64]
STR             R4, [SP,#0x1A0+var_60]
STR             R4, [SP,#0x1A0+var_5C]
VSTR            S2, [SP,#0x1A0+var_58]
LDR             R0, [SP,#0x1A0+var_198]
STR             R4, [SP,#0x1A0+var_54]
BL              sub_141F30
LDR             R2, [SP,#0x1A0+var_198]
ADD             R1, SP, #0x1A0+var_118
MOV             R0, R2
BL              sub_141F30
ADD             R2, SP, #0x1A0+var_148
ADD             R5, SP, #0x1A0+var_128
VLDM            R2, {S0-S7}
ADD             R2, R9, #0x7C ; '|'
VSTM            R2, {S0-S7}
LDM             R5, {R0-R3}
ADD             R5, R9, #0x9C
STM             R5, {R0-R3}
STRH            R4, [R9,#0xA]
LDR             R0, [R7]
TST             R0, #1
ADDEQ           R7, R7, #0x1C
BEQ             loc_192ED4
LDR             R2, =off_6D1648
LDR             R0, [R2]
LDR             R1, [R0,#0xC8]
TST             R1, #7
BEQ             loc_193B0C
AND             R3, R1, #7
VLDR            S1, =0.5
CMP             R3, #1
MOV             R2, #8
ADD             R10, R6, #0x15000
BEQ             loc_193274
CMP             R3, #2
BEQ             loc_193614
CMP             R3, #4
BNE             loc_193748
B               loc_19363C
DCFS 1.0
DCFS 0.000095874
DCFS 40.744
DCD 0x47800000
DCFS 65536.0
DCD flt_697140
DCFS 0.001
DCFS 0.5
LDRB            R0, [R8,#0x28D]
CMP             R0, #0
BEQ             loc_19329C
AND             R0, R0, #1
CMP             R0, #1
BNE             loc_19329C
LDR             R1, [R8,#0x184]
LDRB            R3, [R1,#0xDE]
BIC             R3, R3, #8
STRB            R3, [R1,#0xDE]
LDRB            R1, [R8,#0x28D]
CMP             R1, R0
BLE             loc_1932E0
ADD             R1, R6, R0,LSL#2
ADD             R1, R1, #0x14000
ADD             R0, R0, #2
LDR             R3, [R1,#0x184]
LDRB            R12, [R3,#0xDE]
BIC             R12, R12, #8
STRB            R12, [R3,#0xDE]
LDR             R3, [R1,#0x188]
LDRB            R1, [R3,#0xDE]
BIC             R1, R1, #8
STRB            R1, [R3,#0xDE]
LDRB            R1, [R8,#0x28D]
CMP             R1, R0
BGT             loc_1932A8
LDR             R7, =dword_6E2378
LDRB            R1, [R10,#1]
MOV             R0, #1
LDRB            R3, [R7,#(byte_6E2389 - 0x6E2378)]
TST             R1, R0,LSL R3
BNE             loc_193748
MOV             R1, #0
ADD             R0, R6, #0x2C4
BL              sub_5996A0
LDRSB           R4, [R10,#2]
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
ADD             R9, R0, #0x700
LDRH            R3, [R9,#0x58]
SUB             R1, R3, #0xFF00
SUBS            R1, R1, #0xFF
BEQ             loc_1933D8
LDRB            R0, [R7,#(byte_6E2389 - 0x6E2378)]
CMP             R0, #0
BNE             loc_193354
VMOV.F32        S0, S23
MOV             R2, #0
MOV             R1, R2
MOV             R0, R3
BL              sub_145730
LDRB            R0, [R7,#(byte_6E2389 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_193360
AND             R0, R0, #0xFF
CMP             R0, #4
BNE             loc_19336C
LDRH            R1, [R9,#0x58]
LDR             R0, =dword_6E7CD0
BL              sub_586D50
SUB             R0, R4, #1
SXTB            R5, R0
CMP             R5, #0
BLE             loc_1933C4
ADD             R0, R6, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BNE             loc_1933C4
LDR             R0, =0x758
LDRH            R1, [R9,#0x58]
LDRH            R0, [R0,R4]
CMP             R0, R1
BNE             loc_1933C4
SUB             R0, R5, #1
SXTB            R5, R0
CMP             R5, #0
BGT             loc_19337C
ADD             R0, R5, #1
SXTB            R4, R0
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R2, =off_6D1648
LDRB            R1, [R7,#(byte_6E2389 - 0x6E2378)]
LDR             R2, [R2]
CMP             R1, #0
LDR             R3, [R2,#0xC4]
LDR             R3, [R3,#4]
LDR             R11, [R3,#4]
STR             R11, [SP,#0x1A0+var_19C]
LDR             R11, [R3,#8]
BEQ             loc_193418
CMP             R1, #1
BEQ             loc_193504
CMP             R1, #2
BEQ             loc_193520
CMP             R1, #4
BNE             loc_193748
CMP             R1, #4
ADD             R1, R6, R4,LSL#2
ADD             R1, R1, #0x14000
MOVEQ           R7, #1
LDR             R5, [R1,#0x184]
MOVNE           R7, #0
ADD             R9, R0, #0x700
LDRB            R1, [R5,#0x75C]
AND             R1, R1, #7
CMP             R1, #1
LDR             R1, [R5]
MOVEQ           R2, #1
MOVNE           R2, #0
ORR             R0, R2, R7
LDR             R2, [R1,#0x338]
EOR             R1, R0, #1
MOV             R0, R5
BLX             R2
LDRB            R0, [R8,#0x28D]
ADD             R1, R4, #1
SXTB            R4, R1
CMP             R0, R4
BLE             loc_193748
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
MOV             R0, R5
LDR             R1, [R5]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #6
BNE             loc_193748
LDR             R1, =0x758
LDRH            R1, [R1,R5]
SUB             R0, R1, #0xFF00
SUBS            R0, R0, #0xFF
BEQ             loc_193748
LDRH            R2, [R9,#0x58]
CMP             R1, R2
BNE             loc_193748
LDRB            R1, [R5,#0x75C]
AND             R1, R1, #7
CMP             R1, #1
BNE             loc_193434
LDR             R0, [SP,#0x1A0+var_19C]
LDR             R1, [R0,#0x750]
CMP             R1, R5
BNE             loc_1934E4
LDR             R1, [R0]
LDR             R1, [R1,#0x3B4]
BLX             R1
LDR             R1, [R11,#0x750]
CMP             R1, R5
BNE             loc_193434
LDR             R1, [R11]
MOV             R0, R11
LDR             R1, [R1,#0x3B4]
BLX             R1
B               loc_193434
LDR             R0, [R2]
LDR             R1, [R0,#0x5C]
MOV             R0, R2
BLX             R1
MOV             R0, #0
STR             R0, [SP,#0x1A0+var_14C]
B               loc_193748
ADD             R1, R6, R4,LSL#2
ADD             R1, R1, #0x14000
LDR             R9, =0xFFFF
LDR             R5, [R1,#0x184]
ADD             R7, R0, #0x700
LDRB            R0, [R5,#0x75C]
AND             R0, R0, #7
CMP             R0, #1
LDR             R0, [R5]
BEQ             loc_193590
LDR             R1, [R0,#0x33C]
MOV             R0, R5
BLX             R1
LDRB            R0, [R8,#0x28D]
ADD             R1, R4, #1
SXTB            R4, R1
CMP             R0, R4
BLE             loc_193748
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #6
BNE             loc_193748
B               loc_1935A4
LDR             R2, [R0,#0x338]
MOV             R1, #0
MOV             R0, R5
BLX             R2
B               loc_193554
LDR             R0, =0x758
LDRH            R0, [R0,R5]
CMP             R0, R9
BEQ             loc_193748
LDRH            R1, [R7,#0x58]
CMP             R0, R1
BNE             loc_193748
LDRB            R0, [R5,#0x75C]
AND             R0, R0, #7
CMP             R0, #1
BNE             loc_193534
LDR             R0, [SP,#0x1A0+var_19C]
LDR             R0, [R0,#0x750]
CMP             R0, R5
BNE             loc_1935F4
LDR             R0, [SP,#0x1A0+var_19C]
LDR             R0, [R0]
LDR             R1, [R0,#0x3B4]
LDR             R0, [SP,#0x1A0+var_19C]
BLX             R1
LDR             R0, [R11,#0x750]
CMP             R0, R5
BNE             loc_193534
LDR             R0, [R11]
LDR             R1, [R0,#0x3B4]
MOV             R0, R11
BLX             R1
B               loc_193534
LDR             R1, =byte_6ED8BC
LDRB            R1, [R1,#(byte_6ED8BF - 0x6ED8BC)]
CMP             R1, #1
BNE             loc_193748
LDR             R1, [R0]
LDR             R1, [R1,#0x5C]
BLX             R1
MOV             R0, #0
STR             R0, [SP,#0x1A0+var_14C]
B               loc_193748
TST             R1, #0x80
BEQ             loc_193748
ADD             R0, R6, #0x14000
ADD             R0, R0, #0x30C
MOV             R12, #8
VLDR            S0, [R0]
VCMPE.F32       S23, S0
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S23
BLS             loc_193674
VMOV.F32        S2, S19
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S19
VMOV.F32        S3, S1
VLDR            S2, =255.0
VMLA.F32        S3, S0, S2
VCVT.U32.F32    S0, S3
VMOV            R1, S0
VLDR            S0, [R0,#4]
AND             R3, R1, #0xFF
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S23
BGE             loc_1936B0
VMOV.F32        S3, S19
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S19
VMOV.F32        S3, S1
VMLA.F32        S3, S0, S2
VCVT.U32.F32    S0, S3
VMOV            R1, S0
VLDR            S0, [R0,#8]
AND             R2, R1, #0xFF
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S23
BGE             loc_1936E8
VMOV.F32        S3, S19
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S19
VMOV.F32        S3, S1
VMLA.F32        S1, S0, S2
VCVT.U32.F32    S0, S1
VMOV            R1, S0
VLDR            S0, [R0,#0xC]
AND             R1, R1, #0xFF
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S23
BGE             loc_19371C
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S19
VMOV.F32        S1, S3
VMLA.F32        S1, S0, S2
VCVT.U32.F32    S0, S1
VMOV            R0, S0
MOV             R0, R0,LSL#24
ORR             R0, R0, R1,LSL#16
ORR             R0, R0, R2,LSL#8
ORR             R1, R0, R3
MOV             R2, R12
ADD             R0, R6, #0x2C4
BL              sub_5996A0
ADD             R0, R6, #0x13800
ADD             R0, R0, #0x368
STR             R0, [SP,#0x1A0+var_180]
ADD             R0, R6, #0x14000
VLDR            S16, =-1.5708
ADD             R9, R6, #0x14800
ADD             R0, R0, #0xB60
MOV             R5, #0
MOV             R11, #1
ADD             R9, R9, #0x35C
STR             R0, [SP,#0x1A0+var_16C]
LDR             R0, [R9]
ADD             R1, R5, R5,LSL#4
ADD             R1, R1, R5,LSL#5
ADD             R4, R0, R1,LSL#2
LDR             R0, [R4,#0xC0]
LDRB            R1, [R0]
TST             R1, #3
BEQ             loc_1938E0
LDR             R1, =off_6D1648
LDRB            R0, [R0,#3]
LDR             R1, [R1]
ADD             R0, R0, R0,LSL#1
LDR             R1, [R1,#0x68]
ADD             R0, R1, R0,LSL#5
STR             R0, [SP,#0x1A0+var_1A0]
LDR             R0, [R6]
LDR             R1, [R0,#0x2D8]
MOV             R0, R6
BLX             R1
MOVS            R7, R0
MOV             R1, #5
STRB            R11, [R7,#0x68]
STRB            R1, [R7,#0x6A]
LDR             R1, =sub_190DEC
MOV             R0, #0
STRB            R0, [R7,#0x69]
STR             R0, [R7,#0x118]
STR             R1, [R7,#0x114]
LDR             R0, [SP,#0x1A0+var_180]
MOVEQ           R1, #0
ADDNE           R1, R7, #0x104
BL              sub_2018EC
ADD             R0, SP, #0x1A0+var_B8
NOP
BL              sub_234BEC
ADD             R0, SP, #0x1A0+var_B8
NOP
BL              sub_234B48
LDR             R2, [R4,#0xC0]
ADD             R3, SP, #0x1A0+var_90
LDMIB           R2, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, #0
VSTR            S16, [SP,#0x1A0+var_A8]
ADD             R0, R4, #8
STR             R7, [R4,#0xAC]
STR             R1, [R0,#0xAC]
LDR             R1, [SP,#0x1A0+var_1A0]
ADD             R0, R4, #8
BL              sub_19483C
LDR             R0, [R4,#0xC0]
MOV             R2, #0
LDRB            R0, [R0]
MOV             R0, R0,LSL#26
MOV             R1, R0,LSR#28
ADD             R0, R4, #8
BL              sub_1949B4
ADD             R1, SP, #0x1A0+var_B8
ADD             R0, R4, #8
BL              sub_1947B8
LDR             R0, [R4,#0xC0]
MOV             R2, #0xFFFFFF00
ADD             R1, R4, #0x14
REV             R3, R2
VLDR            S0, [R0,#0x10]
ADD             R2, R4, #0xC
VSTR            S0, [R4,#0xC]
STR             R3, [SP,#0x1A0+var_174]
LDRB            R0, [R0,#2]
ADD             R3, SP, #0x1A0+var_194
STR             R1, [SP,#0x1A0+var_188]
STR             R2, [SP,#0x1A0+var_18C]
STM             R3, {R0,R11}
ADD             R3, SP, #0x1A0+var_174
STR             R0, [SP,#0x1A0+var_1A0]
STR             R0, [SP,#0x1A0+var_19C]
STR             R0, [SP,#0x1A0+var_198]
LDR             R0, [R4,#8]
ADD             R2, R4, #0xC
MOV             R1, #0
LDR             R12, [R0,#0xC]
ADD             R0, R4, #8
BLX             R12
LDR             R0, [SP,#0x1A0+var_16C]
MOV             R2, R4
LDR             R0, [R0]
ADD             R1, R0, #4
BL              sub_4659D0
ADD             R0, SP, #0x1A0+var_B8
NOP
NOP
ADD             R5, R5, #1
CMP             R5, #0x40 ; '@'
BLT             loc_193774
ADD             R7, R6, #0x14000
ADD             R9, R6, #0x14800
MOV             R5, #0
ADD             R7, R7, #0xFF0
ADD             R9, R9, #0x36C
LDR             R0, [R7]
ADD             R1, R5, R5,LSL#2
ADD             R4, R0, R1,LSL#2
LDR             R0, [R4,#0x10]
LDRB            R0, [R0]
TST             R0, #1
BEQ             loc_193A54
ADD             R0, SP, #0x1A0+var_B8
BL              sub_234BEC
ADD             R0, SP, #0x1A0+var_B8
NOP
BL              sub_234B48
LDR             R2, [R4,#0x10]
ADD             R3, SP, #0x1A0+var_90
LDMIB           R2, {R0-R2}
STM             R3, {R0-R2}
ADD             R3, SP, #0x1A0+var_A8
LDR             R2, [R4,#0x10]
LDR             R0, [R2,#0x10]
LDR             R1, [R2,#0x14]
LDR             R2, [R2,#0x18]
STM             R3, {R0-R2}
LDR             R2, [R4,#0x10]
LDR             R1, [R9]
LDRB            R0, [R2,#1]
LDRB            R3, [R2]
ADD             R2, R0, R0,LSL#2
ADD             R2, R2, R0,LSL#5
MOV             R3, R3,LSR#1
ADD             R12, R1, R2,LSL#2
ADD             R1, R12, R3
ADD             R12, R12, R3,LSL#2
LDRB            LR, [R1,#0x88]
LDRB            R11, [R1,#0x80]
LDRB            R2, [R1,#0x78]
LDRB            R1, [R1,#0x70]
STR             R1, [SP,#0x1A0+var_198]
ADD             R1, SP, #0x1A0+var_194
STM             R1, {R2,R11,LR}
ADD             R2, SP, #0x1A0+var_B8
LDR             R1, [R12,#0x50]
STRD            R0, R1, [SP,#0x1A0+var_1A0]
LDR             R0, [R6]
MOV             R1, R4
LDR             R12, [R0,#0x298]
MOV             R0, R6
BLX             R12
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_1939D8
LDR             R1, [R4,#0x10]
ADD             R0, R0, #4
LDR             R1, [R1,#0x1C]
BL              sub_485780
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_193A4C
LDR             R2, [R4,#0x10]
LDR             R1, [R0]
VLDR            S0, [R2,#0x20]
LDR             R2, [R1,#0xB4]
MOV             R1, #3
BLX             R2
LDRD            R0, R1, [R4,#0xC]
VLDR            S0, [R1,#0x20]
B               loc_193A24
DCD dword_6E2378
DCD dword_6E7CD0
DCD 0x758
DCD byte_6ED8BC
DCFS 255.0
DCFS -1.5708
DCD sub_190DEC
LDR             R1, [R0]
LDR             R2, [R1,#0xB8]
MOV             R1, #3
BLX             R2
LDRD            R0, R1, [R4,#0xC]
LDR             R2, [R0]
VLDR            S0, [R1,#0x20]
MOV             R1, #3
LDR             R2, [R2,#0xBC]
BLX             R2
ADD             R0, SP, #0x1A0+var_B8
NOP
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BLT             loc_193900
LDR             R0, [SP,#0x1A0+var_4C]
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R3, [R10,#0x1C]
CMP             R3, #0
BEQ             loc_193AA4
LDR             R0, [R10,#0x18]
LDR             R2, [SP,#0x1A0+var_164]
MOV             R1, R6
BL              sub_596458
LDR             R0, [R10,#0x1C]
NOP
BL              sub_2FF5D4
MOV             R0, #0
STR             R0, [R10,#0x1C]
LDRB            R0, [R8,#0x28F]
CMP             R0, #2
BNE             loc_193B34
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x204]
MOV             R0, R6
BLX             R2
LDR             R0, [R6]
MOV             R1, #2
LDR             R2, [R0,#0x204]
MOV             R0, R6
BLX             R2
ADD             R4, R6, #0x10000
ADD             R4, R4, #0x4600
LDRH            R0, [R4,#0x4C]
CMP             R0, #0
BEQ             loc_193B34
LDR             R0, [R6]
LDR             R1, [R0,#0x2C]
MOV             R0, R6
BLX             R1
LDRH            R0, [R4,#0x4C]
CMP             R0, #0
BNE             loc_193AEC
B               loc_193B34
LDR             R0, [R0,#0xC0]
LDR             R1, [SP,#0x1A0+var_48]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDRH            R1, [R1,#4]
LDR             R0, [R0]
LDR             R2, [R0]
LDR             R3, [R2]
MOV             R2, #1
BLX             R3
LDR             R0, [SP,#0x1A0+var_14C]
MOV             R3, #0
STRB            R0, [R8,#0x3FC]
LDR             R0, [SP,#0x1A0+var_50]
LDR             R0, [R0]
BIC             R1, R0, #1
LDR             R0, [SP,#0x1A0+var_50]
STR             R1, [R0]
LDR             R0, [R6]
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DDB4
LDM             R0, {R1,R2}
MOV             R0, R6
BLX             R12
ADD             SP, SP, #0x15C
VPOP            {D8-D11}
POP             {R4-R11,PC}
