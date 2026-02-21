PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R8, =off_6D1648
VPUSH           {D8-D11}
SUB             SP, SP, #0x3C
LDR             R0, [R0,#8]
LDRH            R0, [R0]
CMP             R0, #0x23 ; '#'
BEQ             loc_246638
LDR             R0, [R8]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
TST             R0, #1
BEQ             loc_246638
LDR             R0, [R4,#8]
LDRH            R1, [R0]
STRH            R1, [R0,#2]
LDR             R0, [R4,#8]
STRB            R7, [R0,#4]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,PC}
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
LDR             R0, [R4,#4]
LDR             R10, =0x174AD
LDR             R2, [R4,#8]
MOV             R1, R0
ADD             R1, R1, #0x118
LDRSB           R10, [R0,R10]
ADD             R0, R0, #0x108
LDRH            R9, [R2]
VLDR            S1, [R0]
VLDR            S0, [R0,#4]
VLDR            S2, [R1]
VLDR            S3, [R1,#4]
MOV             R0, #1
STRB            R0, [SP,#0x80+var_60]
STRB            R0, [SP,#0x80+var_5C]
LDR             R1, [R4,#0xA9C]
LDRB            R2, [R4,#0xAC0]
VSUB.F32        S17, S0, S3
STR             R1, [R4,#0xAA0]
RSB             R1, R2, #0
LDR             R2, [R4,#8]
ADD             R0, R0, R1,LSL#1
VMOV            S0, R0
VSUB.F32        S16, S1, S2
LDRSH           R2, [R2]
ADD             R5, R4, #0x800
SUB             R1, R2, #0x1D
VCVT.F32.S32    S18, S0
CMP             R1, #0xF; switch 15 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2466B8; jumptable 002466B8 default case, cases 2,5,6,8,11,13
DCD loc_2466FC; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 002466B8 case 0
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S20, =1.0
VLDR            S1, =1.5708
VLDR            S19, =40.744
VSUB.F32        S0, S20, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
BL              sub_464380
VSUB.F32        S0, S20, S0
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
VMLA.F32        S1, S0, S2
VLDR            S0, =40.0
VMUL.F32        S0, S1, S0
B               loc_246754
VLDR            S0, =40.0; jumptable 002466B8 case 1
VMUL.F32        S0, S0, S18
B               loc_246904
LDR             R0, [R4,#8]; jumptable 002466B8 case 3
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S19, =1.0
VLDR            S1, =1.5708
VLDR            S20, =40.744
VSUB.F32        S0, S19, S0
VSUB.F32        S0, S19, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S20
BL              sub_464380
VSUB.F32        S0, S19, S0
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S20
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
VMLA.F32        S1, S0, S2
VLDR            S0, =40.0
VMUL.F32        S0, S1, S0
VMUL.F32        S0, S0, S18
VSTR            S0, [R5,#0x29C]
B               def_2466B8; jumptable 002466B8 default case, cases 2,5,6,8,11,13
LDR             R0, [R4,#8]; jumptable 002466B8 case 4
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S20, =1.0
VLDR            S1, =1.5708
VLDR            S19, =40.744
VSUB.F32        S0, S20, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
BL              sub_464380
VSUB.F32        S0, S20, S0
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
VMLA.F32        S1, S0, S2
VLDR            S2, =50.0
VLDR            S0, =40.0
VMLA.F32        S0, S1, S2
VMUL.F32        S0, S0, S18
VSTR            S0, [R5,#0x29C]
B               def_2466B8; jumptable 002466B8 default case, cases 2,5,6,8,11,13
LDR             R0, [R4,#8]; jumptable 002466B8 cases 7,10
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, [R5,#0x2A4]
VLDR            S2, =90.0
LDRB            R0, [R4,#0xAC0]
MOV             R1, #1
VSUB.F32        S2, S2, S1
RSB             R0, R0, #0
ADD             R0, R1, R0,LSL#1
VMUL.F32        S2, S0, S2
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x29C]
B               def_2466B8; jumptable 002466B8 default case, cases 2,5,6,8,11,13
LDR             R0, [R4,#8]; jumptable 002466B8 case 9
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S19, =1.0
VLDR            S1, =1.5708
VLDR            S18, =40.744
VSUB.F32        S0, S19, S0
VSUB.F32        S0, S19, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S18
BL              sub_464380
VSUB.F32        S0, S19, S0
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S18
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
VMLA.F32        S1, S0, S2
VLDR            S0, [R5,#0x2A4]
VMUL.F32        S0, S1, S0
B               loc_246904
LDR             R0, [R4,#8]; jumptable 002466B8 case 12
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =1.0
VSUB.F32        S0, S1, S0
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
VMLA.F32        S1, S0, S2
VLDR            S0, [R5,#0x2A4]
VMUL.F32        S0, S1, S0
VSTR            S0, [R5,#0x29C]
B               def_2466B8; jumptable 002466B8 default case, cases 2,5,6,8,11,13
LDR             R0, [R4,#8]; jumptable 002466B8 case 14
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S19, =1.0
VLDR            S1, =1.5708
VLDR            S20, =40.744
VSUB.F32        S0, S19, S0
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S20
BL              sub_464380
VSUB.F32        S0, S19, S0
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S20
BL              sub_464318
VLDR            S1, =-0.5
VLDR            S2, =0.5
VMLA.F32        S2, S0, S1
VLDR            S0, =40.0
VMUL.F32        S0, S2, S0
VMUL.F32        S0, S0, S18
VSTR            S0, [R5,#0x29C]
VLDR            S0, [R5,#0x29C]; jumptable 002466B8 default case, cases 2,5,6,8,11,13
VLDR            S1, =0.71111
VLDR            S2, =0.0
ADD             R0, R4, #0x800
VMUL.F32        S1, S0, S1
VLDR            S0, [R5,#0x298]
ADD             R1, SP, #0x80+var_50
VSTR            S0, [SP,#0x80+var_50]
VSTR            S2, [SP,#0x80+var_4C]
ADD             R0, R0, #0x2A8
VNEG.F32        S0, S1
BL              sub_463474
ADD             R6, R4, #0xA00
LDRSB           R0, [R6,#0x80]
CMP             R0, #0
SUBGT           R0, R0, #1
BEQ             loc_246AA8
BLE             loc_2469B0
STRB            R0, [R4,#0xA80]
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x2C; switch 44 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2469BC; jumptable 002469BC default case, cases 5-16
DCD loc_246AF0; jump table for switch statement
DCD off_6D1648
DCD 0x174AD
DCFS 1.0
DCFS 1.5708
DCFS 40.744
DCFS 3.1416
DCFS -0.5
DCFS 0.5
DCFS 40.0
DCFS 50.0
DCFS 90.0
DCFS 0.71111
DCFS 0.0
VLDR            S0, =1.0
ADD             R11, SP, #0x80+var_78
VSTR            S0, [SP,#0x80+var_78]
VSTR            S0, [SP,#0x80+var_74]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R1, R11
NOP
BL              sub_166510
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
LDR             R1, =0xF0001FFB
NOP
BL              sub_166500
MOV             R0, #0xFFFFFFFF
NOP
B               loc_2469AC
LDR             R0, [R4,#4]; jumptable 002469BC cases 0,1,4
LDR             R0, [R0,#0x4EC]
TST             R0, #1
LDRNE           R1, [R4,#8]
MOVNE           R0, #3
BNE             loc_246CFC
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #1
BNE             loc_246D14
VLDR            S17, =0.0
VCMP.F32        S16, S17
VMRS            APSR_nzcv, FPSCR
BEQ             loc_246B3C
LDRB            R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #1
STRHEQ          R1, [R0]
BEQ             loc_246B40
STRH            R7, [R0]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #2
BEQ             loc_246B70
MOV             R1, #0x11
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #5
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
B               loc_2482AC
ADD             R2, SP, #0x80+var_70
ADD             R1, SP, #0x80+var_78
MOV             R0, R4
STR             R7, [SP,#0x80+var_78]
STR             R7, [SP,#0x80+var_74]
STR             R7, [SP,#0x80+var_70]
BL              sub_243894
LDRB            R0, [SP,#0x80+var_70]
CMP             R0, #0
LDRBEQ          R0, [SP,#0x80+var_70+1]
CMPEQ           R0, #0
BEQ             loc_246BC8
LDR             R1, [R4,#8]
LDRH            R0, [R1]
CMP             R0, #0
BNE             loc_246BC8
LDR             R0, [R4,#4]
ADD             R0, R0, #0x23000
ADD             R0, R0, #0x5D0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_246BD0
STRH            R7, [R6,#0x8A]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDRH            R0, [R6,#0x8A]
VLDR            S0, =5.0
ADD             R0, R0, #1
UXTH            R0, R0
VMOV            S1, R0
STRH            R0, [R6,#0x8A]
VCVT.F32.U32    S1, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_2469BC; jumptable 002469BC default case, cases 5-16
MOV             R0, #0x1D
STRH            R7, [R6,#0x8A]
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0x1E
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDRB            R0, [SP,#0x80+var_70]
CMP             R0, #0
BEQ             loc_246C88
LDRB            R0, [SP,#0x80+var_70+1]
CMP             R0, #0
LDREQ           R0, [SP,#0x80+var_78]
STREQ           R0, [R5,#0x298]
BEQ             loc_246C80
VLDR            S0, [SP,#0x80+var_74]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVLT.F32      S1, S0
VMOVGE.F32      S3, S0
VNEGLT.F32      S3, S1
VLDR            S1, [SP,#0x80+var_78]
VCMPE.F32       S1, S17
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S1
VNEGLT.F32      S2, S2
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VSTRCC          S1, [R5,#0x298]
MOVCS           R0, #1
VSTRCS          S0, [R5,#0x298]
BCS             loc_246C94
STRB            R7, [R4,#0xAC0]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [SP,#0x80+var_74]
MOV             R0, #1
STR             R1, [R5,#0x298]
STRB            R0, [R4,#0xAC0]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#4]; jumptable 002469BC cases 2,3
LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             loc_246D20
ADD             R0, R0, #0x400
VLDR            S1, =0.0
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R4,#0x4C]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #4
LDRBNE          R1, [R4,#0x5D]
CMPNE           R1, #0
BEQ             loc_246D04
MOV             R1, #0
STRH            R1, [R0,#6]!
MOV             R2, #0xF
STRH            R2, [R0,#2]
STRB            R7, [R0,#4]
LDR             R1, [R4,#8]
MOV             R0, #0x1A
STRH            R0, [R1]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
VCMPE.F32       S17, S1
VMRS            APSR_nzcv, FPSCR
MOVLS           R1, #3
BLS             loc_246D18
MOV             R1, #2
STRH            R1, [R0]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [R4,#8]
MOV             R0, #4
B               loc_246CFC
LDR             R0, [R4,#8]; jumptable 002469BC case 17
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             loc_246D70
MOV             R0, #0x12
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #8
STRH            R2, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
LDR             R0, [R4,#8]
LDRH            R0, [R0,#8]
CMP             R0, #0
BNE             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#8]; jumptable 002469BC case 18
LDRSH           R2, [R0,#6]
LDRSH           R1, [R0,#8]
CMP             R2, R1
MOVLT           R1, #0x12
BLT             loc_246D18
MOV             R1, #0x13
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0x5A ; 'Z'
MOV             R3, R2
STRH            R2, [R0,#6]!
ADD             R2, SP, #0x80+var_5C
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
MOV             R1, #1
VLDR            S1, =248.0
VLDR            S0, =72.0
STRB            R1, [R0,#0xA]
STR             R7, [SP,#0x80+var_80]
LDR             R0, [R4,#4]
ADD             R1, SP, #0x80+var_60
BL              sub_358C24
NOP
NOP
B               def_2469BC; jumptable 002469BC default case, cases 5-16
MOV             R1, #0; jumptable 002469BC case 19
ADD             R0, SP, #0x80+var_78
STR             R0, [SP,#0x80+var_80]
ADD             R0, SP, #0x80+var_68
MOV             R12, R1
STR             R1, [SP,#0x80+var_78]
STR             R1, [SP,#0x80+var_74]
STM             R0, {R1,R12}
ADD             R3, SP, #0x80+var_68
LDR             R0, [R4,#4]
ADD             R2, SP, #0x80+var_5C
ADD             R1, SP, #0x80+var_60
VLDR            S1, =248.0
VLDR            S0, =72.0
BL              sub_358C24
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #0x10
BEQ             loc_246FAC
LDR             R1, [R4,#4]
LDR             R1, [R1,#0x4EC]
TST             R1, #1
BNE             loc_246FAC
LDRB            R1, [SP,#0x80+var_5C]
CMP             R1, #0
BEQ             loc_246FAC
MOV             R1, #0x15
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #3
VLDR            S0, =0.0
STRH            R2, [R0,#6]!
MOV             R6, #2
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
STRB            R7, [R0,#0x4B5]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x78]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, #2
MOVHI           R11, #1
BLS             loc_246F14
ADD             R12, SP, #0x80+var_68
MOV             R0, R11,LSL R6
LDM             R12, {R1,R2}
MOV             R3, R0,ASR#31
AND             R0, R0, R1
AND             R1, R3, R2
ORRS            R0, R0, R1
BEQ             loc_246EF4
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R0, [R0,#0xAA8]
LDR             R1, [R0]
LDR             R1, [R1,#0x6C]
BLX             R1
ADD             R0, R6, #1
AND             R6, R0, #0xFF
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R6
BHI             loc_246EB0
LDR             R0, [R8]
MOV             R6, #0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16400
ADD             R0, R0, #0x48 ; 'H'
LDRB            R0, [R0]
CMP             R0, #0
MOVHI           R11, #1
BLS             loc_246FD4
ADD             R12, SP, #0x80+var_78
MOV             R0, R11,LSL R6
LDM             R12, {R1,R2}
AND             R1, R1, R0
AND             R0, R2, R0,ASR#31
ORRS            R0, R0, R1
BEQ             loc_246F70
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R0, R0, R6,LSL#2
LDR             R0, [R0,#0x10]
BL              sub_593DDC
ADD             R0, R6, #1
AND             R6, R0, #0xFF
B               loc_246F8C
DCD 0xF0001FFB
DCFS 5.0
DCFS 248.0
DCFS 72.0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16400
ADD             R0, R0, #0x48 ; 'H'
LDRB            R0, [R0]
CMP             R0, R6
BHI             loc_246F38
B               loc_246FD4
VLDR            S0, =0.0
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_246FCC
LDRB            R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0x14
BEQ             loc_246FD0
MOV             R1, #0x13
STRH            R1, [R0]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #0x80
LDRBNE          R1, [SP,#0x80+var_60]
CMPNE           R1, #0
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
STRH            R7, [R0]
LDR             R0, [R4,#4]
VLDR            S0, =199.0
ADD             R6, SP, #0x80+var_70
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x20]
LDR             R0, [R4,#4]
VLDR            S0, =49.0
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x24]
LDR             R0, [R4,#4]
VLDR            S0, =24.0
ADD             R0, R0, #0x19C00
VSTR            S0, [R0,#0x28]
VLDR            S0, =0.0
VSTR            S0, [SP,#0x80+var_70]
VSTR            S0, [SP,#0x80+var_6C]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R1, R6
NOP
BL              sub_166510
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
MOV             R1, #0
NOP
BL              sub_166500
MOV             R0, #5
STRB            R0, [R4,#0xA80]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
MOV             R12, #0; jumptable 002469BC case 20
ADD             R3, SP, #0x80+var_78
STR             R12, [SP,#0x80+var_64]
STR             R3, [SP,#0x80+var_80]
STR             R12, [SP,#0x80+var_68]
STR             R12, [SP,#0x80+var_78]
STR             R12, [SP,#0x80+var_74]
LDR             R0, [R4,#4]
ADD             R3, SP, #0x80+var_68
ADD             R2, SP, #0x80+var_5C
ADD             R1, SP, #0x80+var_60
VLDR            S1, =248.0
VLDR            S0, =72.0
BL              sub_358C24
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #0x10
BEQ             loc_247210
LDR             R1, [R4,#4]
LDR             R1, [R1,#0x4EC]
TST             R1, #1
BNE             loc_247210
LDRB            R1, [SP,#0x80+var_5C]
CMP             R1, #0
BEQ             loc_247210
MOV             R1, #0x15
STRH            R1, [R0]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #3
VLDR            S0, =0.0
STRH            R2, [R0,#6]!
MOV             R6, #2
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [R4,#8]
STRB            R7, [R0,#0x4B5]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x78]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, #2
MOVHI           R11, #1
BLS             loc_247188
ADD             R12, SP, #0x80+var_68
MOV             R0, R11,LSL R6
LDM             R12, {R1,R2}
MOV             R3, R0,ASR#31
AND             R0, R0, R1
AND             R1, R3, R2
ORRS            R0, R0, R1
BEQ             loc_247168
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R0, [R0,#0xAA8]
LDR             R1, [R0]
LDR             R1, [R1,#0x6C]
BLX             R1
ADD             R0, R6, #1
AND             R6, R0, #0xFF
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R6
BHI             loc_247124
LDR             R0, [R8]
MOV             R6, #0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16400
ADD             R0, R0, #0x48 ; 'H'
LDRB            R0, [R0]
CMP             R0, #0
MOVHI           R11, #1
BLS             loc_247238
ADD             R12, SP, #0x80+var_78
MOV             R0, R11,LSL R6
LDM             R12, {R1,R2}
MOV             R3, R0,ASR#31
AND             R0, R0, R1
AND             R1, R3, R2
ORRS            R0, R0, R1
BEQ             loc_2471E8
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R0, R0, R6,LSL#2
LDR             R0, [R0,#0x10]
BL              sub_593DDC
ADD             R0, R6, #1
AND             R6, R0, #0xFF
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16400
ADD             R0, R0, #0x48 ; 'H'
LDRB            R0, [R0]
CMP             R0, R6
BHI             loc_2471AC
B               loc_247238
VLDR            S0, =0.0
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_247230
LDRB            R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0x14
BEQ             loc_247234
MOV             R1, #0x13
STRH            R1, [R0]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B4]
TST             R1, #0x80
LDRBNE          R1, [SP,#0x80+var_60]
CMPNE           R1, #0
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
B               loc_246FEC
LDR             R1, [R4,#8]; jumptable 002469BC case 21
LDRB            R0, [R1,#0x4B5]
CMP             R0, #0
BNE             loc_247278
LDRSH           R2, [R1,#6]
LDRSH           R0, [R1,#8]
CMP             R2, R0
MOVGE           R0, #1
STRBGE          R0, [R1,#0x4B5]
LDR             R0, [R4,#4]
VLDR            S19, =0.0
ADD             R1, R0, #0x400
VLDR            S0, [R1,#0xC4]
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BHI             loc_2474D8
LDR             R1, =0xC0A00000
VMOV            R0, S0
CMP             R0, R1
LDRLS           R1, [R4,#8]
MOVLS           R0, #0x17
BLS             loc_246CFC
VCMPE.F32       S0, S19
MOV             R0, #0x16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R4,#0x4C]
LDR             R1, [R4,#8]
VMOV.F32        S0, S19
STRH            R0, [R1]
LDR             R0, [R4,#8]
VMOV.F32        S2, S0
VMOV.F32        S1, S0
STRB            R7, [R0,#0x4B5]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x214]
BLX             R1
MOV             R2, #0
MOV             R1, #0xC
STRH            R2, [R4,#0x40]
VLDR            S21, =1.0
STRH            R1, [R4,#0x42]
STRB            R7, [R4,#0x44]
VSTR            S21, [R4,#0x48]
LDR             R0, [R4,#4]
ADD             R6, R4, #0x50 ; 'P'
VLDR            S16, =0.5
ADD             R1, R0, #0x108
ADD             R0, R0, #0x19C00
LDM             R1, {R1-R3}
VMOV            S1, R2
STM             R6, {R1-R3}
VLDR            S0, [R0,#0x20]
VLDR            S2, [R0,#0x24]
LDR             R1, =0x42B40000
VADD.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VLDR            S1, =4.5
VSTR            S0, [R4,#0x54]
VLDR            S0, [R4,#0x4C]
VMUL.F32        S18, S0, S1
VMOV            R0, S18
CMP             R0, R1
VMOVLE.F32      S17, S19
BLE             loc_247374
VLDR            S0, =0.71111
VMUL.F32        S0, S18, S0
BL              sub_464380
VSUB.F32        S0, S0, S21
VLDR            S1, =0.6
VMUL.F32        S17, S0, S1
VLDR            S0, =0.71111
VMUL.F32        S0, S18, S0
BL              sub_464380
VMOV.F32        S1, S21
NOP
B               loc_2473B8
DCFS 0.0
DCFS 199.0
DCFS 49.0
DCFS 24.0
DCD 0xC0A00000
DCFS 0.5
DCFS 1.0
DCFS 4.5
DCD 0x42B40000
DCFS 0.71111
DCFS 0.6
VMLA.F32        S1, S0, S16
ADD             R0, R4, #0x40 ; '@'
VADD.F32        S18, S1, S17
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
BGE             loc_247404
VLDR            S2, =2.0
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VMOV.F32        S1, S18
VSUB.F32        S0, S21, S0
VSUB.F32        S1, S1, S16
VMLA.F32        S16, S0, S1
B               loc_24743C
VMOV.F32        S22, S16
VMOV.F32        S20, S21
VLDR            S1, =2.0
VSUB.F32        S0, S0, S22
VMLS.F32        S20, S0, S1
VLDR            S0, =3.1416
VLDR            S1, =40.744
VMUL.F32        S0, S20, S0
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S1, =-0.5
VMOV.F32        S16, S21
VMLA.F32        S22, S0, S1
VMLA.F32        S16, S22, S1
VCMPE.F32       S17, S19
LDR             R0, [R4,#4]
ADD             R1, R0, #0x108
ADD             R0, R0, #0x23000
LDM             R1, {R1-R3}
ADD             R0, R0, #0x4E0
VMRS            APSR_nzcv, FPSCR
ADD             R6, R0, #0x28 ; '('
VCMPECC.F32     S18, S16
STM             R6, {R1-R3}
VMRSCC          APSR_nzcv, FPSCR
VLDR            S0, =199.0
BCS             loc_2474B8
STRB            R7, [R4,#0x5C]
VLDR            S2, =49.0
VLDR            S1, [R4,#0x54]
LDR             R1, [R4,#4]
VMLA.F32        S2, S16, S0
ADD             R6, R0, #0x28 ; '('
VSUB.F32        S1, S1, S2
VSTR            S1, [R1,#0x10C]
LDR             R2, [R4,#4]
ADD             R1, R2, #0x108
LDR             R2, [R2,#0x110]
LDM             R1, {R1,R3}
STR             R2, [R0,#0x30]
VMOV            S1, R3
STM             R6, {R1,R3}
VMLA.F32        S1, S16, S0
VSTR            S1, [R0,#0x2C]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
VMOV.F32        S1, S0
MOV             R1, #1
STRB            R1, [R4,#0x5C]
VMLA.F32        S1, S17, S0
VLDR            S0, [R0,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x2C]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [R4,#8]
ADD             R6, R0, #0x23000
ADD             R6, R6, #0x4E0
LDRB            R1, [R1,#4]
CMP             R1, #0
VLDRNE          S0, =180.0
BEQ             loc_247568
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, =1.0
VLDR            S1, =0.6
VSUB.F32        S0, S0, S2
VMUL.F32        S19, S0, S1
VLDR            S0, =209.44
LDR             R0, [R4,#4]
VLDR            S1, =199.0
VMOV.F32        S2, S0
ADD             R2, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R2, {R2,R3}
VMOV.F32        S3, S1
STR             R0, [R6,#0x30]
VMLA.F32        S2, S19, S0
VMOV            S0, R3
STRD            R2, R3, [R6,#0x28]
MOV             R1, #0x15
VMLA.F32        S3, S19, S1
VADD.F32        S0, S0, S2
VSTR            S0, [R6,#0x2C]
LDR             R0, [R4,#8]
STRH            R1, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
VSTR            S3, [R0,#0x20]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
VLDR            S1, =4.5
LDR             R1, =0x42B40000
VMUL.F32        S0, S0, S1
VMOV            R0, S0
CMP             R0, R1
BLE             loc_247510
B               loc_2474F4
LDR             R0, [R4,#4]; jumptable 002469BC case 22
VLDR            S1, =248.0
VLDR            S0, =72.0
ADD             R1, SP, #0x80+var_78
BL              sub_3594AC
CMP             R0, #0
NOP
BNE             loc_2475B0
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x118]
STR             R1, [R0,#0x108]
ADD             R0, R4, #0x40 ; '@'
BL              sub_45AA4C
LDRSH           R0, [R4,#0x42]
LDRSH           R1, [R4,#0x40]
VLDR            S20, =1.0
VMOV            S1, R0
VMOV            S0, R1
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S20
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_247610
LDR             R1, [R4,#8]
MOV             R0, #0x17
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #3
STRB            R7, [R0,#0x4B5]
LDR             R0, [R4,#8]
STRH            R7, [R0,#6]!
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
B               loc_2477E8
VMOV            S0, R0
VMOV            S1, R1
VLDR            S21, =2.0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSUB.F32        S0, S0, S21
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_247664
LDR             R0, [R4,#4]
VLDR            S2, =0.0
VLDR            S1, =1.2
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #1
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
VLDR            S0, [R4,#0x4C]
LDR             R1, [R0]
VNEG.F32        S0, S0
LDR             R1, [R1,#0x214]
BLX             R1
VLDR            S0, [R4,#0x4C]
VLDR            S1, =4.5
LDR             R1, =0x42B40000
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, R1
VLDRLE          S17, =0.0
BLE             loc_24769C
VLDR            S0, =0.71111
VMUL.F32        S0, S16, S0
BL              sub_464380
VSUB.F32        S0, S0, S20
VLDR            S1, =0.6
VMUL.F32        S17, S0, S1
VLDR            S0, =0.71111
VMUL.F32        S0, S16, S0
BL              sub_464380
VMOV.F32        S1, S20
VLDR            S19, =0.5
ADD             R0, R4, #0x40 ; '@'
VMLA.F32        S1, S0, S19
VADD.F32        S18, S1, S17
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
BGE             loc_247724
VMUL.F32        S0, S0, S21
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VMOV.F32        S16, S19
VMOV.F32        S1, S18
VSUB.F32        S0, S20, S0
VSUB.F32        S1, S1, S16
VMLA.F32        S16, S0, S1
B               loc_247754
DCFS 2.0
DCFS 1.5708
DCFS 40.744
DCFS 3.1416
DCFS -0.5
DCFS 180.0
DCFS 209.44
DCFS 248.0
DCFS 72.0
DCFS 1.2
VMOV.F32        S16, S20
VSUB.F32        S0, S0, S19
VMOV.F32        S1, S16
VMLS.F32        S1, S0, S21
VLDR            S0, =3.1416
VMUL.F32        S0, S1, S0
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S1, =-0.5
VMLA.F32        S19, S0, S1
VMLA.F32        S16, S19, S1
VLDR            S0, =0.0
LDR             R0, [R4,#4]
VCMPE.F32       S17, S0
ADD             R1, R0, #0x108
ADD             R0, R0, #0x23000
LDM             R1, {R1-R3}
ADD             R0, R0, #0x4E0
VMRS            APSR_nzcv, FPSCR
ADD             R6, R0, #0x28 ; '('
VCMPECC.F32     S18, S16
STM             R6, {R1-R3}
VMRSCC          APSR_nzcv, FPSCR
VLDR            S0, =199.0
BCS             loc_2477CC
STRB            R7, [R4,#0x5C]
VLDR            S1, =49.0
VLDR            S2, [R4,#0x54]
LDR             R1, [R4,#4]
VMLA.F32        S1, S16, S0
ADD             R6, R0, #0x28 ; '('
VSUB.F32        S1, S2, S1
VSTR            S1, [R1,#0x10C]
LDR             R3, [R4,#4]
ADD             R3, R3, #0x108
LDM             R3, {R1-R3}
VMOV            S1, R2
STM             R6, {R1-R3}
VMLA.F32        S1, S16, S0
VSTR            S1, [R0,#0x2C]
B               loc_2477E8
VMOV.F32        S1, S0
MOV             R1, #1
STRB            R1, [R4,#0x5C]
VMLA.F32        S1, S17, S0
VLDR            S0, [R0,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x2C]
LDRH            R0, [R4,#0x40]
SUB             R0, R0, #1
STRH            R0, [R4,#0x40]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [R4,#8]; jumptable 002469BC case 23
LDRB            R0, [R1,#0x4B5]
CMP             R0, #0
BNE             loc_24781C
LDRSH           R2, [R1,#6]
LDRSH           R0, [R1,#8]
CMP             R2, R0
MOVGE           R0, #1
STRBGE          R0, [R1,#0x4B5]
LDR             R0, [R4,#4]
VLDR            S1, =248.0
VLDR            S0, =72.0
ADD             R1, SP, #0x80+var_78
BL              sub_3594AC
CMP             R0, #0
NOP
BNE             loc_247848
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x118]
STR             R1, [R0,#0x108]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
TST             R1, #1
BEQ             loc_246D20
ADD             R0, R0, #0x400
VLDR            S1, =0.0
VLDR            S0, [R0,#0xC4]
MOV             R0, #0x17
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VNEGHI.F32      S0, S0
VSTR            S0, [R4,#0x4C]
LDR             R1, [R4,#8]
STRH            R0, [R1]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R4,#0x4C]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#4]; jumptable 002469BC cases 24,25
VLDR            S0, =0.0
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BEQ             loc_2478CC
VCMPE.F32       S17, S0
LDR             R1, [R4,#8]
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #0x19
MOVCS           R0, #0x18
B               loc_246CFC
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R4,#8]
LDRNE           R1, [R4,#8]
MOVNE           R0, #1
STRHEQ          R7, [R0]
BNE             loc_246CFC
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R8]; jumptable 002469BC case 26
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
TST             R0, #1
BNE             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#8]
MOV             R2, R0
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
MOVGE           R0, #0x1B
STRHGE          R0, [R2]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R8]; jumptable 002469BC case 27
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
TST             R0, #1
BNE             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#4]
LDR             R1, [R4,#8]
LDR             R0, [R0,#0x4EC]
TST             R0, #1
MOVNE           R0, #0x1B
BNE             loc_246CFC
MOV             R0, #0x1C
STRH            R0, [R1]
LDR             R0, [R4,#4]
VLDR            S1, =0.0
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE          R0, S0
BGE             loc_247980
VMOV.F32        S2, S0
VNEG.F32        S2, S2
VMOV            R0, S2
LDR             R1, =0x41D00000
CMP             R0, R1
BGE             loc_2479AC
LDR             R0, [R4,#8]
MOV             R2, #0x19
ADD             R1, R0, #6
MOV             R0, #0
STRH            R0, [R1]
STRH            R2, [R1,#2]
STRB            R7, [R1,#4]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
VCMPE.F32       S1, S0
LDR             R1, =0x42200000
MOV             R2, #0
VMRS            APSR_nzcv, FPSCR
VNEGHI.F32      S0, S0
VMOV            R0, S0
CMP             R0, R1
LDR             R0, [R4,#8]
MOVLT           R1, #0x26 ; '&'
MOVGE           R1, #0x32 ; '2'
ADD             R0, R0, #6
STRH            R2, [R0]
B               loc_246B68
LDR             R0, [R4,#8]; jumptable 002469BC case 28
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             loc_247A40
STRH            R7, [R1]
VLDR            S0, =0.0
ADD             R6, SP, #0x80+var_78
VSTR            S0, [SP,#0x80+var_78]
VSTR            S0, [SP,#0x80+var_74]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R1, R6
NOP
BL              sub_166510
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
MOV             R1, #0
NOP
BL              sub_166500
MOV             R0, #5
STRB            R0, [R4,#0xA80]
LDR             R0, [R4,#8]
VLDR            S1, =199.0
LDR             R1, [R4,#4]
VLDR            S0, [R0,#0x364]
ADD             R0, R1, #0x19C00
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x20]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
DCFS 199.0
DCFS 49.0
DCFS 0.0
DCD 0x41D00000
DCD 0x42200000
LDR             R0, [R4,#4]; jumptable 002469BC case 29
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BEQ             loc_247A94
LDR             R1, [R4,#8]
MOV             R0, #3
STRH            R0, [R1]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             loc_247AC8
MOV             R0, #0x1E
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0x3C ; '<'
ADD             R0, R0, #6
B               loc_2479D8
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x80+var_78
BLX             R2
VLDR            S16, =0.0
VLDR            S0, [SP,#0x80+var_78]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x80+var_74]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_247D18
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2A8
MOV             R6, R1
MOV             R0, R4
BL              sub_23D90C
CMP             R0, #0
NOP
BEQ             loc_247B3C
LDR             R2, [R4,#8]
MOV             R1, #0x1F
MOV             R0, #1
STRH            R1, [R2]
LDR             R1, [R4,#8]
STRB            R0, [R1,#0xA]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
ADD             R2, SP, #0x80+var_68
MOV             R1, R6
MOV             R0, R4
STR             R7, [SP,#0x80+var_68]
BL              sub_23E6B4
CMP             R0, #9
NOP
BEQ             loc_247B68
CMP             R0, #0xA
BEQ             loc_247BE8
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [R4,#8]
MOV             R0, #0x24 ; '$'
VLDR            S2, =90.0
VLDR            S1, =1.3333
STRH            R0, [R1]
VLDR            S0, [R5,#0x29C]
MOV             R1, #0
VSTR            S0, [R5,#0x2A4]
VSUB.F32        S0, S2, S0
LDR             R0, [R4,#8]
ADD             R6, SP, #0x80+var_70
STRH            R1, [R0,#6]!
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
CMP             R1, #1
MOVLT           R1, #1
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [SP,#0x80+var_68]
STR             R0, [R4,#0xAC4]
VSTR            S16, [SP,#0x80+var_70]
VSTR            S16, [SP,#0x80+var_6C]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R1, R6
NOP
BL              sub_166510
NOP
NOP
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [R4,#8]
MOV             R0, #0x27 ; '''
VLDR            S2, =90.0
VLDR            S1, =1.3333
STRH            R0, [R1]
VLDR            S0, [R5,#0x29C]
MOV             R1, #0
VSTR            S0, [R5,#0x2A4]
VSUB.F32        S0, S2, S0
LDR             R0, [R4,#8]
STRH            R1, [R0,#6]!
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
CMP             R1, #1
MOVLT           R1, #1
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [SP,#0x80+var_68]
B               loc_248590
LDR             R0, [R8]; jumptable 002469BC case 30
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x80+var_78
BLX             R2
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R0, R2
BGT             loc_247C88
LDR             R0, [R4,#4]
ADD             R0, R0, #0x17400
LDRB            R0, [R0,#0xAD]
CMP             R0, #0
LDRBEQ          R0, [R4,#0xAC1]
CMPEQ           R0, #0
BEQ             loc_247CC4
VLDR            S1, [SP,#0x80+var_78]
VLDR            S0, =0.0
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x80+var_74]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
MOV             R0, #0x20 ; ' '
STRH            R0, [R1]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
MOV             R2, #0
MOV             R1, #0x1E
B               loc_2479D8
MOV             R0, #0x21 ; '!'
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0xA
ADD             R0, R0, #6
B               loc_2479D8
LDR             R0, [R8]; jumptable 002469BC case 31
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x80+var_78
BLX             R2
VLDR            S0, =0.0
VLDR            S1, [SP,#0x80+var_78]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x80+var_74]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#8]
LDRH            R1, [R0,#8]
LDRH            R2, [R0,#6]
SUB             R1, R1, R2
SUB             R1, R1, #1
STRH            R1, [R0,#6]
STRB            R7, [R0,#0xA]
MOV             R0, #0x20 ; ' '
LDR             R1, [R4,#8]
B               loc_246CFC
LDR             R0, [R4,#8]; jumptable 002469BC case 32
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_2469BC; jumptable 002469BC default case, cases 5-16
B               loc_2482E0
LDR             R0, [R4,#8]; jumptable 002469BC case 33
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2A8
MOV             R6, R1
MOV             R0, R4
BLT             loc_247DDC
BL              sub_23D90C
CMP             R0, #0
NOP
BNE             loc_247DAC
MOV             R1, R6
MOV             R0, R4
BL              sub_23DFA8
CMP             R0, #0
LDREQ           R1, [R4,#8]
MOVEQ           R0, #0x22 ; '"'
BEQ             loc_246CFC
LDR             R0, [R4,#8]
ADD             R0, R0, #6
MOV             R2, #0
MOV             R1, #0xA
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R2, [R4,#8]
MOV             R1, #1
MOV             R0, #0x23 ; '#'
STRB            R1, [R2,#0xA]
B               loc_247D38
NOP
BL              sub_23D90C
CMP             R0, #0
NOP
BNE             loc_247E08
MOV             R1, R6
MOV             R0, R4
BL              sub_23EA70
CMP             R0, #0
NOP
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
VLDR            S0, [R5,#0x29C]
VLDR            S1, =0.71111
VLDR            S2, =0.0
ADD             R2, SP, #0x80+var_78
VNMUL.F32       S0, S0, S1
VLDR            S1, [R5,#0x298]
ADD             R1, SP, #0x80+var_78
MOV             R0, R6
VSTM            R2, {S1-S2}
BL              sub_463474
LDR             R0, [R4,#4]
LDR             R6, =0x40490FDB
LDR             R0, [R0,#0x474]
CMP             R0, R6
LDR             R0, [R4]
MOVGT           R1, #1
MOVLE           R1, #0
LDR             R2, [R0,#0x3C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x474]
CMP             R0, R6
LDR             R0, [R4]
MOVGT           R1, #1
MOVLE           R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#8]
ADD             R0, R0, #6
B               loc_247DB4
DCFS 90.0
DCFS 1.3333
DCFS 0.71111
DCD 0x40490FDB
LDR             R0, [R4,#4]; jumptable 002469BC case 34
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#8]
MOV             R2, #0
ADD             R1, R0, #6
MOV             R0, #0xA
STRH            R2, [R1]
STRH            R0, [R1,#2]
STRB            R7, [R1,#4]
LDR             R2, [R4,#8]
MOV             R1, #1
MOV             R0, #0x23 ; '#'
STRB            R1, [R2,#0xA]
B               loc_247D38
LDR             R0, [R4,#8]; jumptable 002469BC case 35
LDRSH           R0, [R0,#2]
CMP             R0, #0x22 ; '"'
CMPNE           R0, #0x21 ; '!'
BNE             loc_247F00
LDR             R0, [R8]
BL              sub_1E45C8
NOP
NOP
BL              sub_2D181C
LDR             R0, [R4,#4]
ADD             R0, R0, #0x2BC00
LDRB            R0, [R0,#0xEC]
CMP             R0, #0
BNE             loc_24662C
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xA]
CMP             R1, #0
STRBNE          R7, [R0,#0xA]
BEQ             loc_247F44
LDR             R0, [R8]
MOV             R6, #0xA
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x2C4
MOV             R2, R6
MOV             R1, #0xFF
BL              sub_5996A0
LDR             R0, [R4,#8]
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BLT             loc_24662C
VLDR            S0, [R5,#0x28C]
VLDR            S1, [R5,#0x298]
LDR             R0, [R8]
VADD.F32        S16, S0, S1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R1, #1
STRB            R1, [R0,#0x28F]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E33A0
LDR             R0, [R8]
NOP
BL              sub_1E45C8
MOV             R1, #0
NOP
BL              sub_2CF650
LDR             R0, [R8]
NOP
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R2, [R1,#0xF8]
MOV             R1, #1
BLX             R2
LDRB            R0, [R4,#0xAC0]
CMP             R0, #0
LDR             R0, [R4,#4]
BEQ             loc_247FE8
VMOV.F32        S0, S16
VLDR            S1, =20.0
ADD             R0, R0, #0x400
VSUB.F32        S0, S0, S1
VLDR            S1, [R0,#0x228]
B               loc_247FFC
VMOV.F32        S0, S16
VLDR            S1, =-20.0
ADD             R0, R0, #0x400
VSUB.F32        S0, S0, S1
VLDR            S1, [R0,#0x224]
VLDR            S18, =10.0
VLDR            S17, =0.0
VADD.F32        S16, S1, S16
VLDR            S1, [R5,#0x290]
LDR             R0, [R4,#4]
VSTR            S17, [SP,#0x80+var_70]
VADD.F32        S1, S1, S18
ADD             R1, SP, #0x80+var_78
VSTM            R1, {S0-S1}
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
ADD             R1, SP, #0x80+var_78
BLX             R2
VLDR            S0, [R5,#0x290]
LDR             R0, [R4,#4]
VADD.F32        S0, S0, S18
VSTR            S16, [R0,#0x118]
VSTR            S0, [R0,#0x11C]
VSTR            S17, [R0,#0x120]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x288]
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x28C]
BLX             R1
LDR             R5, [R4,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x174]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R2, R6
LDR             R1, [R0,#0x170]
LDR             R0, [R5]
LDR             R3, [R0,#0x2E4]
MOV             R0, R5
BLX             R3
LDR             R0, [R8]
BL              sub_1E45C8
LDR             R0, [R0,#8]
LDR             R1, [R4,#4]
LDR             R2, [R0]
ADD             R1, R1, #0x108
LDR             R2, [R2,#0x6C]
BLX             R2
LDR             R0, [R8]
BL              sub_1E45C8
LDR             R3, [R4,#4]
LDR             R2, [R0,#8]
ADD             R3, R3, #0x118
ADD             R2, R2, #0x118
LDM             R3, {R0,R1,R3}
STM             R2, {R0,R1,R3}
LDR             R0, [R8]
BL              sub_1E45C8
LDR             R1, [R0]
MOV             R2, #0
VMOV.F32        S1, S17
VMOV.F32        S0, S17
LDR             R3, [R1,#0xEC]
MOV             R1, R2
BLX             R3
LDR             R0, [R4,#8]
MOV             R4, #0xA
STRH            R7, [R0]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x2C4
MOV             R2, R4
MOV             R1, #0
BL              sub_5996A0
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,PC}
ADD             R1, R4, #0x800; jumptable 002469BC case 36
ADD             R1, R1, #0x2A8
MOV             R0, R4
BL              sub_23D90C
CMP             R0, #0
NOP
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
ADD             R6, SP, #0x80+var_70
VLDR            S0, =1.0
VSTR            S0, [SP,#0x80+var_70]
VSTR            S0, [SP,#0x80+var_6C]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
MOV             R1, R6
NOP
BL              sub_166510
LDR             R2, [R4,#8]
MOV             R1, #0x25 ; '%'
MOV             R0, #1
STRH            R1, [R2]
LDR             R1, [R4,#8]
STRB            R0, [R1,#0xA]
LDR             R0, [R5,#0x29C]
STR             R0, [R5,#0x2A4]
LDR             R0, [R4,#4]
LDR             R1, [R4,#0xAC4]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_2481EC
LDR             R2, [R1,#0x4EC]
TST             R2, #0xE0
BNE             loc_2481C0
LDR             R3, [R0,#0x754]
CMP             R3, R1
BNE             loc_2481EC
AND             R2, R2, #0xE0
CMP             R2, #0x80
BNE             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_2481EC
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
STR             R1, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R3, R3, #0xFC0
ORR             R3, R3, #0x400
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R8]; jumptable 002469BC case 37
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x80+var_78
BLX             R2
VLDR            S1, =0.0
VLDR            S0, [SP,#0x80+var_78]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x80+var_74]
VCMPEQ.F32      S0, S1
VMRSEQ          APSR_nzcv, FPSCR
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
STR             R7, [R4,#0xAC4]
LDR             R1, [R4,#8]
MOV             R0, #0x26 ; '&'
VLDR            S2, =1.3333
STRH            R0, [R1]
LDR             R0, [R4,#8]
MOV             R1, #0
STRB            R7, [R0,#0xA]
VLDR            S3, [R5,#0x29C]
LDR             R0, [R4,#8]
VDIV.F32        S0, S3, S2
ADD             R0, R0, #6
STRH            R1, [R0]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VCVT.S32.F32    S0, S0
VMOV            R2, S0
SXTH            R1, R2
CMP             R1, #1
BGE             loc_246B68
MOV             R1, #1
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
DCFS 20.0
DCFS -20.0
DCFS 10.0
DCFS 0.0
DCFS 1.0
LDR             R0, [R4,#8]; jumptable 002469BC case 38
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R2, R0
BLT             def_2469BC; jumptable 002469BC default case, cases 5-16
STRH            R7, [R1]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
ADD             R1, R4, #0x800; jumptable 002469BC case 39
ADD             R1, R1, #0x2A8
MOV             R0, R4
BL              sub_23D90C
CMP             R0, #0
NOP
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R2, [R4,#8]
MOV             R1, #0x28 ; '('
MOV             R0, #1
STRH            R1, [R2]
LDR             R1, [R4,#8]
STRB            R0, [R1,#0xA]
LDR             R0, [R5,#0x29C]
STR             R0, [R5,#0x2A4]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R8]; jumptable 002469BC case 40
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x80+var_78
BLX             R2
VLDR            S1, =0.0
VLDR            S0, [SP,#0x80+var_78]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [SP,#0x80+var_74]
VCMPEQ.F32      S0, S1
VMRSEQ          APSR_nzcv, FPSCR
BEQ             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [R4,#8]
MOV             R0, #0x29 ; ')'
VLDR            S2, =0.5
VLDR            S3, =40.0
STRH            R0, [R1]
LDR             R0, [R4,#8]
STRB            R7, [R0,#0xA]
LDR             R0, [R4,#0xAC4]
LDR             R1, [R0,#0xAA8]
LDR             R0, [R4,#8]
VLDR            S0, [R1,#0x24]
ADD             R0, R0, #6
VCVT.U32.F32    S0, S0
VMOV            R1, S0
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
MOV             R1, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VLDRNE          S2, =1.0
VADDNE.F32      S0, S0, S2
VLDR            S2, [R5,#0x29C]
STRH            R1, [R0]
VDIV.F32        S4, S3, S0
VDIV.F32        S0, S2, S4
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VCVT.S32.F32    S0, S0
VMOV            R2, S0
SXTH            R1, R2
CMP             R1, #1
BLT             loc_2482A4
B               loc_246B68
LDR             R0, [R4,#8]; jumptable 002469BC case 41
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BLT             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#0xAC4]
LDR             R0, [R0,#0xAA8]
LDR             R1, [R0,#0x160]!
ADD             R0, R0, #8
CMP             R1, R0
BNE             loc_24843C
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
BL              sub_5F1964
CMP             R0, #0
LDREQ           R0, [R4,#8]
STRHEQ          R7, [R0]
BEQ             loc_2484DC
LDR             R1, [R4,#8]
MOV             R0, #0x2A ; '*'
STRH            R0, [R1]
LDR             R0, [R4,#8]
STRB            R7, [R0,#0x4B5]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R4,#0xAC4]; jumptable 002469BC case 42
LDR             R0, [R0,#0xAA8]
ADD             R2, R0, #0x168
LDR             R1, [R0,#0x160]
CMP             R1, R2
LDRBEQ          R0, [R0,#0xA]
CMPEQ           R0, #0
BNE             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x80+var_78
BLX             R2
VLDR            S0, =0.0
VLDR            S1, [SP,#0x80+var_78]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x80+var_74]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_2484C8
STRH            R7, [R6,#0x8A]
LDR             R1, [R4,#8]
MOV             R0, #0x2B ; '+'
STRH            R0, [R1]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
B               loc_247CB8
LDR             R1, [R4,#8]
MOV             R0, #1
STRH            R7, [R1]
LDR             R1, [R4,#8]
STRB            R0, [R1,#0x4B5]
STR             R7, [R4,#0xAC4]
B               def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R0, [R8]; jumptable 002469BC case 43
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
ADD             R1, SP, #0x80+var_78
BLX             R2
VLDR            S0, =0.0
VLDR            S1, [SP,#0x80+var_78]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x80+var_74]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_247D18
ADD             R1, R4, #0x800
ADD             R2, SP, #0x80+var_70
ADD             R1, R1, #0x2A8
MOV             R0, R4
STR             R7, [SP,#0x80+var_70]
BL              sub_23E6B4
CMP             R0, #0xA
NOP
BNE             def_2469BC; jumptable 002469BC default case, cases 5-16
LDR             R1, [R4,#8]
MOV             R0, #0x27 ; '''
VLDR            S2, =90.0
VLDR            S1, =1.3333
STRH            R0, [R1]
VLDR            S0, [R5,#0x29C]
MOV             R1, #0
VSTR            S0, [R5,#0x2A4]
VSUB.F32        S0, S2, S0
LDR             R0, [R4,#8]
STRH            R1, [R0,#6]!
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
CMP             R1, #1
MOVLT           R1, #1
STRH            R1, [R0,#2]
STRB            R7, [R0,#4]
LDR             R0, [SP,#0x80+var_70]
STR             R0, [R4,#0xAC4]
LDR             R1, [R4,#8]; jumptable 002469BC default case, cases 5-16
LDRSH           R0, [R1]
CMP             R0, #0x1E
BEQ             loc_2485C8
BGE             loc_2485BC
CMP             R0, #2
CMPNE           R0, #3
CMPNE           R0, #0x1D
BNE             loc_248638
B               loc_2485C8
CMP             R0, #0x1F
CMPNE           R0, #0x20 ; ' '
BNE             loc_248638
LDRB            R0, [R1,#0x4B4]
TST             R0, #8
BEQ             loc_248638
LDR             R0, [R4,#4]
VLDR            S2, =-1.0
VLDR            S1, =1.75
ADD             R0, R0, #0x17000
ADD             R0, R0, #0x4B0
VLDR            S0, =12.0
BL              sub_53EB38
LDR             R0, [R4,#4]
MOV             R2, #1
ADD             R3, R0, #0x17800
LDR             R0, [R0,#0x4B8]
STR             R0, [R3,#0x16C]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x17800
STR             R0, [R1,#0x168]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x19C
LDR             R1, [R0]
ORR             R1, R1, #0x10
STR             R1, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x17400
ADD             R0, R0, #0xAD
STRB            R2, [R0]
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
SUB             R0, R0, #0x1D
CMP             R0, #4
BHI             loc_248770
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x16C]
CMP             R6, #0
MOVNE           R11, #4
BEQ             loc_248770
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #8
BNE             loc_248764
LDRB            R0, [R6,#0xDE]
TST             R0, #1
BEQ             loc_248764
TST             R0, #4
BNE             loc_248764
LDR             R0, [R6,#0x648]
TST             R0, #2
BEQ             loc_248764
LDRB            R0, [R6,#0xAAC]
CMP             R0, #0x11
BNE             loc_248764
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R6
LDR             R3, [R0,#0x98]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             loc_248764
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_248720
LDR             R1, [R6,#0x4EC]
TST             R1, #0xE0
BNE             loc_2486F4
LDR             R3, [R0,#0x754]
CMP             R3, R6
BNE             loc_248720
MOV             R1, R1,LSL#24
CMP             R11, R1,LSR#29
BNE             loc_248764
LDR             R2, [R0,#0x754]
CMP             R2, R6
BNE             loc_248720
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_248764
STR             R6, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
ORR             R3, R3, #0xFC0
B               loc_248754
DCFS 0.5
DCFS 40.0
DCFS 90.0
DCFS 1.3333
DCFS -1.0
DCFS 1.75
DCFS 12.0
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
LDR             R6, [R6,#8]
CMP             R6, #0
BNE             loc_248668
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
STRBNE          R7, [R0,#0xC]
LDR             R0, [R4,#8]
SXTH            R1, R9
STRB            R7, [R0,#0x4B4]
LDR             R0, [R4,#8]
STRH            R1, [R0,#2]
LDR             R0, [R4,#8]
LDRSH           R2, [R0]
CMP             R1, R2
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x17400
ADD             R0, R0, #0xAE
STRB            R10, [R0]
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0x4B6]
CMP             R1, #0
BNE             loc_248860
LDRSH           R0, [R0]
CMP             R0, #0x14
BEQ             loc_248A4C
BGE             loc_24881C
CMP             R0, #4
BEQ             loc_2488CC
BGE             loc_248804
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_2488CC
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_2489C4
B               loc_248840
CMP             R0, #0x11
CMPNE           R0, #0x12
BEQ             loc_248A30
CMP             R0, #0x13
BEQ             loc_248A4C
B               loc_248840
CMP             R0, #0x28 ; '('
BEQ             loc_2488A8
BGE             loc_248898
CMP             R0, #0x1A
CMPNE           R0, #0x1B
CMPNE           R0, #0x1C
BEQ             loc_2489F4
CMP             R0, #0x27 ; '''
BEQ             loc_2488A8
MOV             R2, #0
MOV             R1, #0x1B
MOV             R0, R2
BL              sub_5435FC
MOV             R2, #0
MOV             R1, #0x21 ; '!'
MOV             R0, #1
BL              sub_5435FC
VLDR            S0, [R5,#0x29C]
VLDR            S1, =0.71111
LDR             R0, [R5,#0x298]
ADD             R1, SP, #0x80+var_50
VNMUL.F32       S0, S0, S1
STR             R0, [SP,#0x80+var_50]
VLDR            S1, =0.0
ADD             R0, R4, #0x800
VSTR            S1, [SP,#0x80+var_4C]
ADD             R0, R0, #0x2A8
BL              sub_463474
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D11}
POP             {R4-R11,PC}
CMP             R0, #0x29 ; ')'
CMPNE           R0, #0x2A ; '*'
CMPNE           R0, #0x2B ; '+'
BNE             loc_248840
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x246]
CMP             R0, #0
BNE             loc_248AEC
B               loc_248AA8
MOV             R2, #0
MOV             R1, #0x1B
MOV             R0, R2
BL              sub_5435FC
MOV             R2, #0
MOV             R1, #0x21 ; '!'
MOV             R0, #1
BL              sub_5435FC
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x246]
CMP             R0, #0
BNE             loc_248954
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x19C]
CMP             R0, #0
BNE             loc_248954
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #0
LDR             R0, [R0]
MOV             R2, #1
MOV             R1, R3
BL              sub_59AD78
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x636]
CMP             R0, #0
BNE             loc_248860
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x58C]
CMP             R0, #0
BNE             loc_248860
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R2, #1
LDR             R0, [R0]
MOV             R3, #0
MOV             R1, R2
BL              sub_59AD78
NOP
NOP
B               loc_248860
LDRB            R0, [R4,#0x5D]
CMP             R0, #0
BEQ             loc_248860
LDR             R0, [R8]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R2, [R1,#0xB4]
MOV             R1, #0x22 ; '"'
BLX             R2
CMP             R0, #0
BEQ             loc_248860
B               loc_248A14
LDR             R0, [R8]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R2, [R1,#0xB4]
MOV             R1, #0x22 ; '"'
BLX             R2
CMP             R0, #0
BEQ             loc_248860
MOV             R2, #0
MOV             R1, #0x22 ; '"'
MOV             R0, #1
BL              sub_5435FC
NOP
NOP
B               loc_248860
LDR             R1, =0x8001
MOV             R2, #0
MOV             R0, #1
BL              sub_5435FC
NOP
NOP
B               loc_248860
LDRB            R0, [SP,#0x80+var_5C]
CMP             R0, #0
BEQ             loc_248A78
MOV             R2, #0
MOV             R1, #0x1C
MOV             R0, R2
BL              sub_5435FC
LDR             R1, =0x8001
MOV             R2, #0
MOV             R0, #1
B               loc_248A84
MOV             R2, #1
MOV             R1, #0x1C
MOV             R0, #0
BL              sub_5435FC
LDRB            R0, [SP,#0x80+var_60]
CMP             R0, #0
BNE             loc_248A30
MOV             R2, #1
MOV             R0, R2
ORR             R1, R2, R2,LSL#15
BL              sub_5435FC
B               loc_248860
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x19C]
CMP             R0, #0
BEQ             loc_248AEC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #0
LDR             R0, [R0]
MOV             R2, R3
MOV             R1, R3
BL              sub_59AD78
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x636]
CMP             R0, #0
BNE             loc_248860
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0x58C]
CMP             R0, #0
BEQ             loc_248860
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #0
LDR             R0, [R0]
MOV             R2, R3
MOV             R1, #1
BL              sub_59AD78
NOP
NOP
B               loc_248860
