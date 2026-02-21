PUSH            {R4-R8,LR}
MOV             R5, R0
ADD             R4, R0, #0x3800
ADD             R0, R0, #0x3800
VPUSH           {D8-D10}
ADD             R0, R0, #0x21C
ADD             R3, R4, #0x228
SUB             SP, SP, #0x18
LDM             R0, {R0-R2}
VLDR            S16, =0.0
STM             R3, {R0-R2}
LDR             R0, [R5,#8]
LDRSH           R0, [R0]
CMP             R0, #0x32; switch 50 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
DCD def_1BAEC4; jump table for switch statement
ADD             R6, R5, #0x1000; jumptable 001BAEC4 case 19
VLDR            S1, =3.4286
VLDR            S2, [R6,#0x1B0]
VLDR            S0, [R6,#0x1D8]
VLDR            S17, =360.0
VADD.F32        S1, S1, S2
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VSTR            S1, [R6,#0x1B0]
BEQ             loc_1BAFE0
VLDR            S4, [R6,#0x1DC]
VLDR            S3, =26.25
VDIV.F32        S2, S4, S3
VSUB.F32        S0, S0, S2
VSTR            S0, [R6,#0x1D8]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S16
VSTR            S0, [R6,#0x1D8]
LDR             R7, =0x43B40000
VMOV            R0, S1
CMP             R0, R7
VSUBGE.F32      S0, S1, S17
MOV             R0, R5
VSTRGE          S0, [R6,#0x1B0]
BL              sub_1B1384
CMP             R0, #0
NOP
BEQ             loc_1BB03C
VLDR            S0, [R6,#0x1B0]
LDR             R1, =0x43340000
VMOV            R0, S0
VLDR            S1, =180.0
CMP             R0, R1
VSUBLE.F32      S0, S1, S0
VSUBGT.F32      S0, S0, S1
VSUBGT.F32      S0, S17, S0
VMOV            R0, S0
VSTR            S0, [R6,#0x1B0]
CMP             R0, R7
VSUBGE.F32      S0, S0, S17
VSTRGE          S0, [R6,#0x1B0]
MOV             R0, R5
BL              sub_1B6010
LDR             R0, =0x39A4
LDR             R0, [R0,R5]
CMP             R0, #0
MOVEQ           R0, R5
BLEQ            sub_1B6470
NOP
NOP
B               def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
LDR             R0, =off_6D1648; jumptable 001BAEC4 case 26
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
MOV             R1, SP
BLX             R2
VLDR            S0, [SP,#0x48+var_48]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x48+var_44]
VCMPEQ.F32      S1, S16
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_1BB0C0
VMUL.F32        S1, S0, S0
VLDR            S2, [SP,#0x48+var_44]
VLDR            S3, =1.0
VMLA.F32        S1, S2, S2
VSQRT.F32       S4, S1
VDIV.F32        S1, S3, S4
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S2, S1
VSTMEA          SP, {S0-S1}
ADD             R6, R5, #0x1000
LDR             R0, =0x39A8
VLDR            S19, =90.0
VLDR            S17, =0.71111
LDR             R1, [R0,R5]
ADD             R0, R5, #0x3800
ADD             R0, R0, #0x1AC
ADD             R1, R1, #0x108
VLDM            R0, {S0-S2}
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x1CC
VLDM            R1, {S3-S5}
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTM            R0, {S0-S2}
VLDR            S0, [R4,#0x18C]
LDR             R7, [R5,#4]
VSUB.F32        S0, S0, S19
VMUL.F32        S0, S0, S17
BL              sub_464318
VLDR            S18, [R6,#0x1CC]
VLDR            S20, =110.0
VLDR            S1, [R4,#0x18C]
VMLA.F32        S18, S0, S20
VSUB.F32        S0, S1, S19
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S2, [R6,#0x1D0]
VLDR            S3, =75.0
VLDR            S1, [R6,#0x1D4]
VMLA.F32        S2, S0, S20
VSTR            S18, [SP,#0x48+var_40]
ADD             R0, SP, #0x48+var_3C
ADD             R1, SP, #0x48+var_40
VSUB.F32        S0, S2, S3
VSTM            R0, {S0-S1}
LDR             R0, [R7]
LDR             R2, [R0,#0x6C]
MOV             R0, R7
BLX             R2
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
ADD             R0, R4, #0x18C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1BB1E8
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BB1E8
VLDR            S1, [SP,#0x48+var_48]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_1BB210
BGT             loc_1BB234
B               loc_1BB250
DCFS 0.0
DCFS 3.4286
DCFS 360.0
DCFS 26.25
DCD 0x43B40000
DCD 0x43340000
DCFS 180.0
DCD 0x39A4
DCD off_6D1648
DCFS 1.0
DCD 0x39A8
DCFS 90.0
DCFS 0.71111
DCFS 110.0
DCFS 75.0
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BB250
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1BB250
VLDR            S1, [SP,#0x48+var_48]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1BB22C
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x190]
VLDR            S2, =2.4
VMLS.F32        S1, S0, S2
VSTR            S1, [R4,#0x190]
B               loc_1BB268
NOP
BCS             loc_1BB250
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x190]
VLDR            S2, =0.2
VMLS.F32        S1, S0, S2
VSTR            S1, [R4,#0x190]
B               loc_1BB268
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x190]
VLDR            S2, =0.8
VMLS.F32        S1, S0, S2
VSTR            S1, [R4,#0x190]
VLDR            S0, [R4,#0x18C]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGE          R0, S0
BGE             loc_1BB288
VMOV.F32        S1, S0
VNEG.F32        S1, S1
VMOV            R0, S1
LDR             R1, =0x40D00000
CMP             R0, R1
BGE             loc_1BB318
VLDR            S1, [R4,#0x190]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S1, S1
VMOV            R0, S1
CMP             R0, #0x40000000
BGE             loc_1BB318
VLDR            S1, [SP,#0x48+var_48]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BB2E8
VADD.F32        S0, S0, S19
VMUL.F32        S0, S0, S17
BL              sub_464380
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R4,#0x190]
VLDR            S2, =4.0
VNEGLT.F32      S0, S0
VMLS.F32        S1, S0, S2
B               loc_1BB314
NOP
BLE             loc_1BB318
VADD.F32        S0, S0, S19
VMUL.F32        S0, S0, S17
BL              sub_464380
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R4,#0x190]
VLDR            S2, =4.0
VNEGLT.F32      S0, S0
VMLA.F32        S1, S0, S2
VSTR            S1, [R4,#0x190]
VLDR            S0, [R4,#0x190]
LDR             R1, =0x40E00000
VMOV.F32        S1, S0
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VNEGHI.F32      S0, S0
VMOV            R0, S0
CMP             R0, R1
VLDRLT          S0, [R4,#0x190]
BLT             loc_1BB35C
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =7.0
VLDRCC          S0, =-1.0
VLDRCS          S0, =1.0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x190]
VMOV.F32        S1, S0
VLDR            S3, =0.03
VLDR            S2, [R4,#0x18C]
LDR             R1, =0xC3340000
VMLS.F32        S0, S1, S3
VSTR            S0, [R4,#0x190]
VADD.F32        S1, S2, S0
VMOV            R0, S1
VSTR            S1, [R4,#0x18C]
CMP             R0, R1
VLDRHI          S0, =360.0
VADDHI.F32      S0, S1, S0
BHI             loc_1BB3A8
LDR             R1, =0x43340000
VMOV            R0, S1
CMP             R0, R1
VLDRGT          S0, =360.0
VSUBGT.F32      S0, S1, S0
BLE             def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
VSTR            S0, [R4,#0x18C]
B               def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
LDR             R0, [R5,#4]; jumptable 001BAEC4 case 28
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
B               loc_1BB680
LDR             R0, =0x39A8; jumptable 001BAEC4 case 31
LDR             R6, [R0,R5]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R6,#0xAAC]
ADD             R1, SP, #0x48+var_3C
CMPEQ           R0, #3
LDREQ           R7, [R6,#0xAA8]
MOVNE           R7, #0
MOV             R0, R7
BL              sub_2DD614
LDM             R0, {R1,R2}
ADD             R6, R5, #0x1000
LDR             R0, [R0,#8]
VLDR            S21, =90.0
VLDR            S18, =57.296
STR             R0, [R6,#0x1C8]
ADD             R0, R5, #0x11C0
VLDR            S19, =0.71111
STM             R0, {R1,R2}
VLDR            S0, [R4,#0x18C]
VLDR            S1, [R7,#0x23C]
LDR             R8, [R5,#4]
VSUB.F32        S0, S0, S21
VMLA.F32        S0, S1, S18
VMUL.F32        S0, S0, S19
BL              sub_464318
VLDR            S1, [R4,#0x18C]
VLDR            S2, [R7,#0x23C]
VLDR            S17, [R6,#0x1C0]
VSUB.F32        S1, S1, S21
VLDR            S20, =110.0
VMLA.F32        S17, S0, S20
VMLA.F32        S1, S2, S18
VMUL.F32        S0, S1, S19
BL              sub_464380
VLDR            S1, =-2.5
VLDR            S4, [R6,#0x1C4]
VLDR            S3, =75.0
VMOV.F32        S2, S1
LDR             R0, [R6,#0x1C8]
VSTR            S17, [SP,#0x48+var_48]
MOV             R1, SP
VMLA.F32        S2, S0, S20
VADD.F32        S0, S2, S4
VSUB.F32        S0, S0, S3
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_44]
STR             R0, [SP,#0x48+var_40]
LDR             R0, [R8]
LDR             R2, [R0,#0x6C]
MOV             R0, R8
BLX             R2
LDR             R0, [R5,#4]
ADD             R6, R5, #0x3800
ADD             R6, R6, #0x198
VLDR            S1, =5.0
LDR             R1, [R0,#0x4EC]
VLDR            S17, =0.5
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
VLDR            S0, [R6]
VCVT.F32.S32    S2, S0
VDIV.F32        S0, S2, S1
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S1, =-0.5
VMLA.F32        S17, S0, S1
VLDR            S0, [R4,#0x194]
VMUL.F32        S0, S17, S0
VSTR            S0, [R4,#0x18C]
LDR             R0, [R6]
SUB             R0, R0, #1
CMP             R0, #0
STR             R0, [R6]
MOVLE           R0, #0
STR             R0, [R6]
MOV             R0, R5
BL              sub_1B74E8
NOP
NOP
B               def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
DCFS 2.4
DCFS 0.2
DCFS 0.8
DCD 0x40D00000
DCFS 4.0
DCD 0x40E00000
DCFS -1.0
DCFS 7.0
DCFS 0.03
DCD 0xC3340000
DCFS 57.296
DCFS -2.5
DCFS 0.5
DCFS 5.0
DCFS 3.1416
DCFS 40.744
DCFS -0.5
LDR             R0, =0x39A8; jumptable 001BAEC4 case 33
LDR             R6, [R0,R5]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R6,#0xAAC]
CMPEQ           R0, #3
ADD             R0, R5, #0x3800
ADD             R0, R0, #0x198
LDREQ           R6, [R6,#0xAA8]
LDR             R1, [R0]
MOVNE           R6, #0
CMP             R1, #0
BLE             loc_1BB5C0
VLDR            S1, [R4,#0x194]
VLDR            S0, [R6,#0x23C]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x23C]
LDR             R1, [R0]
SUB             R1, R1, #1
STR             R1, [R0]
ADD             R1, SP, #0x48+var_3C
MOV             R0, R6
BL              sub_2DD614
LDM             R0, {R1,R2}
ADD             R7, R5, #0x1000
LDR             R0, [R0,#8]
VLDR            S21, =90.0
VLDR            S19, =57.296
STR             R0, [R7,#0x1C8]
ADD             R0, R5, #0x11C0
VLDR            S18, =0.71111
STM             R0, {R1,R2}
VLDR            S0, [R4,#0x18C]
VLDR            S1, [R6,#0x23C]
LDR             R8, [R5,#4]
VSUB.F32        S0, S0, S21
VMLA.F32        S0, S1, S19
VMUL.F32        S0, S0, S18
BL              sub_464318
VLDR            S1, [R4,#0x18C]
VLDR            S2, [R6,#0x23C]
VLDR            S17, [R7,#0x1C0]
VSUB.F32        S1, S1, S21
VLDR            S20, =110.0
VMLA.F32        S17, S0, S20
VMLA.F32        S1, S2, S19
VMUL.F32        S0, S1, S18
BL              sub_464380
VLDR            S1, =-2.5
VLDR            S4, [R7,#0x1C4]
VLDR            S3, =75.0
VMOV.F32        S2, S1
LDR             R0, [R7,#0x1C8]
VSTR            S17, [SP,#0x48+var_48]
MOV             R1, SP
VMLA.F32        S2, S0, S20
VADD.F32        S0, S2, S4
VSUB.F32        S0, S0, S3
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_44]
STR             R0, [SP,#0x48+var_40]
LDR             R0, [R8]
LDR             R2, [R0,#0x6C]
MOV             R0, R8
BLX             R2
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
B               def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
LDR             R0, [R5,#8]; jumptable 001BAEC4 case 49
LDRB            R1, [R0,#4]
CMP             R1, #0
BNE             def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BGE             def_1BAEC4; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
VLDR            S0, [R4,#0x250]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1BB748
LDR             R0, [R5,#4]
VLDR            S0, [R4,#0x21C]
LDR             R2, =0x437A0000
VLDR            S1, [R0,#0x108]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VMOV            R1, S0
CMP             R1, R2
BGE             loc_1BB748
VLDR            S2, [R0,#0x10C]
VLDR            S4, [R4,#0x220]
VMOV.F32        S0, S16
VLDR            S1, =2.0
VSUB.F32        S2, S2, S4
LDR             R0, [R5,#8]
VLDR            S3, =0.5
LDRSH           R1, [R0,#8]
LDRSH           R0, [R0,#6]
SUB             R0, R1, R0
VNEG.F32        S4, S2
VMUL.F32        S5, S2, S1
VMUL.F32        S2, S0, S4
VSQRT.F32       S4, S2
VMLA.F32        S4, S0, S1
VMOV            S0, R0
VCVT.F32.S32    S1, S0
VDIV.F32        S2, S5, S1
VDIV.F32        S0, S4, S1
VSUB.F32        S2, S2, S0
VSUB.F32        S4, S0, S2
VDIV.F32        S2, S4, S1
VSTR            S2, [R4,#0x250]
VMLS.F32        S0, S2, S3
VSTR            S0, [R4,#0x24C]
ADD             R0, R4, #0x21C
VLDR            S2, =0.8
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
VLDR            S1, [R4,#0x21C]
VLDR            S3, [R4,#0x240]
VLDR            S0, [R4,#0x248]
VMLA.F32        S1, S3, S0
VSUB.F32        S2, S0, S2
VSTR            S1, [R4,#0x21C]
VLDR            S1, [R4,#0x224]
VLDR            S3, [R4,#0x244]
VMLA.F32        S1, S3, S0
VSTR            S1, [R4,#0x224]
VSTR            S2, [R4,#0x248]
VLDR            S1, [R4,#0x220]
VLDR            S0, [R4,#0x24C]
VADD.F32        S1, S1, S0
VSTR            S1, [R4,#0x220]
VLDR            S1, [R4,#0x250]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x24C]
BL              sub_4635D8
ADD             R2, R4, #0x21C
MOV             R1, SP
VLDM            R2, {S0-S2}
MOV             R0, R5
BL              sub_1B171C
VLDR            S0, [R4,#0x18C]; jumptable 001BAEC4 default case, cases 0-18,20-25,27,29,30,32,34-48
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BB808
LDR             R0, [R5,#8]
LDRSH           R0, [R0]
CMP             R0, #0
CMPNE           R0, #1
CMPNE           R0, #4
BNE             loc_1BB808
LDR             R0, =0xBE4CCCCD
VMOV            R1, S0
CMP             R1, R0
BLS             loc_1BB824
VLDR            S1, =6.0
VADD.F32        S0, S0, S1
VMOV            R1, S0
CMP             R1, R0
BLS             loc_1BB814
VSTR            S0, [R4,#0x18C]
ADD             SP, SP, #0x18
VPOP            {D8-D10}
POP             {R4-R8,PC}
VSTR            S16, [R4,#0x18C]
ADD             SP, SP, #0x18
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDR             R0, =0x3E4CCCCD
VMOV            R1, S0
CMP             R1, R0
BLE             loc_1BB814
VLDR            S1, =6.0
VSUB.F32        S0, S0, S1
VMOV            R1, S0
CMP             R1, R0
BLE             loc_1BB814
B               loc_1BB804
