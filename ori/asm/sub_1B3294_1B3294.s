PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x18
LDR             R0, [R0,#8]
LDRB            R0, [R0,#4]
CMP             R0, #0
BEQ             def_1B32C0; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x32; switch 50 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B32C0; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
DCD loc_1B3390; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 001B32C0 case 0
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1B33B0
LDRH            R1, [R0,#2]
CMP             R1, #0x1E
MOVEQ           R1, #1
STRBEQ          R1, [R0,#0x4B5]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
ADD             SP, SP, #0x18; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R4,#4]; jumptable 001B32C0 case 4
MOV             R1, #0
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x91
STRB            R1, [R0]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R4,#8]; jumptable 001B32C0 case 3
LDRSH           R0, [R0,#2]
CMP             R0, #0x1A
CMPNE           R0, #0x1F
BNE             def_1B32C0; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
ADD             R5, R4, #0x3800
VLDR            S16, =0.71111
VLDR            S0, [R5,#0x18C]
VMUL.F32        S0, S0, S16
BL              sub_464318
VLDR            S1, [R5,#0x190]
LDR             R0, [R4,#4]
VMUL.F32        S0, S0, S1
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x78]
VLDR            S0, [R5,#0x18C]
LDR             R4, [R4,#4]
VMUL.F32        S0, S0, S16
BL              sub_464380
LDR             R0, [R4]
VLDR            S1, [R5,#0x190]
LDR             R1, [R0,#0x214]
ADD             SP, SP, #0x18
VMUL.F32        S0, S0, S1
VLDR            S1, =-1.0
MOV             R0, R4
VPOP            {D8-D9}
VMOV.F32        S2, S1
POP             {R4-R8,LR}
BX              R1
LDR             R0, [R4,#4]; jumptable 001B32C0 case 17
VLDR            S0, =0.0
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x78]
LDR             R3, [R4,#4]
ADD             R0, R4, #0x11C0
LDR             R1, [R3,#0x108]
LDR             R2, [R3,#0x10C]
LDR             R3, [R3,#0x110]
STM             R0, {R1-R3}
LDR             R0, [R4,#8]
LDRB            R1, [R0,#4]
CMP             R1, #0
MOVNE           R1, #0
STRBNE          R1, [R0,#0x4B5]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R4,#8]; jumptable 001B32C0 case 19
LDRH            R0, [R0,#2]
CMP             R0, #0x12
BNE             def_1B32C0; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
LDR             R0, [R4,#4]
LDR             R1, =0x40490FDB
LDR             R0, [R0,#0x474]
CMP             R0, R1
VLDRGT          S0, =0.0
VLDRLE          S0, =180.0
ADD             R0, R4, #0x1000
VSTR            S0, [R0,#0x1B0]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             R6, R4, #0x3800; jumptable 001B32C0 case 20
ADD             R6, R6, #0x1A4
LDR             R0, [R6]
CMP             R0, #0
BEQ             def_1B32C0; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
LDRB            R1, [R0,#0xAAC]
CMP             R1, #3
BEQ             loc_1B360C
LDR             R1, [R4,#4]
VLDR            S2, =75.0
VLDR            S1, [R0,#0x108]
ADD             R1, R1, #0x108
VLDR            S0, [R0,#0x10C]
VLDM            R1, {S3-S4}
VSUB.F32        S1, S1, S3
VADD.F32        S2, S4, S2
VSUB.F32        S0, S0, S2
ADD             R4, R4, #0x1000
LDR             R1, =0x2D83
VLDR            S2, [R4,#0x1B0]
VCVT.U32.F32    S2, S2
VMOV            R0, S2
UXTH            R0, R0
MUL             R0, R0, R1
MOV             R5, R0,LSR#20
BL              sub_4645C0
VLDR            S3, =1.4062
VLDR            S1, =90.0
VLDR            S2, =0.016667
VMUL.F32        S0, S0, S3
VSUB.F32        S1, S0, S1
VMUL.F32        S0, S1, S2
VMOV            R0, S0
CMP             R0, #0x3F800000
BLT             loc_1B35A4
VLDR            S3, =0.0
VLDR            S0, =1.0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S1
VLDR            S4, =60.0
VNEGLT.F32      S2, S2
VSUB.F32        S2, S2, S4
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S2, S2
VSTR            S2, [R4,#0x1D8]
LDR             R1, =0xBF800000
VMOV            R0, S0
CMP             R0, R1
BCC             loc_1B35E0
VLDR            S2, =0.0
VLDR            S0, =-1.0
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S3, =60.0
VNEGLT.F32      S1, S1
VSUB.F32        S1, S1, S3
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S1, S1
VSTR            S1, [R4,#0x1D8]
LDR             R0, [R4,#0x1D8]
CMP             R5, #4
STR             R0, [R4,#0x1DC]
BHI             def_1B32C0; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
BL              sub_5F5C58
VLDR            S1, =57.296
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x1B0]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
LDR             R0, [R4,#4]
LDR             R5, [R6]
VLDR            S0, =75.0
VLDR            S1, [R0,#0x10C]
VLDR            S16, [R0,#0x108]
LDR             R0, [R5]
VADD.F32        S17, S1, S0
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
CMPEQ           R0, #3
LDREQ           R0, [R5,#0xAA8]
MOVNE           R0, #0
VLDR            S1, [R0,#0x250]
LDR             R0, [R6]
VLDR            S2, [R0,#0x10C]
VLDR            S0, [R0,#0x108]
VADD.F32        S2, S2, S1
VSUB.F32        S1, S0, S16
VSUB.F32        S0, S2, S17
B               loc_1B352C
LDR             R6, =off_6D1648; jumptable 001B32C0 case 21
MOV             R4, #2
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, #2
BLE             def_1B32C0; jumptable 001B32C0 default case, cases 1,2,5-16,18,23,25,29,30,33-35,37,38,42-48
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B36E8
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0
CMPNE           R0, #3
BNE             loc_1B36E8
LDR             R0, [R5,#0xAA8]
CMP             R0, #0
LDRBNE          R1, [R0,#8]
CMPNE           R1, #0
BEQ             loc_1B36E8
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, #0
BLX             R2
LDR             R0, [R6]
ADD             R4, R4, #1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R4
BGT             loc_1B3688
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
DCFS 0.71111
DCFS -1.0
DCFS 0.0
DCD 0x40490FDB
DCFS 180.0
DCFS 75.0
DCD 0x2D83
DCFS 1.4062
DCFS 90.0
DCFS 0.016667
DCFS 1.0
DCFS 60.0
DCD 0xBF800000
DCFS 57.296
DCD off_6D1648
ADD             R2, R4, #0x1000; jumptable 001B32C0 case 22
ADD             R1, SP, #0x40+var_38
MOV             R6, SP
ADD             R5, SP, #0x40+var_3C
ADD             R2, R2, #0x1BC
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R5
MOV             R1, R6
MOV             R0, R4
BL              sub_1AD930
ADD             R0, R4, #0x1000
VLDR            S0, =50.0
VLDR            S1, [R0,#0x1BC]
VLDR            S3, [SP,#0x40+var_40]
ADD             R1, SP, #0x40+var_38
VADD.F32        S1, S1, S0
VLDR            S0, [SP,#0x40+var_3C]
VLDR            S2, =0.0
VLDM            R1, {S4-S5}
VMUL.F32        S0, S1, S0
VMUL.F32        S1, S1, S3
VLDR            S3, [SP,#0x40+var_30]
VADD.F32        S3, S3, S2
VADD.F32        S2, S4, S0
VADD.F32        S0, S5, S1
VSTR            S2, [R0,#0x1CC]
VSTR            S0, [R0,#0x1D0]
VSTR            S3, [R0,#0x1D4]
LDR             R0, =0x39A4
LDR             R1, [R0,R4]
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1CC
ADD             R1, R1, #0x108
VLDR            S1, [R0,#8]
ADD             R0, R4, #0x3800
VLDM            R1, {S3-S5}
VSUB.F32        S2, S3, S2
VSUB.F32        S1, S5, S1
VSUB.F32        S0, S4, S0
VSTR            S2, [R0,#0x1AC]
ADD             R0, R4, #0x3000
ADD             R0, R0, #0x9B0
VSTM            R0, {S0-S1}
MOV             R0, R4
BL              sub_1BADA8
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             R0, R4, #0x3800; jumptable 001B32C0 case 24
ADD             R0, R0, #0x1A4
ADD             R4, R4, #0x3800
LDR             R2, [R0]
ADD             R4, R4, #0x1A8
MOV             R1, #0
STR             R2, [R4]
STR             R1, [R0]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             R5, R4, #0x1000; jumptable 001B32C0 case 26
VLDR            S1, =185.0
VLDR            S0, [R5,#0x1D0]
LDR             R0, [R5,#0x1CC]
LDR             R1, [R5,#0x1D4]
VSUB.F32        S0, S0, S1
LDR             R2, [R4,#4]
STR             R0, [SP,#0x40+var_40]
VSTR            S0, [SP,#0x40+var_3C]
STR             R1, [SP,#0x40+var_38]
LDR             R0, [R2]
MOV             R1, SP
LDR             R3, [R0,#0x6C]
MOV             R0, R2
BLX             R3
LDR             R0, [R4,#4]
VLDR            S1, =0.71111
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
VLDR            S0, [R5,#0x1B0]
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, [R5,#0x1D8]
VLDR            S3, =60.0
ADD             R0, R4, #0x3800
VLDR            S1, =0.0
VADD.F32        S2, S2, S3
ADD             R0, R0, #0x18C
MOV             R1, #1
VMUL.F32        S0, S0, S2
VSTM            R0, {S0-S1}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x91
STRB            R1, [R0]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             R0, R4, #0x1000; jumptable 001B32C0 case 31
VLDR            S1, =185.0
VLDR            S0, [R0,#0x1D0]
LDR             R1, [R0,#0x1CC]
LDR             R0, [R0,#0x1D4]
VSUB.F32        S0, S0, S1
LDR             R2, [R4,#4]
STR             R1, [SP,#0x40+var_40]
MOV             R1, SP
VSTR            S0, [SP,#0x40+var_3C]
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R2]
LDR             R3, [R0,#0x6C]
MOV             R0, R2
BLX             R3
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#8]
LDRSH           R0, [R0,#2]
CMP             R0, #0x25 ; '%'
BEQ             loc_1B3940
CMP             R0, #0x18
BEQ             loc_1B3A44
B               loc_1B3A50
ADD             R6, R4, #0x3800
ADD             R6, R6, #0x1A4
LDR             R5, [R6]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
ADD             R7, R4, #0x3800
ADD             R7, R7, #0x1A8
CMPEQ           R0, #3
LDREQ           R8, [R5,#0xAA8]
LDR             R5, [R7]
MOVNE           R8, #0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
VLDR            S1, =3.1416
CMPEQ           R0, #3
LDREQ           R0, [R5,#0xAA8]
MOVNE           R0, #0
VLDR            S0, [R0,#0x23C]
LDR             R0, =0x40C90FDB
VSUB.F32        S0, S0, S1
VLDR            S1, =6.2832
VMOV            R1, S0
CMP             R1, R0
VSUBGE.F32      S0, S0, S1
BGE             loc_1B39B4
VLDR            S2, =0.0
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S1
BCC             loc_1B39C8
VLDR            S3, [R8,#0x23C]
VLDR            S1, =57.296
LDR             R0, =0x43340000
ADD             R1, R4, #0x3800
VSUB.F32        S0, S0, S3
VMUL.F32        S0, S0, S1
VLDR            S1, =360.0
VSTR            S0, [R1,#0x194]
VMOV            R2, S0
CMP             R2, R0
VSUBGT.F32      S0, S0, S1
BGT             loc_1B39F8
LDR             R0, =0xC3340000
VMOV            R2, S0
CMP             R2, R0
VADDHI.F32      S0, S0, S1
BHI             loc_1B3A0C
MOV             R2, #5
MOV             R0, #0
VSTR            S0, [R1,#0x194]
VSTR            S2, [R1,#0x18C]
LDR             R1, =0x3998
STR             R2, [R1,R4]
LDR             R1, [R6]
STR             R1, [R7]
STR             R0, [R6]
B               loc_1B3A50
VLDR            S0, =0.0
ADD             R0, R4, #0x3800
VSTR            S0, [R0,#0x194]
LDR             R0, [R4,#4]
MOV             R1, #1
ADD             R0, R0, #0x19C00
ADD             R0, R0, #0x91
STRB            R1, [R0]
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
DCFS 50.0
DCD 0x39A4
DCFS 185.0
DCFS 3.1416
DCD 0x40C90FDB
DCFS 6.2832
DCD 0x43340000
DCFS 360.0
DCD 0xC3340000
DCD 0x3998
ADD             R1, R4, #0x3800; jumptable 001B32C0 case 32
LDR             R2, =0x43B40000
VLDR            S1, =360.0
VLDR            S0, [R1,#0x18C]
VMOV            R0, S0
CMP             R0, R2
VSUBGT.F32      S0, S0, S1
VSTRGT          S0, [R1,#0x18C]
BGT             loc_1B3AA8
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
ADD             R6, R4, #0x3800; jumptable 001B32C0 case 36
ADD             R6, R6, #0x1A4
LDR             R5, [R6]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
LDR             R1, [R6]
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
ADD             R1, R1, #0x108
CMPEQ           R0, #3
LDM             R1, {R2,R3,R12}
MOVNE           R0, #0
LDREQ           R0, [R5,#0xAA8]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x1AC
VMOV            S0, R3
STM             R5, {R2,R3,R12}
ADD             R1, R4, #0x3800
VLDR            S1, [R0,#0x250]
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1AC
VADD.F32        S0, S0, S1
VSTR            S0, [R1,#0x1B0]
ADD             R1, R4, #0x1000
ADD             R1, R1, #0x1CC
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
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#8]
ADD             SP, SP, #0x18
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_1BADA8
ADD             SP, SP, #0x18; jumptable 001B32C0 cases 27,28
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R8,LR}
B               sub_1BADA8
VLDR            S17, =-64.0; jumptable 001B32C0 cases 39-41
VMOV.F32        S0, S17
BL              sub_464318
VLDR            S18, =180.0
VMUL.F32        S16, S0, S18
VMOV.F32        S0, S17
BL              sub_464380
VLDR            S1, =85.0
LDR             R0, =0x3A64
ADD             R5, R4, #0x3800
VMOV.F32        S2, S1
VMLA.F32        S2, S0, S1
VSTR            S2, [R5,#0x220]
LDRB            R0, [R0,R4]
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_1B3BE0
CMP             R0, #3
CMPNE           R0, #2
BEQ             loc_1B3C38
B               loc_1B3C58
VLDR            S0, [R5,#0x260]
LDR             R6, =0xBF800000
VMOV            R0, S0
VLDR            S17, =0.71111
CMP             R0, R6
VMOVEQ.F32      S1, S18
VLDRNE          S1, =0.0
VSUB.F32        S0, S1, S0
VMUL.F32        S0, S0, S17
BL              sub_464318
VMUL.F32        S1, S0, S16
VLDR            S0, [R5,#0x260]
VMOV            R0, S0
CMP             R0, R6
VLDRNE          S18, =0.0
VSTR            S1, [R5,#0x21C]
VSUB.F32        S0, S18, S0
VMUL.F32        S0, S0, S17
BL              sub_464380
VMUL.F32        S0, S0, S16
VSTR            S0, [R5,#0x224]
B               loc_1B3C58
VMOV.F32        S0, S17
BL              sub_464318
VMUL.F32        S0, S0, S16
VSTR            S0, [R5,#0x21C]
VMOV.F32        S0, S17
BL              sub_464380
VMUL.F32        S0, S0, S16
VSTR            S0, [R5,#0x224]
LDR             R0, [R4,#4]
ADD             R4, R4, #0x3800
ADD             R4, R4, #0x21C
ADD             R0, R0, #0x108
VLDR            S1, [R4]
VLDR            S0, [R0]
VADD.F32        S0, S1, S0
VSTR            S0, [R4]
VLDR            S0, [R4,#4]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
VLDR            S0, [R4,#8]
VLDR            S1, [R0,#8]
ADD             R0, R5, #0x21C
ADD             R5, R5, #0x228
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#8]
LDM             R0, {R0-R2}
STM             R5, {R0-R2}
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
VLDR            S0, =24.0; jumptable 001B32C0 case 49
ADD             R0, R4, #0x3800
VLDR            S10, =4.0
VSTR            S0, [R0,#0x248]
LDR             R1, [R4,#4]
VLDR            S9, [R0,#0x21C]
VLDR            S5, =-1.6
VLDR            S13, =-47.2
VLDR            S0, [R1,#0x108]
VLDR            S2, =0.0
VLDR            S8, =0.8
VSUB.F32        S7, S0, S9
VLDR            S6, =2.0
VSTR            S7, [R0,#0x240]
VMUL.F32        S4, S7, S7
VLDR            S0, [R1,#0x110]
VLDR            S1, [R0,#0x224]
VSUB.F32        S3, S0, S1
VMOV.F32        S0, S4
VSTR            S3, [R0,#0x244]
VMLA.F32        S0, S3, S3
VSQRT.F32       S12, S0
VLDR            S0, =2227.8
VMUL.F32        S1, S12, S10
VMLS.F32        S0, S5, S1
VSQRT.F32       S11, S0
VSUB.F32        S0, S11, S13
VDIV.F32        S1, S0, S5
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B3D40
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S1, S1
B               loc_1B3D6C
VLDR            S0, =47.2
VMOV.F32        S1, S2
VSUB.F32        S11, S0, S11
VDIV.F32        S0, S11, S5
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B3D6C
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VMOV.F32        S1, S0
VLDR            S5, =0.5
VLDR            S14, =-0.4
VLDR            S11, =-0.8
LDR             R3, =0xC2AA0000
VCVT.S32.F32    S0, S1
VMOV            R2, S0
CMP             R2, #0
VLDREQ          S1, =1.0
VADD.F32        S0, S1, S5
VCVT.S32.F32    S0, S0
VMOV            R2, S0
SXTH            R2, R2
VMOV            S0, R2
VCVT.F32.S32    S1, S0
VCVT.S32.F32    S0, S1
VMOV            R2, S0
VMOV            S0, R2
MVN             R2, R2
VMOV            S13, R2
LDR             R2, [R0,#0x234]
VCVT.F32.S32    S15, S0
CMP             R2, R3
VDIV.F32        S0, S12, S15
VCVT.F32.S32    S12, S13
VMLA.F32        S0, S12, S14
VADD.F32        S0, S0, S11
VSTR            S0, [R0,#0x248]
VSTRCC          S2, [R0,#0x24C]
VSTRCC          S2, [R0,#0x250]
BCC             loc_1B3E74
VLDR            S0, [R1,#0x108]
VSUB.F32        S0, S9, S0
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S9, =0.0022222
VNEGLT.F32      S0, S0
VMUL.F32        S0, S0, S9
VMOV            R2, S0
CMP             R2, #0x3F800000
VLDRGT          S0, =1.0
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VLDR            S11, [R1,#0x10C]
VLDR            S9, [R0,#0x220]
VMOVCC.F32      S0, S2
VLDR            S2, =85.0
VMUL.F32        S2, S0, S2
VSUB.F32        S0, S11, S9
VMUL.F32        S11, S0, S6
VADD.F32        S2, S0, S2
VDIV.F32        S12, S11, S1
VMUL.F32        S10, S2, S10
VSUB.F32        S0, S2, S0
VMUL.F32        S0, S10, S0
VSQRT.F32       S10, S0
VMLA.F32        S10, S2, S6
VDIV.F32        S0, S10, S1
VSUB.F32        S2, S12, S0
VSUB.F32        S6, S0, S2
VDIV.F32        S2, S6, S1
VSTR            S2, [R0,#0x250]
VMLS.F32        S0, S2, S5
VADD.F32        S5, S9, S0
VSUB.F32        S0, S0, S2
VSTR            S5, [R0,#0x220]
VSTR            S0, [R0,#0x24C]
VMLA.F32        S4, S3, S3
VLDR            S2, =1.0
ADD             R1, R4, #0x3A40
ADD             R2, R4, #0x3A40
MOV             R3, #0
VSQRT.F32       S3, S4
VDIV.F32        S0, S2, S3
VMUL.F32        S3, S7, S0
VSTR            S3, [R1]
VLDR            S3, [R2,#4]
VMUL.F32        S0, S3, S0
VSTR            S0, [R1,#4]
VADD.F32        S0, S1, S2
LDR             R1, [R4,#8]
STRH            R3, [R1,#6]!
VCVT.S32.F32    S0, S0
VMOV            R2, S0
SXTH            R2, R2
CMP             R2, #1
MOVLT           R2, #1
STRH            R2, [R1,#2]
MOV             R2, #0
STRB            R2, [R1,#4]
ADD             R2, R0, #0x21C
LDM             R2, {R1-R3}
STMEA           SP, {R1-R3}
MOV             R1, SP
VLDR            S0, [R0,#0x21C]
VLDR            S2, [R0,#0x240]
VLDR            S1, [R0,#0x248]
VMLA.F32        S0, S2, S1
VSUB.F32        S3, S1, S8
VSTR            S0, [R0,#0x21C]
VLDR            S2, [R0,#0x224]
VLDR            S4, [R0,#0x244]
VMLA.F32        S2, S4, S1
VSTR            S2, [R0,#0x224]
VSTR            S3, [R0,#0x248]
VLDR            S1, [R0,#0x220]
MOV             R0, R4
BL              sub_1B171C
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AA4C
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R8,PC}
