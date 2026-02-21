PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
VPUSH           {D8-D13}
SUB             SP, SP, #0x70
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
MOV             R6, #0
TST             R0, #1
LDR             R0, [R4,#8]
LDRH            R1, [R0]
STRH            R1, [R0,#2]
LDR             R0, [R4,#8]
STRBNE          R6, [R0,#4]
BNE             loc_1BAD9C
ADD             R0, R0, #6
BL              sub_45AA4C
LDR             R0, [R4,#8]
LDR             R1, [R4,#4]
MOV             R10, #1
ADD             R0, R0, #0x400
ADD             R0, R0, #0xBC
ADD             R1, R1, #0x108
VLDM            R0, {S2-S3}
VLDR            S1, [R1]
VLDR            S0, [R1,#4]
LDR             R0, [R4,#8]
VSUB.F32        S16, S1, S2
VSUB.F32        S0, S0, S3
LDRSH           R0, [R0]
CMP             R0, #0x34; switch 52 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
DCD loc_1B7E48, loc_1B7E48, loc_1B809C, loc_1B809C; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 001B7D70 cases 0,1,4
BL              sub_3587D0
MOV             R10, R0
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BEQ             loc_1B7E70
LDR             R1, [R4,#8]
MOV             R0, #3
B               loc_1B8048
ADD             R5, R4, #0x3800
VLDR            S17, =0.0
VLDR            S0, [R5,#0x18C]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_1B8078
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1BC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1B8078
ADD             R0, R4, #0x1100
LDRSH           R2, [R0,#0xE6]
LDRSH           R1, [R0,#0xE4]
CMP             R1, R2
BLT             loc_1B8078
LDRSH           R1, [R0,#0xF4]
LDRSH           R0, [R0,#0xF6]
CMP             R0, R1
BGT             loc_1B8078
LDR             R1, [R4,#8]
LDRB            R0, [R1,#0x4B4]
TST             R0, R10
BEQ             loc_1B7F44
MOV             R0, #0x11
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #2
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R6, [R0,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S17, [R0,#0x78]
LDR             R1, [R4,#4]
MOV             R0, R1
ADD             R1, R1, #0x108
ADD             R0, R0, #0x124
VLDR            S0, [R1]
VLDR            S1, [R0]
VSUB.F32        S0, S0, S1
VSTR            S0, [R1]
VLDR            S0, [R1,#4]
VLDR            S1, [R0,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R1,#4]
VLDR            S0, [R1,#8]
VLDR            S1, [R0,#8]
VSUB.F32        S0, S0, S1
VSTR            S0, [R1,#8]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
TST             R0, #2
BEQ             loc_1B8078
LDR             R0, =0x3A88
LDR             R0, [R0,R4]
CMP             R0, #0
BNE             loc_1B8078
LDR             R0, =0x3A3C
LDR             R2, =0x40490FDB
STRB            R6, [R0,R4]
VSTR            S17, [R5,#0x234]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDR             R1, [R0,#0x74]
CMP             R1, R2
VLDRGT          S0, =-1.0
VLDRLE          S0, =1.0
VSTR            S0, [R5,#0x260]
VSTR            S17, [R0,#0x78]
LDR             R1, [R4,#4]
ADD             R0, R1, #0x108
ADD             R1, R1, #0x124
VLDR            S0, [R0]
VLDR            S1, [R1]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#8]
ADD             R1, R5, #0x21C
ADD             R5, R5, #0x228
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#8]
LDM             R1, {R0-R2}
STM             R5, {R0-R2}
MOV             R0, R4
BL              sub_1ADF48
LDR             R1, =0x3A64
CMP             R0, #0
STRB            R0, [R1,R4]
BEQ             loc_1B8028
CMP             R0, #1
BEQ             loc_1B8050
TST             R0, #3
BEQ             loc_1B8078
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0xF
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R6, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x29 ; ')'
STRH            R0, [R1]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]
MOV             R1, #0
MOV             R2, #0x12
STRH            R1, [R0,#6]!
STRH            R2, [R0,#2]
STRB            R6, [R0,#4]
MOV             R0, #0x27 ; '''
B               loc_1BA8C8
STRH            R0, [R1]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]
MOV             R1, #0
MOV             R2, #0x12
STRH            R1, [R0,#6]!
STRH            R2, [R0,#2]
STRB            R6, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x28 ; '('
STRH            R0, [R1]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1B92A0
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_1B8270
B               loc_1B92A0
LDR             R0, [R4,#4]; jumptable 001B7D70 cases 2,3
LDR             R1, [R0,#0x4EC]
TST             R1, #1
LDREQ           R1, [R4,#8]
MOVEQ           R0, #4
BEQ             loc_1B8048
LDR             R2, =0x41C00000
VMOV            R1, S0
CMP             R2, R1
LDRLE           R1, [R4,#8]
MOVLE           R0, #2
BLE             loc_1B8048
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x69 ; 'i'
STRB            R6, [R0]
LDR             R0, [R4,#8]
LDRH            R0, [R0]
CMP             R0, #2
BNE             loc_1B8194
LDR             R0, [R4,#4]
LDR             R1, =0xC1200000
LDR             R0, [R0,#0x4C4]
CMP             R0, R1
BLS             loc_1B8194
LDR             R1, [R4,#8]
MOV             R0, #0x33 ; '3'
VLDR            S16, =0.0
ADD             R5, SP, #0xC0+var_B0
STRH            R0, [R1]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
ADD             R0, R4, #0x1000
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R0,#0x1F0]
LDR             R0, =off_6D1648
VSTR            S16, [SP,#0xC0+var_B0]
VSTR            S16, [SP,#0xC0+var_AC]
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R1, R5
NOP
BL              sub_166510
LDR             R0, [R4,#4]
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
B               loc_1B871C
DCD off_6D1648
DCFS 0.0
DCD 0x3A88
DCD 0x3A3C
DCD 0x40490FDB
DCFS -1.0
DCFS 1.0
DCD 0x3A64
DCD 0x41C00000
DCD 0xC1200000
LDR             R0, =off_6D1648
VLDR            S0, =1.0
ADD             R5, SP, #0xC0+var_B8
VSTR            S0, [SP,#0xC0+var_B8]
VSTR            S0, [SP,#0xC0+var_B4]
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R1, R5
NOP
BL              sub_166510
NOP
NOP
B               loc_1B7E64
LDR             R0, [R4,#8]; jumptable 001B7D70 case 17
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, #0x12
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #2
ADD             R0, R0, #6
STRH            R2, [R0]
B               loc_1B8BC0
MOV             R0, R4; jumptable 001B7D70 case 18
BL              sub_1B2264
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
MOVLT           R0, #0x12
BLT             loc_1B8048
MOV             R0, #0x13
B               loc_1B8048
MOV             R0, R4; jumptable 001B7D70 case 19
BL              sub_1B2264
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #1
BEQ             loc_1B8264
MOV             R1, #0x14
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R1, #0
MOV             R2, #8
STRH            R1, [R0,#6]!
STRH            R2, [R0,#2]
B               loc_1B8BC4
TST             R1, #0x80
MOVNE           R1, #0x1C
BEQ             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
STRH            R1, [R0]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 20
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, #0x15
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0x14
ADD             R0, R0, #6
B               loc_1B81F8
LDR             R0, [R4,#8]; jumptable 001B7D70 case 21
LDRSB           R1, [R0,#4]
MOV             R0, R4
BL              sub_1AC6F4
MOV             R5, R0
MOV             R0, R4
BL              sub_1B2264
CMP             R5, #0
NOP
BEQ             loc_1B8384
CMP             R5, #2
BEQ             loc_1B82F4
CMP             R5, #3
BNE             loc_1B830C
LDR             R0, =0x39A4
LDR             R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1B830C
LDR             R2, [R4,#8]
MOV             R1, #0x16
MOV             R0, #1
STRH            R1, [R2]
LDR             R1, [R4,#8]
B               loc_1B919C
LDR             R1, [R4,#8]
MOV             R0, #0x1B
STRH            R0, [R1]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
MOV             R5, R0
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRSH           R0, [R5,#2]
VLDR            S1, =1.0
VMOV            S2, R0
VSUB.F32        S0, S1, S0
VCVT.F32.S32    S3, S2
VLDR            S2, =0.5
VSUB.F32        S1, S3, S1
VMLA.F32        S2, S1, S0
VCVT.S32.F32    S0, S2
VMOV            R1, S0
STRH            R1, [R5]
STRB            R6, [R5,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
NOP
NOP
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BGE             loc_1B83B8
LDR             R0, =dword_6EDA78
MOV             R1, #2
LDR             R0, [R0,R1,LSL#2]
LDR             R1, =0xC03
TST             R0, R1
LDREQ           R1, [R4,#8]
MOVEQ           R0, #0x15
BEQ             loc_1B8048
ADD             R1, R4, #0x3800
VLDR            S0, =0.0
MOV             R0, #0x1B
VSTR            S0, [R1,#0x19C]
LDR             R1, [R4,#8]
STRH            R0, [R1]
LDR             R0, [R4,#8]
ADD             R5, R0, #6
MOV             R0, R5
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRSH           R0, [R5,#2]
VLDR            S1, =1.0
VLDR            S2, =0.5
VMOV            S3, R0
VSUB.F32        S0, S1, S0
VCVT.F32.S32    S3, S3
VSUB.F32        S1, S3, S1
VMLA.F32        S2, S1, S0
VCVT.S32.F32    S0, S2
VMOV            R0, S0
STRH            R0, [R5]
STRB            R6, [R5,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
NOP
NOP
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R1, [R4,#8]; jumptable 001B7D70 case 22
MOV             R0, #0x17
STRH            R0, [R1]
LDR             R0, [R4,#8]
STRB            R6, [R0,#0xA]
LDR             R1, [R4,#8]
ADD             R0, R1, #6
MOV             R5, R0
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRSH           R0, [R5,#2]
VLDR            S3, =1.0
VLDR            S1, =0.5
VMOV            S2, R0
VCVT.F32.S32    S2, S2
VSUB.F32        S2, S2, S3
VMLA.F32        S1, S2, S0
VCVT.S32.F32    S0, S1
VMOV            R0, S0
STRH            R0, [R5]
STRB            R6, [R5,#4]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 23
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, #0x18
STRH            R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R4, #0x1000
VLDR            S3, =1.0
VLDR            S2, [R1,#0x1B8]
LDRSH           R1, [R0,#8]
VLDR            S0, =0.5
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VSUB.F32        S1, S1, S3
VMOV.F32        S3, S0
VMLA.F32        S3, S1, S2
VLDR            S2, =8.0
VCVT.S32.F32    S1, S3
VMOV            R1, S1
VLDR            S1, =20.0
STRH            R1, [R0,#6]
VADD.F32        S1, S1, S2
STRB            R6, [R0,#0xA]
LDR             R0, [R4,#8]
ADD             R1, R0, #6
VSUB.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R1,#2]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
NOP
NOP
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 24
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1A8
LDR             R2, [R0]
LDRB            R2, [R2,#0xAAC]
CMP             R2, #3
BNE             loc_1B862C
LDR             R2, =0x39B8
MOV             R3, #0x1F
STRB            R6, [R2,R4]
STRH            R3, [R1]
LDR             R5, [R0]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
ADD             R7, R4, #0x1000
CMPEQ           R0, #3
LDREQ           R5, [R5,#0xAA8]
MOVNE           R5, #0
ADD             R0, R5, #0x23C
VLDM            R0, {S0-S1}
VADD.F32        S16, S0, S1
VLDR            S0, [R7,#0x1B0]
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, [R7,#0x1D8]
VLDR            S3, =60.0
VLDR            S1, =0.017453
MOV             R0, #1
VADD.F32        S2, S2, S3
VMUL.F32        S0, S0, S2
VMUL.F32        S1, S0, S1
VSTR            S1, [R5,#0x23C]
VLDR            S0, [R5,#0x240]
VADD.F32        S1, S1, S0
VSUB.F32        S1, S16, S1
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x240]
STRB            R0, [R5,#0x238]
B               loc_1B9160
DCD 0x39A4
DCFS 90.0
DCFS 0.71111
DCFS 0.5
DCD dword_6EDA78
DCD 0xC03
DCFS 20.0
DCFS 8.0
DCD 0x39B8
DCFS 60.0
DCFS 0.017453
MOV             R0, #0x1A
STRH            R0, [R1]
B               loc_1B9160
ADD             R0, R4, #0x1000; jumptable 001B7D70 case 25
VLDR            S1, =0.0
VLDR            S0, [R0,#0x1B0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
LDREQ           R1, [R4,#8]
MOVEQ           R0, #0x1A
BNE             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
B               loc_1B8048
LDR             R0, [R4,#8]; jumptable 001B7D70 case 26
LDRB            R1, [R0,#0x4B4]
TST             R1, #0x80
BEQ             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R5, R4, #0x3800
STRH            R6, [R0]
VLDR            S17, =90.0
VLDR            S0, [R5,#0x18C]
VLDR            S18, =0.71111
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
BL              sub_464318
VLDR            S19, =110.0
VLDR            S1, [R5,#0x18C]
VMUL.F32        S16, S0, S19
VSUB.F32        S0, S1, S17
VMUL.F32        S0, S0, S18
BL              sub_464380
VLDR            S1, =75.0
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1CC
VNMLS.F32       S1, S0, S19
VLDM            R0, {S2-S4}
VLDR            S0, =0.0
VADD.F32        S2, S2, S16
VADD.F32        S0, S4, S0
VADD.F32        S1, S3, S1
VSTR            S2, [SP,#0xC0+var_C0]
VSTR            S1, [SP,#0xC0+var_BC]
VSTR            S0, [SP,#0xC0+var_B8]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
LDR             R0, [R4,#4]
MOV             R1, #1
VLDR            S2, =200.0
VLDR            S1, =0.8
LDR             R2, [R0,#0x4EC]
VLDR            S0, =0.1
ORR             R2, R2, #0x10
STR             R2, [R0,#0x4EC]
LDR             R0, [R4,#8]
STRB            R1, [R0,#0x4B5]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
BLX             R1
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 31
LDRB            R0, [R0,#0x4B4]
TST             R0, #0x80
BEQ             loc_1B8980
ADD             R7, R4, #0x3800
ADD             R7, R7, #0x1A8
LDR             R5, [R7]
CMP             R5, #0
BEQ             loc_1B876C
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
CMPEQ           R0, #3
LDREQ           R5, [R5,#0xAA8]
MOVNE           R5, #0
NOP
BL              sub_4635D8
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
STR             R1, [SP,#0xC0+var_AC]
STR             R2, [SP,#0xC0+var_B0]
STR             R0, [SP,#0xC0+var_A8]
VLDR            S0, [R5,#0x23C]
VLDR            S18, =40.744
VMUL.F32        S0, S0, S18
BL              sub_464318
VMOV.F32        S16, S0
VSTR            S16, [SP,#0xC0+var_B0]
VLDR            S0, [R5,#0x23C]
VMUL.F32        S0, S0, S18
BL              sub_464380
ADD             R0, R5, #0x250
VLDR            S1, [R5,#0x244]
VLDR            S19, =111.0
VLDM            R0, {S2-S3}
VADD.F32        S2, S2, S19
VMUL.F32        S1, S1, S3
VMUL.F32        S1, S1, S2
VMUL.F32        S17, S16, S1
VMUL.F32        S16, S0, S1
VLDR            S0, [R5,#0x244]
VMUL.F32        S0, S0, S18
BL              sub_464380
VLDR            S1, [R5,#0x250]
VLDR            S2, [SP,#0xC0+var_B0]
VADD.F32        S1, S1, S19
VMUL.F32        S0, S0, S1
VLDR            S1, =0.8
VMUL.F32        S0, S0, S2
VLDR            S2, =200.0
VSTR            S0, [SP,#0xC0+var_B0]
LDR             R0, [R4,#4]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
BLX             R1
LDR             R0, [R4,#4]
ADD             R8, SP, #0xC0+var_B8
VLDR            S16, =0.0
MOV             R1, #1
ADD             R3, R0, #0x164
STM             R8, {R1,R3}
MOV             R2, #0x3F ; '?'
VABS.F32        S0, S17
VMOV.F32        S1, S16
STMEA           SP, {R2,R6}
LDR             R1, [R0]
MOV             R3, R2
ADD             R2, SP, #0xC0+var_B0
VMOV.F32        S2, S0
LDR             R12, [R1,#0x1E0]
VMOV.F32        S3, S1
MOV             R1, #1
BLX             R12
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xFC]
ADD             R1, R0, #0x164
BLX             R2
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x25C]
BLX             R1
LDR             R1, [R4,#8]
MOV             R0, #0x20 ; ' '
STRH            R0, [R1]
MOV             R0, R4
BL              sub_1BADA8
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #9
VLDR            S1, =57.296
STRH            R2, [R0,#6]!
VLDR            S0, =180.0
STRH            R1, [R0,#2]
STRB            R6, [R0,#4]
VLDR            S3, [R5,#0x23C]
VLDR            S2, =90.0
ADD             R1, R4, #0x3800
VMLA.F32        S0, S3, S1
ADD             R0, R4, #0x1000
LDR             R2, =0x43B40000
VSUB.F32        S0, S0, S2
VSTR            S0, [R1,#0x18C]
VLDR            S0, [R0,#0x198]
VLDR            S2, [R5,#0x23C]
VMLA.F32        S0, S2, S1
VLDR            S1, =360.0
VSTR            S0, [R0,#0x198]
VMOV            R1, S0
CMP             R1, R2
VSUBGE.F32      S0, S0, S1
BGE             loc_1B88E8
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S1
BCC             loc_1B88F8
VSTR            S0, [R0,#0x198]
VLDR            S0, [R5,#0x244]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =3.0
VLDRGT          S0, =1.0
VLDRLE          S0, =-1.0
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x1A0]
MOV             R0, R5
BL              sub_2DDB14
LDR             R0, =0x39A4
STR             R6, [R7]
STR             R6, [R0,R4]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
DCFS 0.0
DCFS 110.0
DCFS 75.0
DCFS 200.0
DCFS 0.8
DCFS 0.1
DCFS 40.744
DCFS 111.0
DCFS 57.296
DCFS 180.0
DCD 0x43B40000
DCFS 360.0
DCFS 1.0
DCFS -1.0
DCFS 3.0
TST             R0, #1
BEQ             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x198
LDR             R0, [R5]
CMP             R0, #0
BNE             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, R4
BL              sub_1B74E8
LDR             R0, =0x39A4
LDR             R0, [R0,R4]
CMP             R0, #0
STREQ           R6, [R5]
BEQ             loc_1B8B2C
ADD             R9, R4, #0x3800
ADD             R9, R9, #0x1A8
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R0,#0x108]
LDR             R0, [R9]
ADD             R0, R0, #0x108
VLDM            R0, {S2-S3}
VSUB.F32        S1, S1, S2
VSUB.F32        S0, S0, S3
BL              sub_4645C0
VLDR            S1, =0.024544
VLDR            S16, =1.5708
LDR             R7, [R9]
VMLA.F32        S16, S0, S1
CMP             R7, #0
BEQ             loc_1B8A20
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #8
BNE             loc_1B8A20
LDRB            R0, [R7,#0xAAC]
CMP             R0, #3
LDREQ           R0, [R7,#0xAA8]
BEQ             loc_1B8A24
MOV             R0, #0
LDR             R1, =0x40490FDB
VLDR            S0, [R0,#0x23C]
VLDR            S1, =6.2832
VSUB.F32        S0, S16, S0
VMOV            R0, S0
CMP             R0, R1
VSUBGT.F32      S0, S0, S1
BGT             loc_1B8A34
LDR             R1, =0xC0490FDB
VMOV            R0, S0
CMP             R0, R1
VADDHI.F32      S0, S0, S1
BHI             loc_1B8A48
ADD             R7, R4, #0x3800
VSTR            S0, [R7,#0x194]
LDR             R8, [R9]
CMP             R8, #0
BEQ             loc_1B8A94
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
BNE             loc_1B8A94
LDRB            R0, [R8,#0xAAC]
CMP             R0, #3
LDREQ           R0, [R8,#0xAA8]
BEQ             loc_1B8A98
MOV             R0, #0
VLDR            S1, =0.0
VLDR            S0, [R0,#0x244]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R7,#0x194]
VLDR            S3, =0.5
VNEGLT.F32      S0, S0
VDIV.F32        S2, S1, S0
VADD.F32        S0, S2, S3
VCVT.U32.F32    S0, S0
VMOV            R0, S0
VSTR            S0, [R5]
CMP             R0, #0
BEQ             loc_1B8AE0
VCVT.F32.S32    S0, S0
VDIV.F32        S2, S1, S0
VSTR            S2, [R7,#0x194]
B               loc_1B8B2C
LDR             R8, [R9]
CMP             R8, #0
BEQ             loc_1B8B14
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
BNE             loc_1B8B14
LDRB            R0, [R8,#0xAAC]
CMP             R0, #3
LDREQ           R0, [R8,#0xAA8]
BEQ             loc_1B8B18
MOV             R0, #0
ADD             R0, R0, #0x23C
VLDR            S1, [R7,#0x194]
VLDR            S0, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R0]
LDR             R0, =0x39A8
LDR             R7, [R0,R4]
CMP             R7, #0
BEQ             loc_1B8B64
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #8
BNE             loc_1B8B64
LDRB            R0, [R7,#0xAAC]
CMP             R0, #3
LDREQ           R0, [R7,#0xAA8]
BEQ             loc_1B8B68
MOV             R0, #0
MOV             R1, #0x21 ; '!'
STRB            R6, [R0,#0x238]
LDR             R0, [R4,#8]
VLDR            S0, =8.0
STRH            R1, [R0]
VLDR            S1, [R5]
VMOV.F32        S2, S0
LDR             R0, [R4,#8]
VCVT.F32.S32    S3, S1
MOV             R1, #0
ADD             R0, R0, #6
STRH            R1, [R0]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VCVTCC.F32.S32  S0, S1
VCVT.S32.F32    S0, S0
VMOV            R2, S0
SXTH            R1, R2
CMP             R1, #1
MOVLT           R1, #1
STRHLT          R1, [R0,#2]
BLT             loc_1B8BC4
STRH            R1, [R0,#2]
STRB            R6, [R0,#4]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#4]; jumptable 001B7D70 case 32
LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             loc_1B8C34
ADD             R1, R4, #0x1100
LDRSH           R2, [R1,#0xF4]
LDRSH           R1, [R1,#0xF6]
CMP             R1, R2
BGT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R2, [R0,#0x5E0]
MOV             R1, #0xA
MOV             R2, R2,LSL#17
TST             R1, R2,LSR#26
BEQ             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
VLDR            S0, [R0,#0x174]
VLDR            S1, =0.0
ADD             R0, R4, #0x1000
MOV             R2, #0
VCMPE.F32       S1, S0
MOV             R1, #0xC
VMRS            APSR_nzcv, FPSCR
VNEGHI.F32      S0, S0
VSTR            S0, [R0,#0x200]
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1F4
B               loc_1B81F8
LDR             R0, [R4,#8]
LDR             R2, =0x43B40000
VLDR            S1, =360.0
STRH            R6, [R0]
ADD             R0, R4, #0x3800
VLDR            S0, [R0,#0x18C]
VMOV            R1, S0
CMP             R1, R2
VSUBGT.F32      S0, S0, S1
VSTRGT          S0, [R0,#0x18C]
BGT             loc_1B8C4C
ADD             R1, R4, #0x1000
VLDR            S17, =0.0
VLDR            S1, [R1,#0x198]
ADD             R5, R4, #0x3800
VCMPE.F32       S16, S17
VADD.F32        S0, S1, S0
ADD             R5, R5, #0x1BC
VMRS            APSR_nzcv, FPSCR
VSTR            S0, [R1,#0x198]
VSTR            S17, [R0,#0x18C]
LDR             R0, [R4,#4]
VNEGLT.F32      S16, S16
ADD             R0, R0, #0x400
VSTR            S16, [R0,#0x78]
BL              sub_4635D8
MOV             R7, R0
MOV             R0, R5
BL              sub_5A26D0
LDM             R7, {R0-R2}
ADD             R3, R5, #0x1C
VLDR            S0, =1.0
VLDR            S1, =23.0
STM             R3, {R0-R2}
ADD             R3, R5, #4
VLDR            S2, =145.0
STM             R3, {R0-R2}
ADD             R2, SP, #0xC0+var_B8
VSTR            S17, [SP,#0xC0+var_B8]
VSTR            S0, [SP,#0xC0+var_B4]
VSTR            S17, [SP,#0xC0+var_B0]
VLDR            S0, =135.0
MOV             R1, #0
MOV             R0, R5
BL              sub_5A28C4
NOP
NOP
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
DCFS 0.024544
DCFS 1.5708
DCFS 6.2832
DCD 0xC0490FDB
DCFS 0.5
DCD 0x39A8
DCFS 8.0
DCFS 23.0
DCFS 145.0
DCFS 135.0
LDR             R0, [R4,#8]; jumptable 001B7D70 case 33
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, #0x22 ; '"'
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #0
MOV             R2, #0x14
ADD             R0, R0, #6
STRH            R1, [R0]
B               loc_1B825C
LDR             R0, [R4,#8]; jumptable 001B7D70 case 34
ADD             R2, SP, #0xC0+var_A4
LDRSB           R1, [R0,#4]
MOV             R0, R4
BL              sub_1AE520
CMP             R0, #0
NOP
BEQ             loc_1B8D80
CMP             R0, #3
BEQ             loc_1B8E10
B               loc_1B8D98
LDR             R0, =dword_6EDA78
MOV             R1, #2
LDR             R0, [R0,R1,LSL#2]
LDR             R1, =0xC03
TST             R0, R1
BEQ             loc_1B8F48
LDR             R1, [R4,#8]
MOV             R0, #0x26 ; '&'
STRH            R0, [R1]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
MOV             R5, R0
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRSH           R0, [R5,#2]
VLDR            S1, =1.0
VMOV            S2, R0
VSUB.F32        S0, S1, S0
VCVT.F32.S32    S3, S2
VLDR            S2, =0.5
VSUB.F32        S1, S3, S1
VMLA.F32        S2, S1, S0
VCVT.S32.F32    S0, S2
VMOV            R1, S0
STRH            R1, [R5]
STRB            R6, [R5,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
NOP
NOP
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R2, R4, #0x1000
ADD             R1, SP, #0xC0+var_B0
ADD             R5, SP, #0xC0+var_B4
ADD             R7, SP, #0xC0+var_A0
ADD             R2, R2, #0x1BC
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R7
MOV             R1, R5
MOV             R0, R4
BL              sub_1AD930
ADD             R1, R4, #0x3800
ADD             R0, R4, #0x1000
VLDR            S0, [R1,#0x19C]
VLDR            S1, [R0,#0x1BC]
VLDR            S2, =0.0020619
ADD             R1, SP, #0xC0+var_B0
VADD.F32        S0, S1, S0
VMUL.F32        S16, S1, S2
VLDR            S1, =50.0
VLDR            S2, =0.0
VSTR            S0, [R0,#0x1BC]
VADD.F32        S0, S0, S1
VLDR            S1, [SP,#0xC0+var_A0]
VLDR            S3, [SP,#0xC0+var_B4]
VMUL.F32        S1, S0, S1
VMUL.F32        S0, S0, S3
VLDM            R1, {S3-S5}
VADD.F32        S2, S5, S2
VADD.F32        S1, S3, S1
VADD.F32        S0, S4, S0
VSTR            S1, [R0,#0x1CC]
VSTR            S0, [R0,#0x1D0]
VSTR            S2, [R0,#0x1D4]
LDR             R1, [R4,#8]
MOV             R0, #0x24 ; '$'
STRH            R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R0, #6
MOV             R5, R1
MOV             R0, R1
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
LDRSH           R0, [R5,#2]
VLDR            S1, =1.0
VLDR            S2, =0.5
VMOV            S3, R0
VCVT.F32.S32    S3, S3
VSUB.F32        S4, S3, S1
VMOV.F32        S3, S2
VMLA.F32        S3, S4, S0
VCVT.S32.F32    S0, S3
VMOV            R0, S0
STRH            R0, [R5]
STRB            R6, [R5,#4]
LDR             R1, [R4,#8]
LDRSH           R0, [R1,#8]
VMOV            S0, R0
VCVT.F32.S32    S3, S0
VDIV.F32        S0, S1, S3
VSUB.F32        S3, S16, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSUB.F32        S0, S0, S1
VMLA.F32        S2, S0, S3
VCVT.S32.F32    S0, S2
VMOV            R0, S0
STRH            R0, [R1,#6]
STRB            R6, [R1,#0xA]
LDR             R1, [SP,#0xC0+var_A4]
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1A4
STR             R1, [R0]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, #0x26 ; '&'
VLDR            S0, =0.0
ADD             R2, R4, #0x3800
STRH            R0, [R1]
VSTR            S0, [R2,#0x19C]
LDR             R0, [R4,#8]
LDRH            R1, [R0,#8]
LDRH            R2, [R0,#6]
SUB             R1, R1, R2
SUB             R1, R1, #1
STRH            R1, [R0,#6]
STRB            R6, [R0,#0xA]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
NOP
NOP
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, =0x39A4; jumptable 001B7D70 case 36
LDR             R5, [R0,R4]
CMP             R5, #0
BEQ             loc_1B8FC8
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, #0x25 ; '%'
ADD             R2, R4, #0x1000
STRH            R0, [R1]
VLDR            S3, =1.0
VLDR            S5, [R2,#0x1B8]
VLDR            S0, =85.0
VLDR            S1, =400.0
VSUB.F32        S5, S3, S5
VMOV.F32        S2, S0
VLDR            S4, =50.0
LDR             R0, [R4,#8]
ADD             R1, R0, #6
VMLA.F32        S0, S5, S1
VADD.F32        S0, S0, S1
VLDR            S1, =0.5
VADD.F32        S0, S0, S2
VLDR            S2, =20.0
VSUB.F32        S0, S0, S4
VLDR            S4, =0.0025
VMUL.F32        S4, S0, S4
VMUL.F32        S2, S2, S4
VLDR            S4, =535.0
VCVT.S32.F32    S2, S2
VMOV            R0, S2
VDIV.F32        S2, S4, S0
SXTH            R0, R0
VMOV            S0, R0
STRH            R0, [R1,#2]
LDR             R1, [R4,#8]
VCVT.F32.S32    S0, S0
VSUB.F32        S0, S0, S3
VMLA.F32        S1, S0, S2
VCVT.S32.F32    S0, S1
VMOV            R0, S0
STRH            R0, [R1,#6]
STRB            R6, [R1,#0xA]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 37
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R7, R4, #0x3800
ADD             R7, R7, #0x1A4
LDR             R0, [R7]
LDRB            R0, [R0,#0xAAC]
CMP             R0, #3
BNE             loc_1B862C
LDR             R0, =0x39B8
MOV             R2, #0x1F
MOV             R9, #1
STRH            R2, [R1]
STRB            R9, [R0,R4]
LDR             R5, [R7]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
ADD             R8, R4, #0x3800
CMPEQ           R0, #3
LDREQ           R5, [R5,#0xAA8]
MOVNE           R5, #0
ADD             R0, R5, #0x23C
VLDM            R0, {S2-S3}
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1AC
VLDM            R0, {S0-S1}
VADD.F32        S16, S2, S3
VNEG.F32        S0, S0
BL              sub_4645C0
VLDR            S1, =0.024544
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x23C]
VLDR            S1, [R5,#0x240]
VADD.F32        S0, S0, S1
VSUB.F32        S0, S16, S0
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x240]
LDR             R5, [R7]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
VLDR            S0, =0.0
ADD             R1, R4, #0x1000
CMPEQ           R0, #3
LDREQ           R0, [R5,#0xAA8]
MOVNE           R0, #0
STRB            R9, [R0,#0x238]
VSTR            S0, [R8,#0x18C]
VSTR            S0, [R1,#0x1D8]
MOV             R0, #1
B               loc_1B9198
DCFS 90.0
DCFS 0.71111
DCFS 1.0
DCFS 0.0020619
DCFS 50.0
DCFS 0.0
DCFS 400.0
DCFS 85.0
DCFS 20.0
DCFS 0.0025
DCFS 535.0
DCFS 0.024544
LDR             R1, [R4,#8]
STRB            R0, [R1,#0xA]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 38
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, =0x39A8
MOV             R2, #0x1F
STRH            R2, [R1]
LDR             R5, [R0,R4]
CMP             R5, #0
BEQ             loc_1B91FC
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B91FC
LDRB            R0, [R5,#0xAAC]
CMP             R0, #3
LDREQ           R0, [R5,#0xAA8]
BEQ             loc_1B9200
MOV             R0, #0
MOV             R1, #1
STRB            R1, [R0,#0x238]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, R4; jumptable 001B7D70 case 27
BL              sub_1B2264
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
MOVLT           R0, #0x1B
BGE             loc_1B8224
B               loc_1B8048
ADD             R2, R4, #0x1000; jumptable 001B7D70 case 28
LDR             R0, [R2,#0x1B0]
ADD             R1, R0, #0xC0000000
SUBS            R1, R1, #0x2B40000
ADDNE           R1, R0, #0xBD000000
SUBSNE          R1, R1, #0x870000
BNE             loc_1B9280
LDR             R1, [R4,#8]
MOV             R0, #0x1D
MOV             R3, #2
VLDR            S0, =0.0
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #0
STRH            R1, [R0,#6]!
STRH            R3, [R0,#2]
STRB            R6, [R0,#4]
VSTR            S0, [R2,#0x1B0]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, =dword_6EDA78
MOV             R1, #2
LDR             R0, [R0,R1,LSL#2]
LDR             R1, =0x801
TST             R0, R1
LDREQ           R1, [R4,#8]
MOVEQ           R0, #0x1C
BEQ             loc_1B8048
LDR             R0, [R4,#8]
STRH            R6, [R0]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 29
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R0, #0x1E
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #0
MOV             R2, #2
ADD             R0, R0, #6
B               loc_1B8D4C
LDR             R0, [R4,#8]; jumptable 001B7D70 case 30
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
B               loc_1BA5CC
LDR             R0, [R4,#8]; jumptable 001B7D70 cases 39-41
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S23, =1.0
VLDR            S19, =1.5708
VLDR            S17, =40.744
VSUB.F32        S0, S23, S0
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S17
BL              sub_464380
VSUB.F32        S18, S23, S0
LDR             R0, [R4,#8]
ADD             R1, R0, #6
ADD             R0, SP, #0xC0+var_68
BL              sub_141EE8
LDRSH           R0, [SP,#0xC0+var_68]
CMP             R0, #0
SUBGT           R0, R0, #1
STRHGT          R0, [SP,#0xC0+var_68]
ADD             R0, SP, #0xC0+var_68
BL              sub_45AAB8
VSUB.F32        S0, S23, S0
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S17
BL              sub_464380
ADD             R8, R4, #0x3800
ADD             R8, R8, #0x264
VLDR            S21, =0.0
LDRB            R0, [R8]
VMOV.F32        S17, S21
CMP             R0, #0
CMPNE           R0, #1
VLDREQ          S0, =1.1765
BEQ             loc_1B9408
CMP             R0, #2
CMPNE           R0, #3
VLDREQ          S0, =1.6667
BEQ             loc_1B9408
ADD             R5, R4, #0x3800
VLDR            S27, =90.0
VLDR            S22, =-90.0
VLDR            S25, =0.71111
VMUL.F32        S0, S17, S27
VSTR            S0, [R5,#0x26C]
VADD.F32        S0, S0, S22
VMUL.F32        S0, S0, S25
BL              sub_464318
VMOV.F32        S1, S22
VLDR            S20, =180.0
VMUL.F32        S19, S0, S20
VMLA.F32        S1, S17, S27
VMUL.F32        S0, S1, S25
BL              sub_464380
VLDR            S26, =85.0
VMOV.F32        S1, S26
VMLA.F32        S1, S0, S26
VSTR            S1, [R5,#0x220]
LDRB            R0, [R8]
VLDR            S24, [R5,#0x268]
CMP             R0, #0
BEQ             loc_1B941C
CMP             R0, #1
BEQ             loc_1B9448
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_1B9470
B               loc_1B9488
VMUL.F32        S17, S18, S0
VMOV            R0, S17
CMP             R0, #0x3F800000
VMOVGT.F32      S17, S23
B               loc_1B9394
VLDR            S1, =360.0
LDR             R0, [R5,#0x260]
VMUL.F32        S1, S18, S1
VMOV            S0, R0
ADD             R1, R0, #0x40000000
ADDS            R1, R1, #0x800000
VMOVEQ.F32      S16, S20
VMOVNE.F32      S16, S21
VNMUL.F32       S0, S1, S0
VSTR            S0, [R5,#0x268]
B               loc_1B9488
VLDR            S1, =360.0
VLDR            S0, [R5,#0x260]
VMUL.F32        S1, S18, S1
VMOV            R0, S0
ADD             R1, R0, #0x40000000
ADDS            R1, R1, #0x800000
VMOVEQ.F32      S16, S20
VMOVNE.F32      S16, S21
VNMUL.F32       S0, S1, S0
B               loc_1B9484
VLDR            S0, =270.0
VLDR            S1, [R5,#0x260]
VMOV.F32        S16, S22
VMUL.F32        S0, S18, S0
VNMUL.F32       S0, S0, S1
VSTR            S0, [R5,#0x268]
VLDR            S0, [R5,#0x268]
VADD.F32        S0, S0, S16
VMUL.F32        S0, S0, S25
BL              sub_464318
VMUL.F32        S0, S0, S19
VSTR            S0, [R5,#0x21C]
VLDR            S0, [R5,#0x268]
VADD.F32        S0, S0, S16
VMUL.F32        S0, S0, S25
BL              sub_464380
VMUL.F32        S0, S0, S19
ADD             R7, R4, #0x3800
ADD             R7, R7, #0x21C
VSTR            S0, [R5,#0x224]
LDR             R0, [R4,#4]
VLDR            S1, [R7]
ADD             R0, R0, #0x108
VLDR            S0, [R0]
VADD.F32        S0, S1, S0
VSTR            S0, [R7]
VLDR            S0, [R7,#4]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R7,#4]
VLDR            S0, [R7,#8]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R7,#8]
BL              sub_4635D8
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
ADD             R3, SP, #0xC0+var_90
STR             R1, [SP,#0xC0+var_94]
STR             R2, [SP,#0xC0+var_98]
STM             R3, {R0,R6}
ADD             R1, R5, #0x21C
STR             R6, [SP,#0xC0+var_88]
STRB            R6, [SP,#0xC0+var_84]
LDM             R1, {R1-R3}
ADD             R12, SP, #0xC0+var_80
MOV             R9, #1
MOV             R0, R4
STM             R12, {R1-R3}
ADD             R1, R5, #0x228
ADD             R12, SP, #0xC0+var_AC
LDM             R1, {R1-R3}
STM             R12, {R1-R3}
ADD             R3, SP, #0xC0+var_98
LDR             R1, [R5,#0x230]
ADD             R2, SP, #0xC0+var_AC
STR             R9, [SP,#0xC0+var_C0]
STR             R1, [SP,#0xC0+var_78]
ADD             R1, SP, #0xC0+var_80
STR             R9, [SP,#0xC0+var_BC]
BL              sub_1AEC14
CMP             R0, #0
NOP
BNE             loc_1B95AC
ADD             R3, SP, #0xC0+var_80
ADD             R12, SP, #0xC0+var_AC
LDM             R3, {R0-R2}
ADD             R3, SP, #0xC0+var_98
STR             R9, [SP,#0xC0+var_C0]
STR             R9, [SP,#0xC0+var_BC]
STM             R12, {R0-R2}
ADD             R2, SP, #0xC0+var_AC
MOV             R1, R7
MOV             R0, R4
BL              sub_1AEC14
CMP             R0, #0
NOP
BEQ             loc_1B9A04
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0xC0+var_98]
VLDR            S1, [SP,#0xC0+var_90]
VLDR            S3, [R0,#0x108]
VLDR            S2, [R0,#0x110]
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S1, S2
VDIV.F32        S3, S0, S19
VCMPE.F32       S21, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS          R0, S3
BLS             loc_1B95E8
VMOV.F32        S0, S3
VNEG.F32        S0, S0
VMOV            R0, S0
CMP             R0, #0x3F800000
BGT             loc_1B96BC
VDIV.F32        S0, S2, S19
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VMOVGE          R0, S0
BGE             loc_1B9610
VMOV.F32        S2, S0
VNEG.F32        S2, S2
VMOV            R0, S2
CMP             R0, #0x3F800000
BGT             loc_1B96BC
VLDR            S2, [R5,#0x224]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1B9708
VLDR            S1, [SP,#0xC0+var_AC]
VLDR            S2, [SP,#0xC0+var_80]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_1B9708
VLDR            S1, [SP,#0xC0+var_A8]
VLDR            S2, [SP,#0xC0+var_7C]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_1B9708
VLDR            S1, [SP,#0xC0+var_A4]
VLDR            S2, [SP,#0xC0+var_78]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_1B9708
BL              sub_5F5C58
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x268]
LDR             R0, [R4,#4]
VLDR            S1, [SP,#0xC0+var_98]
VLDR            S2, [R0,#0x108]
VSUB.F32        S1, S1, S2
VCMPE.F32       S1, S21
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B96BC
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S0
VCMPE.F32       S0, S21
VNEGLT.F32      S1, S1
VSUB.F32        S1, S20, S1
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S0, S23
VLDRCC          S0, =-1.0
VMUL.F32        S0, S1, S0
VSTR            S0, [R5,#0x268]
LDRB            R0, [R8]
CMP             R0, #1
CMPNE           R0, #0
BEQ             loc_1B9754
CMP             R0, #3
CMPNE           R0, #2
BEQ             loc_1B97B4
B               loc_1B9800
DCD 0x801
DCFS 1.5708
DCFS 40.744
DCFS 1.1765
DCFS 1.6667
DCFS -90.0
DCFS 180.0
DCFS 360.0
DCFS 270.0
DCFS 57.296
DCFS -1.0
VMOV.F32        S0, S3
BL              sub_5F5B2C
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x268]
VCMP.F32        S0, S21
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, =360.0
VSTREQ          S0, [R5,#0x268]
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0xC0+var_90]
VLDR            S1, [R0,#0x110]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VLDRCC          S0, [R5,#0x268]
VNEGCC.F32      S0, S0
BCS             loc_1B96BC
B               loc_1B96B8
LDR             R1, [R5,#0x260]
LDR             R2, =0xBF800000
CMP             R1, R2
BNE             loc_1B9778
VLDR            S0, [R5,#0x268]
VLDR            S1, =-180.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R5,#0x268]
B               loc_1B979C
CMP             R1, #0x3F800000
BNE             loc_1B979C
VLDR            S0, [R5,#0x268]
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B979C
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R5,#0x268]
CMP             R1, R2
VMOVEQ.F32      S0, S20
VMOVNE.F32      S0, S21
VLDR            S1, [R5,#0x268]
VADD.F32        S16, S0, S1
B               loc_1B9800
LDR             R1, [R5,#0x260]
CMP             R1, #0x3F800000
BNE             loc_1B97F0
VLDR            S0, [R5,#0x268]
LDR             R2, =0xC2B40000
VMOV            R1, S0
CMP             R1, R2
BCS             loc_1B97F0
LDR             R1, =0x43340000
VMOV            R2, S0
CMP             R2, R1
BGE             loc_1B97F0
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R5,#0x268]
VLDR            S0, [R5,#0x268]
VSUB.F32        S0, S0, S22
VSTR            S0, [R5,#0x268]
VADD.F32        S16, S0, S22
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_1B981C
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_1B983C
B               loc_1B985C
VLDR            S0, [R5,#0x268]
VLDR            S1, =0.0027778
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =1.1765
VNEGLT.F32      S0, S0
B               loc_1B9858
VLDR            S0, [R5,#0x268]
VLDR            S1, =0.0037037
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =1.6667
VNEGLT.F32      S0, S0
VMUL.F32        S17, S0, S1
VMOV            R0, S17
CMP             R0, #0x3F800000
VMOVGT.F32      S17, S23
VMUL.F32        S0, S17, S27
VMLA.F32        S22, S17, S27
VSTR            S0, [R5,#0x26C]
VMUL.F32        S0, S22, S25
BL              sub_464380
VMOV.F32        S1, S26
VMUL.F32        S16, S16, S25
VMLA.F32        S1, S0, S26
VMOV.F32        S0, S16
VSTR            S1, [R5,#0x220]
BL              sub_464318
LDR             R0, [R4,#4]
VLDR            S1, [R0,#0x108]
VMLA.F32        S1, S0, S19
VMOV.F32        S0, S16
VSTR            S1, [R5,#0x21C]
BL              sub_464380
LDR             R0, [R4,#4]
MOV             R2, #0
VLDR            S1, [R0,#0x110]
VMLA.F32        S1, S0, S19
VSTR            S1, [R5,#0x224]
VLDR            S0, [R5,#0x220]
VLDR            S1, [R0,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x220]
LDR             R0, [R4,#8]
LDRSH           R1, [R0,#6]
STRH            R2, [R0,#6]!
CMP             R1, #1
BGE             loc_1B98EC
STRH            R9, [R0,#2]
B               loc_1B98F0
STRH            R1, [R0,#2]
STRB            R6, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x2C ; ','
STRH            R0, [R1]
LDR             R0, =0x3A84
MOV             R1, #0xF
STR             R1, [R0,R4]
LDR             R0, [R4,#8]
STRB            R9, [R0,#0xA]
LDR             R0, [R4,#8]
LDRSH           R2, [R0,#6]
LDRSH           R1, [R0,#8]
CMP             R2, R1
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
MOV             R1, #0x2A ; '*'
VLDR            S0, =0.1
STRH            R1, [R0]
VSTR            S21, [R5,#0x214]
VSTR            S0, [R5,#0x214]
VLDR            S1, [R5,#0x260]
LDR             R8, =0xBF800000
VMOV            R0, S1
VMUL.F32        S1, S0, S1
VLDR            S16, =360.0
CMP             R0, R8
VMOVEQ.F32      S0, S20
VMOVNE.F32      S0, S21
ADD             R1, R5, #0x21C
ADD             R0, R5, #0x228
VLDM            R1, {S2-S4}
VSTR            S26, [R5,#0x220]
VMLS.F32        S0, S16, S1
VSTM            R0, {S2-S4}
VMUL.F32        S0, S0, S25
BL              sub_464318
VMOV.F32        S1, S20
VLDR            S2, [R5,#0x214]
VMUL.F32        S1, S0, S1
VLDR            S0, [R5,#0x260]
VMOV            R0, S0
VMUL.F32        S2, S2, S0
CMP             R0, R8
VMOVEQ.F32      S0, S20
VMOVNE.F32      S0, S21
VSTR            S1, [R5,#0x21C]
VMLS.F32        S0, S16, S2
VMUL.F32        S0, S0, S25
BL              sub_464380
VMUL.F32        S0, S0, S20
LDR             R0, =0x3A3C
VSTR            S0, [R5,#0x224]
VSTR            S21, [R5,#0x234]
VSTR            S21, [R5,#0x238]
STRB            R9, [R0,R4]
LDR             R0, [R4,#4]
VLDR            S0, [R7]
ADD             R0, R0, #0x108
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R7]
VLDR            S0, [R7,#4]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R7,#4]
VLDR            S0, [R7,#8]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R7,#8]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#4]
VLDR            S0, =23.0
ADD             R1, R0, #0x23400
LDR             R0, [R1,#0x10C]
LDR             R2, [R1,#0x108]
LDR             R1, [R1,#0x110]
VMOV            S1, R0
STR             R2, [SP,#0xC0+var_60]
STRD            R0, R1, [SP,#0xC0+var_5C]
ADD             R1, SP, #0xC0+var_60
MOV             R0, R4
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xC0+var_5C]
VMOV            S0, R2
VLDR            S1, [R5,#0x21C]
MOV             R2, SP
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R5,#0x268]
VNEGLT.F32      S0, S0
VADD.F32        S2, S1, S16
VADD.F32        S1, S16, S24
BL              sub_1B1FE0
CMP             R0, #0
NOP
BEQ             loc_1B9914
VMOV            R0, S16
ADD             R1, R0, #0x3C000000
ADDS            R1, R1, #0x14C0000
BNE             loc_1B9AE0
LDR             R0, [R5,#0x260]
VLDR            S0, [SP,#0xC0+var_C0]
ADD             R1, R0, #0x40000000
ADDS            R1, R1, #0x800000
BNE             loc_1B9AA4
LDR             R1, =0x43870000
VMOV            R0, S0
CMP             R0, R1
BLE             loc_1B9AFC
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0xC0+var_C0]
B               loc_1B9AFC
DCD 0xBF800000
DCFS -180.0
DCD 0xC2B40000
DCD 0x43340000
DCFS 0.0027778
DCFS 0.0037037
DCD 0x3A84
DCFS 0.1
DCD 0x3A3C
DCFS 23.0
DCD 0x43870000
VCMP.F32        S16, S21
VMRS            APSR_nzcv, FPSCR
BNE             loc_1B9B24
VLDR            S0, [SP,#0xC0+var_C0]
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0xC0+var_C0]
VLDR            S0, [SP,#0xC0+var_C0]
MOV             R2, #0
VSUB.F32        S0, S0, S16
VSTR            S0, [R5,#0x268]
LDR             R0, [R4,#8]
LDRSH           R1, [R0,#6]
STRH            R2, [R0,#6]!
CMP             R1, #1
BGE             loc_1B98EC
B               loc_1B98E4
LDR             R0, =0x43340000
VMOV            R1, S16
CMP             R1, R0
BNE             loc_1B9AFC
VLDR            S0, [SP,#0xC0+var_C0]
VMOV            R1, S0
CMP             R1, R0
VLDRLT          S1, =360.0
VADDLT.F32      S0, S0, S1
BGE             loc_1B9AFC
B               loc_1B9AF8
ADD             R7, R4, #0x3A80; jumptable 001B7D70 case 42
LDRB            R0, [R7]
CMP             R0, #0
BEQ             loc_1B9DBC
ADD             R5, R4, #0x3800
LDR             R0, =0xC0A66666
LDR             R2, [R5,#0x214]
ADD             R1, R0, #0x3F800000
VMOV            S0, R2
ADD             R0, R0, R2
CMP             R0, R1
BHI             loc_1B9DD0
VLDR            S1, =0.1
VLDR            S18, =20.0
VLDR            S16, =1.0
VSUB.F32        S0, S0, S1
VMOV            R0, S0
CMP             R0, #0x3F000000
BLE             loc_1B9DD0
LDR             R1, =0x3F59999A
VMOV            R0, S0
CMP             R1, R0
BLE             loc_1B9DD0
LDR             R0, =dword_6E1320
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1B9BE8
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1B9BE8
LDR             R0, =flt_6E1324
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
LDR             R2, =flt_6E1324
ADD             R1, R4, #0x3A40
VLDR            S0, =30.0
VLDR            S17, =0.0
LDM             R2, {R0,R2}
ADD             R3, SP, #0xC0+var_5C
STM             R1, {R0,R2}
ADD             R1, R4, #0x3A40
VLDR            S1, [R5,#0x260]
ADD             R0, R4, #0x3A40
VMUL.F32        S0, S1, S0
VSTR            S0, [R5,#0x240]
VMUL.F32        S2, S0, S0
VLDR            S1, [R5,#0x224]
VNEG.F32        S1, S1
VSTR            S1, [R5,#0x244]
VMLA.F32        S2, S1, S1
VSQRT.F32       S3, S2
VDIV.F32        S1, S16, S3
VMUL.F32        S0, S0, S1
VSTR            S0, [R1]
VLDR            S0, [R0,#4]
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#4]
VLDR            S0, [R5,#0x240]
ADD             R1, R5, #0x228
VMOV.F32        S1, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VDIV.F32        S2, S16, S0
VMUL.F32        S0, S1, S2
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VMUL.F32        S0, S0, S2
VSTR            S0, [R0,#4]
VSTR            S18, [R5,#0x248]
LDM             R1, {R0-R2}
STM             R3, {R0-R2}
VSTR            S17, [SP,#0xC0+var_54]
VLDR            S0, [R5,#0x21C]
VLDR            S2, [R5,#0x240]
VLDR            S1, [R5,#0x248]
VMLA.F32        S0, S2, S1
VSTR            S0, [R5,#0x21C]
VLDR            S0, [R5,#0x224]
VLDR            S2, [R5,#0x244]
VMLA.F32        S0, S2, S1
VSTR            S0, [R5,#0x224]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VSTRCC          S17, [R5,#0x224]
VSTRCC          S17, [R5,#0x244]
VLDR            S18, [R5,#0x21C]
VLDR            S16, [R5,#0x220]
BL              sub_4635D8
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
ADD             R3, SP, #0xC0+var_B0
STR             R1, [SP,#0xC0+var_B4]
STR             R2, [SP,#0xC0+var_B8]
STM             R3, {R0,R6}
MOV             R0, #1
VMOV.F32        S2, S17
VMOV.F32        S1, S16
VMOV.F32        S0, S18
ADD             R3, R4, #0x3800
STR             R0, [SP,#0xC0+var_C0]
ADD             R3, R3, #0x254
ADD             R2, SP, #0xC0+var_B8
ADD             R1, SP, #0xC0+var_5C
MOV             R0, R4
STR             R6, [SP,#0xC0+var_A8]
STRB            R6, [SP,#0xC0+var_A4]
BL              sub_1B03C0
CMP             R0, #0
NOP
BEQ             loc_1B9D70
ADD             R7, SP, #0xC0+var_B8
ADD             R5, R5, #0x21C
LDM             R7, {R0,R1,R3}
MOV             R2, #0x2F ; '/'
STM             R5, {R0,R1,R3}
MOV             R1, #0
LDR             R0, [R4,#8]
STRH            R2, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0xD
STRH            R1, [R0,#6]!
STRH            R2, [R0,#2]
STRB            R6, [R0,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
NOP
NOP
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDRB            R0, [SP,#0xC0+var_A4]
CMP             R0, #0
BEQ             loc_1B9DA0
LDR             R1, [R4,#8]
MOV             R0, #0x30 ; '0'
MOV             R2, #0
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #9
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
B               loc_1B9D54
LDR             R0, [R4,#8]
LDRH            R1, [R0]
CMP             R1, #0x30 ; '0'
MOVNE           R1, #0x2E ; '.'
STRHNE          R1, [R0]
BNE             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
B               loc_1B9DD0
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x4B4]
TST             R0, #4
MOVNE           R0, #2
STRBNE          R0, [R7]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0xC0+var_70
BLX             R2
VLDR            S19, =0.0
VLDR            S0, [SP,#0xC0+var_6C]
ADD             R0, R4, #0x3800
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R0,#0x238]
BCS             loc_1B9E84
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B9E60
VLDR            S1, =20.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#0x238]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDRCC          S0, =-10.0
VSTRCC          S0, [R0,#0x238]
B               loc_1B9E70
DCFS 360.0
DCD 0xC0A66666
DCFS 20.0
DCFS 1.0
DCD 0x3F59999A
DCD dword_6E1320
DCFS 0.0
DCD flt_6E1324
DCFS 30.0
DCD off_6D1648
DCFS -10.0
VLDRCC          S1, =20.0
VSUBCC.F32      S0, S0, S1
VLDRCS          S0, =-10.0
VSTR            S0, [R0,#0x238]
LDR             R2, =0xC1200000
VMOV            R1, S0
CMP             R1, R2
VLDRCS          S0, =-10.0
B               loc_1B9ED8
NOP
BLE             loc_1BA010
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B9EB8
VLDR            S1, =20.0
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x238]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDRCC          S0, =10.0
VSTRCC          S0, [R0,#0x238]
B               loc_1B9EC8
VLDRGT          S1, =20.0
VADDGT.F32      S0, S0, S1
VLDRLE          S0, =10.0
VSTR            S0, [R0,#0x238]
LDR             R2, =0x41200000
VMOV            R1, S0
CMP             R1, R2
VLDRGE          S0, =10.0
VSTR            S0, [R0,#0x238]
ADD             R2, R0, #0x234
MOV             R5, R0
VLDM            R2, {S0-S1}
LDR             R1, =0x41F00000
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [R5,#0x234]
CMP             R0, R1
VLDRGT          S0, =30.0
VSTRGT          S0, [R5,#0x234]
BGT             loc_1B9F1C
LDR             R1, =0xC2AA0000
VMOV            R0, S0
CMP             R0, R1
VLDRCS          S0, =-85.0
VSTR            S0, [R5,#0x234]
VLDR            S18, [R5,#0x214]
VLDR            S1, =0.1
VLDR            S22, =1.0
VMOV.F32        S0, S18
LDR             R9, =0xBF800000
VLDR            S16, =180.0
VLDR            S20, =360.0
VLDR            S21, =0.71111
VLDR            S3, =85.0
VADD.F32        S0, S1, S0
ADD             R1, R5, #0x21C
VMOV            R0, S0
VSTR            S0, [R5,#0x214]
CMP             R0, #0x3F800000
VSUBGT.F32      S0, S0, S22
VSTRGT          S0, [R5,#0x214]
VLDR            S0, [R5,#0x260]
VLDR            S1, [R5,#0x214]
VMOV            R0, S0
VLDR            S2, [R5,#0x234]
VMUL.F32        S0, S1, S0
CMP             R0, R9
VMOVEQ.F32      S17, S16
VMOVNE.F32      S17, S19
VADD.F32        S2, S2, S3
LDM             R1, {R1-R3}
ADD             R0, R5, #0x228
STM             R0, {R1-R3}
VMLS.F32        S17, S20, S0
VSTR            S2, [R5,#0x220]
VMUL.F32        S23, S17, S21
VMOV.F32        S0, S23
BL              sub_464318
VMOV.F32        S1, S16
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x21C]
VMOV.F32        S0, S23
BL              sub_464380
VMOV.F32        S1, S16
ADD             R8, R4, #0x3800
ADD             R8, R8, #0x21C
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x224]
LDR             R0, [R4,#4]
VLDR            S1, [R8]
ADD             R0, R0, #0x108
VLDR            S0, [R0]
VADD.F32        S0, S1, S0
VSTR            S0, [R8]
VLDR            S0, [R8,#4]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R8,#4]
VLDR            S0, [R8,#8]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R8,#8]
LDRB            R0, [R7]
CMP             R0, #0
BNE             loc_1BA088
B               loc_1BA034
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDRCC          S1, =10.0
VADDCC.F32      S0, S0, S1
BCC             loc_1B9ED8
VLDRGT          S1, =10.0
VSUBGT.F32      S0, S0, S1
BLE             loc_1B9EDC
B               loc_1B9ED8
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #0x80
BEQ             loc_1BA088
VLDR            S0, [R5,#0x260]
VLDR            S1, [R5,#0x214]
VMOV            R1, S0
MOV             R3, #0
VMUL.F32        S1, S1, S0
CMP             R1, R9
VMOVEQ.F32      S0, S16
VMOVNE.F32      S0, S19
MOV             R1, #0x2B ; '+'
MOV             R2, #0xA
VMLS.F32        S0, S20, S1
VSTR            S0, [R5,#0x268]
STRH            R1, [R0]
LDR             R0, [R4,#8]
STRH            R3, [R0,#6]!
STRH            R2, [R0,#2]
STRB            R6, [R0,#4]
NOP
BL              sub_4635D8
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
ADD             R3, SP, #0xC0+var_98
STR             R1, [SP,#0xC0+var_9C]
STR             R2, [SP,#0xC0+var_A0]
STM             R3, {R0,R6}
ADD             R0, R5, #0x21C
STR             R6, [SP,#0xC0+var_90]
STRB            R6, [SP,#0xC0+var_8C]
LDM             R0, {R0-R2}
ADD             R3, SP, #0xC0+var_68
MOV             R7, #1
STM             R3, {R0-R2}
ADD             R2, R4, #0x3800
LDR             R0, [R5,#0x230]
ADD             R3, SP, #0xC0+var_A0
ADD             R2, R2, #0x228
STR             R0, [SP,#0xC0+var_60]
ADD             R1, SP, #0xC0+var_68
MOV             R0, R4
STR             R7, [SP,#0xC0+var_C0]
STR             R7, [SP,#0xC0+var_BC]
BL              sub_1AEC14
CMP             R0, #0
NOP
BNE             loc_1BA124
ADD             R3, SP, #0xC0+var_A0
ADD             R2, SP, #0xC0+var_68
MOV             R1, R8
MOV             R0, R4
STR             R7, [SP,#0xC0+var_C0]
STR             R7, [SP,#0xC0+var_BC]
BL              sub_1AEC14
CMP             R0, #0
NOP
BEQ             loc_1BA23C
VLDR            S4, [R5,#0x224]
VLDR            S0, [SP,#0xC0+var_98]
LDR             R0, [R4,#4]
VLDR            S1, [SP,#0xC0+var_A0]
VCMP.F32        S0, S4
VLDR            S3, [R0,#0x108]
VLDR            S2, [R0,#0x110]
VMRS            APSR_nzcv, FPSCR
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S0, S2
BEQ             loc_1BA1E8
VMOV.F32        S1, S16
VDIV.F32        S0, S2, S1
BL              sub_5F5C58
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x268]
LDR             R0, [R4,#4]
VLDR            S1, [SP,#0xC0+var_A0]
VLDR            S2, [R0,#0x108]
VSUB.F32        S1, S1, S2
VCMPE.F32       S1, S19
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BA1B0
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S0
VMOV.F32        S2, S16
VCMPE.F32       S0, S19
VNEGLT.F32      S1, S1
VSUB.F32        S1, S2, S1
VMRS            APSR_nzcv, FPSCR
VLDRCC          S22, =-1.0
VMUL.F32        S0, S1, S22
VSTR            S0, [R5,#0x268]
VLDR            S0, [R5,#0x268]
B               loc_1BA2FC
DCD 0xC1200000
DCFS 10.0
DCD 0x41200000
DCD 0x41F00000
DCD 0xC2AA0000
DCFS -85.0
DCFS 180.0
DCFS 0.1
DCFS 85.0
DCFS 0.71111
DCFS 57.296
DCFS -1.0
VCMPE.F32       S16, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S1, S16
VDIV.F32        S0, S1, S16
BL              sub_5F5B2C
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x268]
VCMP.F32        S0, S19
VMRS            APSR_nzcv, FPSCR
VSTREQ          S20, [R5,#0x268]
LDR             R0, [R4,#4]
VLDR            S0, [SP,#0xC0+var_98]
VLDR            S1, [R0,#0x110]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDRCC          S0, [R5,#0x268]
VNEGCC.F32      S0, S0
BCS             loc_1BA1B0
B               loc_1BA1AC
LDR             R0, [R4,#4]
VLDR            S0, =23.0
ADD             R1, R0, #0x23400
LDR             R0, [R1,#0x10C]
LDR             R2, [R1,#0x108]
LDR             R1, [R1,#0x110]
VMOV            S1, R0
STR             R2, [SP,#0xC0+var_88]
STRD            R0, R1, [SP,#0xC0+var_84]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xC0+var_84]
VMOV            S0, R2
VLDR            S1, [R5,#0x21C]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R5,#0x260]
VMUL.F32        S2, S18, S20
VMOV            R0, S1
VNEGLT.F32      S0, S0
CMP             R0, R9
VMOVEQ.F32      S19, S16
LDR             R0, =0xC3340000
VMLS.F32        S19, S1, S2
VSUB.F32        S1, S17, S19
VMOV            R1, S1
CMP             R1, R0
VADDHI.F32      S1, S1, S20
BHI             loc_1BA2C0
LDR             R1, =0x43340000
VMOV            R0, S1
CMP             R0, R1
VSUBGT.F32      S1, S1, S20
VMOV.F32        S2, S17
ADD             R2, SP, #0xC0+var_BC
ADD             R1, SP, #0xC0+var_88
MOV             R0, R4
VADD.F32        S1, S17, S1
BL              sub_1B1FE0
CMP             R0, #0
NOP
BEQ             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R5,#0x260]
VLDR            S0, [SP,#0xC0+var_BC]
CMP             R0, #0x3F800000
VSTR            S0, [R5,#0x268]
VSUBEQ.F32      S0, S0, S20
VSTREQ          S0, [R5,#0x268]
VMUL.F32        S0, S0, S21
BL              sub_464318
LDR             R0, [R4,#4]
VLDR            S1, [R0,#0x108]
VMLA.F32        S1, S0, S16
VSTR            S1, [R5,#0x21C]
VLDR            S0, [R5,#0x268]
VMUL.F32        S0, S0, S21
BL              sub_464380
LDR             R0, [R4,#4]
MOV             R2, #0
MOV             R1, #0xA
VLDR            S1, [R0,#0x110]
VMLA.F32        S1, S0, S16
VSTR            S1, [R5,#0x224]
LDR             R0, [R4,#8]
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R6, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x2C ; ','
STRH            R0, [R1]
LDR             R0, =0x3A84
MOV             R1, #0xF
STR             R1, [R0,R4]
LDR             R0, [R4,#8]
STRB            R7, [R0,#0xA]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 43
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S18, =1.0
VLDR            S2, =90.0
VLDR            S1, =-90.0
VSUB.F32        S16, S18, S0
VLDR            S19, =0.71111
VMLA.F32        S1, S16, S2
VMUL.F32        S17, S1, S19
VMOV.F32        S0, S17
BL              sub_464318
VSUB.F32        S4, S18, S16
VLDR            S2, =-180.0
ADD             R5, R4, #0x3800
VLDR            S3, =180.0
VLDR            S1, [R5,#0x260]
VLDR            S18, [R5,#0x268]
VMUL.F32        S16, S0, S3
VMOV.F32        S0, S17
VMUL.F32        S2, S4, S2
VMLA.F32        S18, S1, S2
BL              sub_464380
VLDR            S1, =85.0
VLDR            S2, [R5,#0x234]
VMUL.F32        S17, S18, S19
VADD.F32        S3, S2, S1
VMLA.F32        S1, S0, S3
VADD.F32        S0, S1, S2
VSTR            S0, [R5,#0x220]
VMOV.F32        S0, S17
BL              sub_464318
VMUL.F32        S0, S0, S16
VSTR            S0, [R5,#0x21C]
VMOV.F32        S0, S17
BL              sub_464380
VMUL.F32        S0, S0, S16
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x21C
VSTR            S0, [R5,#0x224]
LDR             R1, [R4,#4]
VLDR            S1, [R0]
ADD             R1, R1, #0x108
VLDR            S0, [R1]
VADD.F32        S0, S1, S0
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#8]
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
B               loc_1BA5CC
ADD             R0, R4, #0x3800; jumptable 001B7D70 case 44
ADD             R0, R0, #0x284
LDR             R1, [R0]
CMP             R1, #0
SUBGT           R1, R1, #1
BGT             loc_1B8F40
LDR             R1, [R4,#8]
MOV             R0, #0x2D ; '-'
STRH            R0, [R1]
LDR             R0, [R4,#8]
STRB            R6, [R0,#0xA]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 45
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S20, =1.0
VLDR            S1, =3.1416
VSUB.F32        S0, S20, S0
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S1, =-0.5
VLDR            S16, =0.5
LDR             R0, =0x3A3C
VMLA.F32        S16, S0, S1
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_1BA600
VLDR            S1, =90.0
VLDR            S0, =-90.0
VMLA.F32        S0, S16, S1
VLDR            S1, =0.71111
VMUL.F32        S19, S0, S1
VMOV.F32        S0, S19
BL              sub_464318
VSUB.F32        S3, S20, S16
VMOV.F32        S1, S0
VLDR            S0, =180.0
ADD             R5, R4, #0x3800
VLDR            S18, [R5,#0x268]
VLDR            S2, [R5,#0x260]
VMUL.F32        S17, S1, S0
VMUL.F32        S3, S3, S0
VMOV.F32        S0, S19
VMLA.F32        S18, S2, S3
BL              sub_464380
VLDR            S2, [R5,#0x234]
VLDR            S1, =85.0
VADD.F32        S3, S2, S1
VMLA.F32        S1, S0, S3
VADD.F32        S0, S1, S2
VSTR            S0, [R5,#0x220]
VLDR            S0, =0.71111
VMUL.F32        S16, S18, S0
VMOV.F32        S0, S16
BL              sub_464318
VMUL.F32        S0, S0, S17
ADD             R5, R4, #0x3800
VSTR            S0, [R5,#0x21C]
VMOV.F32        S0, S16
BL              sub_464380
VMUL.F32        S0, S0, S17
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x21C
VSTR            S0, [R5,#0x224]
LDR             R1, [R4,#4]
VLDR            S1, [R0]
ADD             R1, R1, #0x108
VLDR            S0, [R1]
VADD.F32        S0, S1, S0
VSTR            S0, [R0]
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#8]
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
STRH            R6, [R1]
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
DCFS 23.0
DCD 0xC3340000
DCFS 1.5708
DCFS 40.744
DCFS 1.0
DCFS 90.0
DCFS -90.0
DCFS -180.0
DCFS 3.1416
DCFS -0.5
DCFS 0.5
LDR             R0, =0x3A64
VLDR            S19, =0.0
LDRB            R0, [R0,R4]
VMOV.F32        S0, S19
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_1BA62C
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_1BA64C
B               loc_1BA668
ADD             R1, R4, #0x3800
VLDR            S1, =0.0027778
VLDR            S2, =1.1765
VLDR            S0, [R1,#0x268]
VMUL.F32        S2, S16, S2
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
B               loc_1BA668
ADD             R1, R4, #0x3800
VLDR            S1, =0.0037037
VLDR            S2, =1.25
VLDR            S0, [R1,#0x268]
VMUL.F32        S2, S16, S2
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VMOV            R1, S0
CMP             R1, #0x3F800000
VMOVGT.F32      S0, S20
CMP             R0, #1
CMPNE           R0, #0
BEQ             loc_1BA6E8
CMP             R0, #3
CMPNE           R0, #2
BNE             loc_1BA548
VLDR            S18, =-90.0
VLDR            S2, =90.0
VMOV.F32        S1, S18
VMLA.F32        S1, S0, S2
VLDR            S0, =0.71111
VMUL.F32        S19, S1, S0
VMOV.F32        S0, S19
BL              sub_464318
VLDR            S1, =180.0
VMUL.F32        S17, S0, S1
VMOV.F32        S0, S19
BL              sub_464380
VLDR            S1, =85.0
ADD             R0, R4, #0x3800
VMOV.F32        S2, S1
VLDR            S3, [R0,#0x268]
VMLA.F32        S18, S3, S16
VMLA.F32        S2, S0, S1
VSTR            S2, [R0,#0x220]
B               loc_1BA548
VLDR            S2, =90.0
VLDR            S1, =-90.0
VMLA.F32        S1, S0, S2
VLDR            S0, =0.71111
VMUL.F32        S20, S1, S0
VMOV.F32        S0, S20
BL              sub_464318
VLDR            S18, =180.0
VMUL.F32        S17, S0, S18
VMOV.F32        S0, S20
BL              sub_464380
VLDR            S1, =85.0
ADD             R0, R4, #0x3800
VMOV.F32        S2, S1
LDR             R1, [R0,#0x260]
ADD             R2, R1, #0x40000000
ADDS            R2, R2, #0x800000
VMLA.F32        S2, S0, S1
VMOVEQ.F32      S19, S18
VMOV.F32        S18, S19
VSTR            S2, [R0,#0x220]
VLDR            S0, [R0,#0x268]
VMLA.F32        S18, S0, S16
B               loc_1BA548
ADD             R5, R4, #0x3800; jumptable 001B7D70 case 46
VLDR            S1, =3.0
VLDR            S0, [R5,#0x248]
LDR             R1, =0x42200000
ADD             R3, SP, #0xC0+var_90
VADD.F32        S0, S0, S1
VLDR            S18, =0.0
VMOV            R0, S0
VSTR            S0, [R5,#0x248]
CMP             R0, R1
ADD             R0, R5, #0x21C
VLDRGE          S0, =40.0
LDM             R0, {R0-R2}
VSTR            S0, [R5,#0x248]
STM             R3, {R0-R2}
VLDR            S0, [R5,#0x224]
VLDR            S3, [R5,#0x244]
VLDR            S1, [R5,#0x248]
VLDR            S2, [R5,#0x21C]
VLDR            S4, [R5,#0x240]
VMLA.F32        S0, S3, S1
VMLA.F32        S2, S4, S1
VCMPE.F32       S0, S18
VSTR            S2, [R5,#0x21C]
VSTR            S0, [R5,#0x224]
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S17, S2
VSTRCC          S18, [R5,#0x224]
VSTRCC          S18, [R5,#0x244]
VLDR            S16, [R5,#0x220]
BL              sub_4635D8
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
ADD             R3, SP, #0xC0+var_A0
STR             R1, [SP,#0xC0+var_A4]
STR             R2, [SP,#0xC0+var_A8]
STM             R3, {R0,R6}
VMOV.F32        S2, S18
STR             R6, [SP,#0xC0+var_98]
STRB            R6, [SP,#0xC0+var_94]
MOV             R0, #1
VMOV.F32        S1, S16
VSTR            S2, [SP,#0xC0+var_88]
VMOV.F32        S0, S17
ADD             R3, R4, #0x3800
STR             R0, [SP,#0xC0+var_C0]
ADD             R3, R3, #0x254
ADD             R2, SP, #0xC0+var_A8
ADD             R1, SP, #0xC0+var_90
MOV             R0, R4
BL              sub_1B03C0
CMP             R0, #0
NOP
BEQ             loc_1BA864
ADD             R7, SP, #0xC0+var_A8
ADD             R5, R5, #0x21C
LDM             R7, {R0,R1,R3}
MOV             R2, #0x2F ; '/'
STM             R5, {R0,R1,R3}
MOV             R1, #0xD
LDR             R0, [R4,#8]
STRH            R2, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R6, [R0,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
LDRB            R0, [SP,#0xC0+var_94]
CMP             R0, #0
BNE             loc_1B9D7C
B               def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
LDR             R0, [R4,#8]; jumptable 001B7D70 case 47
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R5, R4, #0x3800
VLDR            S0, [R5,#0x244]
VLDR            S1, [R5,#0x240]
VNEG.F32        S0, S0
VNEG.F32        S1, S1
BL              sub_4645C0
VLDR            S1, [R5,#0x224]
VLDR            S0, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_1BA910
MOV             R0, #0x3A80
VSTR            S0, [R5,#0x248]
VSTR            S0, [R5,#0x24C]
STRB            R6, [R0,R4]
MOV             R0, #0x31 ; '1'
LDR             R1, [R4,#8]
B               loc_1B8048
LDR             R0, [R4,#8]; jumptable 001B7D70 case 48
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R5, R4, #0x3800
VLDR            S0, [R5,#0x244]
VLDR            S1, [R5,#0x240]
VNEG.F32        S0, S0
VNEG.F32        S1, S1
BL              sub_4645C0
VLDR            S1, [R5,#0x224]
VLDR            S0, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BA8B4
VSTR            S0, [R5,#0x224]
VSTR            S0, [R5,#0x244]
B               loc_1BA8B4
DCD 0x3A64
DCFS 0.0
DCFS 0.0027778
DCFS 1.1765
DCFS 0.0037037
DCFS 1.25
DCFS 0.71111
DCFS 180.0
DCFS 85.0
DCFS 3.0
DCD 0x42200000
DCFS 40.0
LDR             R0, [R4,#8]; jumptable 001B7D70 case 49
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R0, R2
BGT             loc_1BA974
LDR             R0, =0x3A81
LDRB            R0, [R0,R4]
CMP             R0, #0
STRHEQ          R6, [R1]
LDR             R0, [R4,#8]
VLDR            S0, =1.0
LDRSH           R1, [R0,#8]
LDRSH           R0, [R0,#6]
VMOV            S2, R1
VMOV            S1, R0
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VSUB.F32        S0, S2, S0
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1E4
MOV             R2, #0
MOV             R1, #0xE
B               loc_1B81F8
LDR             R0, [R4,#8]; jumptable 001B7D70 case 50
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
MOVGE           R0, #0x31 ; '1'
BLT             def_1B7D70; jumptable 001B7D70 default case, cases 5-16,35
B               loc_1B8048
ADD             R0, R4, #0x1000; jumptable 001B7D70 case 51
ADD             R0, R0, #0x1E4
MOV             R5, R0
BL              sub_45AA4C
LDRSH           R0, [R5,#2]
LDRSH           R1, [R5]
VLDR            S0, =1.0
VMOV            S2, R0
VMOV            S1, R1
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S2, S0
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_1BAA68
LDR             R0, =off_6D1648
VSTR            S0, [SP,#0xC0+var_B8]
VSTR            S0, [SP,#0xC0+var_B4]
ADD             R5, SP, #0xC0+var_B8
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R1, R5
NOP
BL              sub_166510
LDR             R1, [R4,#8]
MOV             R0, #3
VLDR            S1, =-1.0
STRH            R0, [R1]
LDR             R0, [R4,#4]
ADD             R1, R4, #0x1000
VMOV.F32        S2, S1
VLDR            S0, [R1,#0x1F0]
LDR             R1, [R0]
VNEG.F32        S0, S0
LDR             R1, [R1,#0x214]
BLX             R1
ADD             R0, R4, #0x1100
LDRH            R1, [R0,#0xE4]
SUB             R1, R1, #1
STRH            R1, [R0,#0xE4]
LDR             R0, [R4,#8]; jumptable 001B7D70 default case, cases 5-16,35
STRB            R6, [R0,#0x4B4]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
STRBNE          R6, [R0,#0xC]
LDR             R0, [R4,#8]
LDRSH           R1, [R0]
LDRSH           R2, [R0,#2]
CMP             R2, R1
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#4]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B6]
CMP             R1, #0
BEQ             loc_1BAB08
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
ADD             R0, R0, #0x200
LDRH            R0, [R0,#0x38]
CMP             R0, #0x20 ; ' '
BEQ             loc_1BAD84
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x246]
CMP             R0, #0
BEQ             loc_1BAD64
B               loc_1BAD84
LDRSH           R0, [R0]
CMP             R0, #0x13
BEQ             loc_1BAB74
BGT             loc_1BAB48
CMP             R0, #4
BHI             loc_1BAD84
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x246]
CMP             R0, #0
BNE             loc_1BACBC
B               loc_1BAC78
CMP             R0, #0x27 ; '''
BEQ             loc_1BAC4C
BGT             loc_1BAB64
CMP             R0, #0x1A
CMPNE           R0, #0x1F
BEQ             loc_1BAB84
B               loc_1BAD84
CMP             R0, #0x28 ; '('
CMPNE           R0, #0x29 ; ')'
BNE             loc_1BAD84
B               loc_1BAC4C
MOV             R2, #0
MOV             R1, #0x8000
MOV             R0, R2
B               loc_1BAD80
LDR             R7, =off_6D1648
LDR             R0, [R7]
BL              sub_1E45C8
MOV             R1, #0x8000
STRH            R1, [R0,#0x40]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R1, #1
LDR             R2, [R0]
LDR             R0, =0x23A
ADD             R5, R2, #0x38 ; '8'
STRH            R6, [R0,R2]
STRB            R1, [R2,#0x242]
STRB            R6, [R2,#0x245]
LDR             R0, [R4,#8]
LDRB            R0, [R0,#4]
CMP             R0, #0
BEQ             loc_1BAC30
ADD             R0, R5, #0x54 ; 'T'
BL              sub_592EDC
LDR             R0, [R7]
LDR             R0, [R0,#0x60]
ADD             R1, R0, #0x900
ADD             R0, R5, #0x54 ; 'T'
BL              sub_536F10
MOV             R2, #0
MOV             R3, #0x200
MOV             R1, R2
ADD             R0, R5, #0x54 ; 'T'
BL              sub_11DCDC
LDR             R1, =off_68DBC0
ADD             R2, R5, #0x310
LDM             R1, {R0,R3}
STM             R2, {R0,R3}
LDRD            R0, R1, [R1,#(off_68DBC8 - 0x68DBC0)]
STRD            R0, R1, [R5,#0x40]
ADD             R0, R5, #0x200
LDRH            R1, [R0,#2]
STRH            R1, [R0]
LDRB            R0, [R5,#0x20A]
STRB            R0, [R5,#0x209]
MOV             R2, #0
MOV             R1, #0x24 ; '$'
MOV             R0, #1
BL              sub_5435FC
NOP
NOP
B               loc_1BAD84
MOV             R2, #0
MOV             R1, #0x1F
MOV             R0, R2
BL              sub_5435FC
LDR             R1, =0x8001
MOV             R2, #0
MOV             R0, #1
BL              sub_5435FC
NOP
NOP
B               loc_1BAD84
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x19C]
CMP             R0, #0
BNE             loc_1BACBC
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #0
LDR             R0, [R0]
MOV             R2, #1
MOV             R1, R3
BL              sub_59AD78
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x636]
CMP             R0, #0
BNE             loc_1BAD20
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x58C]
CMP             R0, #0
BNE             loc_1BAD20
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R2, #1
LDR             R0, [R0]
MOV             R3, #0
MOV             R1, R2
BL              sub_59AD78
MOV             R2, #0
MOV             R1, #0x1E
MOV             R0, R2
BL              sub_5435FC
EOR             R2, R10, #1
MOV             R1, #0x24 ; '$'
MOV             R0, #1
BL              sub_5435FC
NOP
NOP
B               loc_1BAD84
DCD 0x3A81
DCFS 1.0
DCFS -1.0
DCD 0x23A
DCD off_68DBC0
DCD 0x8001
MOV             R2, #0
MOV             R1, #0x20 ; ' '
MOV             R0, R2
BL              sub_5435FC
MOV             R2, #0
MOV             R1, #0x26 ; '&'
MOV             R0, #1
BL              sub_5435FC
LDRD            R0, R1, [R4,#4]
ADD             R0, R0, #0x108
LDM             R0, {R2,R3,R12}
ADD             R0, R1, #0x4C0
STR             R2, [R1,#0x4BC]
STM             R0, {R3,R12}
ADD             SP, SP, #0x70 ; 'p'
VPOP            {D8-D13}
POP             {R4-R10,PC}
