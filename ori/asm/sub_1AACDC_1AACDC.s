PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R0, =byte_68DBBC
VPUSH           {D8-D12}
SUB             SP, SP, #0xC
LDRB            R0, [R0]
CMP             R0, #0
BLS             loc_1AC02C
LDR             R9, =unk_68D002
LDR             R10, =0x19C98
LDR             R11, =0x21218
VLDR            S20, =2.0
LDR             R0, [R5,#8]
RSB             R1, R4, R4,LSL#4
ADD             R1, R1, R4,LSL#5
RSB             R3, R4, R4,LSL#3
LDRSH           R2, [R0]
LDR             R0, [R5,#4]
ADD             R12, R10, R1,LSL#2
CMP             R2, #0x1D
RSB             R1, R4, R4,LSL#4
CMPLT           R2, #0x13
ADD             R3, R11, R3,LSL#3
CMPLT           R2, #4
ADD             R1, R9, R1,LSL#1
ADD             R7, R0, R12
ADD             R6, R0, R3
BGE             loc_1AADD0
CMP             R2, #0
BNE             loc_1AADD0
LDR             R0, [R7,#0xA4]
LDRH            R2, [R0,#0x1A]
TST             R2, #1
BNE             loc_1AADD0
LDRSH           R1, [R1,#8]
STR             R1, [SP,#0x58+var_58]
AND             R1, R1, #0xFF
BL              sub_5F1670
MOV             R8, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R8
VMOV.F32        S0, S20
LDR             R1, [SP,#0x58+var_58]
MOV             R3, #0
MOV             R2, R0,LSR#16
LDR             R0, [R7]
LDR             R12, [R0,#0x3C]
MOV             R0, R7
BLX             R12
LDR             R1, [R5,#8]
ADD             R2, R4, #0x400
ADD             R2, R2, #0xD6
MOV             R0, #0
STRB            R0, [R1,R2]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD2]
ADD             R1, R1, #1
STRH            R1, [R0,#0xD2]
LDR             R0, [R5,#8]
LDRSH           R0, [R0]
CMP             R0, #0x34; switch 52 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
DCD loc_1AAEB4, loc_1AAEB4, loc_1AB0A8, loc_1AAEB4; jump table for switch statement
VLDR            S2, [R5,#0xC]; jumptable 001AADDC cases 0,1,3,4
VLDR            S4, =-5.0
VLDR            S16, =1.0
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S2, S4
ADD             R0, R5, #0xC
ADD             R8, R5, #0x1000
VMOV.F32        S1, S16
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
VLDR            S0, [R8,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x1100
LDRSH           R1, [R0,#0xE6]
LDRSH           R2, [R0,#0xE4]
CMP             R2, R1
BGE             loc_1AAF4C
VMOV.F32        S0, S16
VLDR            S2, [R8,#0x1EC]
VLDR            S3, =0.5
VLDR            S4, [R6,#0x2C]
VLDR            S5, =-0.5
VMOV.F32        S1, S0
VMLS.F32        S1, S2, S3
VMUL.F32        S1, S4, S1
VSTR            S1, [R6,#0x2C]
VLDR            S2, [R8,#0x1EC]
VLDR            S1, [R6,#0x28]
VMLS.F32        S0, S2, S5
VMUL.F32        S0, S1, S0
VSTR            S0, [R6,#0x28]
LDRSH           R1, [R0,#0xF4]
LDRSH           R0, [R0,#0xF6]
CMP             R1, R0
BGE             loc_1AAF94
VLDR            S2, [R8,#0x1FC]
VLDR            S4, =-0.5
VMOV.F32        S0, S16
VLDR            S3, [R6,#0x2C]
VMLS.F32        S16, S2, S4
VLDR            S1, =0.5
VMUL.F32        S2, S3, S16
VMOV.F32        S16, S0
VSTR            S2, [R6,#0x2C]
VLDR            S3, [R8,#0x1FC]
VLDR            S2, [R6,#0x28]
VMLS.F32        S16, S3, S1
VMUL.F32        S0, S2, S16
B               loc_1AB070
LDR             R1, [R5,#4]
VLDR            S0, [R6,#0x28]
ADD             R0, R6, #0x28 ; '('
ADD             R1, R1, #0x108
VLDR            S1, [R1]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R1,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
B               loc_1AB2EC
VLDR            S2, [R5,#0xC]; jumptable 001AADDC case 51
VLDR            S4, =-5.0
VLDR            S16, =1.0
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S2, S4
ADD             R0, R5, #0xC
ADD             R8, R5, #0x1000
VMOV.F32        S1, S16
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
VLDR            S0, [R8,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x1100
LDRSH           R1, [R0,#0xE6]
LDRSH           R0, [R0,#0xE4]
CMP             R0, R1
BGE             loc_1AAF94
VMOV.F32        S1, S16
VLDR            S4, [R8,#0x1EC]
VLDR            S0, =0.5
VLDR            S5, [R6,#0x2C]
VLDR            S3, =92.5
VLDR            S2, =-0.5
VMLS.F32        S1, S4, S0
VMUL.F32        S0, S5, S1
VSTR            S0, [R6,#0x2C]
VLDR            S1, [R8,#0x1EC]
VMLA.F32        S0, S1, S3
VSTR            S0, [R6,#0x2C]
VLDR            S1, [R8,#0x1EC]
VLDR            S0, [R6,#0x28]
VMLS.F32        S16, S1, S2
VMUL.F32        S0, S0, S16
VSTR            S0, [R6,#0x28]
B               loc_1AAF94
DCD byte_68DBBC
DCD unk_68D002
DCD 0x19C98
DCD 0x21218
DCFS 2.0
DCD dword_6D1F40
DCFS 1.0
DCFS 0.0
DCFS -5.0
DCFS 0.5
DCFS -0.5
DCFS 92.5
VLDR            S2, [R5,#0xC]; jumptable 001AADDC case 2
VLDR            S4, =-5.0
ADD             R2, R5, #0x1000
ADD             R0, R5, #0xC
VADD.F32        S2, S2, S4
VLDR            S0, [R2,#0x198]
RSB             R2, R4, R4,LSL#3
MOV             R1, R6
ADD             R0, R0, R2,LSL#2
VLDR            S1, =1.0
VLDR            S3, =0.0
ADD             R0, R0, #4
BL              sub_1B6C10
LDR             R1, [R7]
LDR             R2, [R1,#0x44]
MOV             R1, R0
MOV             R0, R7
BLX             R2
LDR             R1, [R5,#4]
VLDR            S0, [R6,#0x28]
ADD             R1, R1, #0x108
VLDR            S1, [R1]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R1,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x30]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
LDR             R0, [R5,#8]; jumptable 001AADDC cases 17-22,27-30
VLDR            S19, =1.0
ADD             R2, R5, #0x11C0
ADD             R8, R5, #0x1000
LDRSH           R1, [R0]
VMOV.F32        S0, S19
VLDM            R2, {S16-S18}
CMP             R1, #0x15
CMPNE           R1, #0x16
BEQ             loc_1AB160
CMP             R1, #0x1B
BEQ             loc_1AB190
B               loc_1AB1A0
ADD             R0, R0, #6
BL              sub_45AAB8
VMOV.F32        S1, S0
VLDR            S0, =90.0
VMUL.F32        S0, S1, S0
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VSUB.F32        S0, S19, S0
ADD             R1, R8, #0x1C0
VLDM            R1, {S16-S18}
B               loc_1AB1A0
ADD             R0, R0, #6
BL              sub_45AAB8
ADD             R1, R8, #0x1C0
VLDM            R1, {S16-S18}
RSB             R2, R4, R4,LSL#3
VLDR            S2, [R5,#0xC]
VLDR            S4, =-5.0
ADD             R0, R5, #0xC
VMOV.F32        S1, S0
VADD.F32        S2, S2, S4
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
VLDR            S0, [R8,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R1, [R5,#8]
LDRSH           R0, [R1]
CMP             R0, #0x13
CMPNE           R0, #0x12
BEQ             loc_1AB210
CMP             R0, #0x1D
CMPNE           R0, #0x1C
BEQ             loc_1AB210
CMP             R0, #0x11
BEQ             loc_1AB264
B               loc_1AB2C8
VLDR            S0, [R8,#0x1E0]
VLDR            S22, =0.71111
VMUL.F32        S0, S0, S22
BL              sub_464380
VMOV.F32        S1, S0
VMOV.F32        S0, S19
VLDR            S21, =0.02
VLDR            S2, [R6,#0x28]
VLDR            S3, =180.0
VMLA.F32        S0, S1, S21
VMUL.F32        S0, S0, S2
VSTR            S0, [R6,#0x28]
VLDR            S0, [R8,#0x1E0]
VADD.F32        S0, S0, S3
VMUL.F32        S0, S0, S22
BL              sub_464380
VMLA.F32        S19, S0, S21
VLDR            S1, [R6,#0x2C]
VMUL.F32        S0, S19, S1
VSTR            S0, [R6,#0x2C]
B               loc_1AB2C8
ADD             R0, R1, #6
BL              sub_45AAB8
VLDR            S21, =3.1416
VMOV.F32        S1, S0
VLDR            S22, =40.744
VMOV.F32        S0, S21
VMLA.F32        S0, S1, S21
VMUL.F32        S0, S0, S22
BL              sub_464380
VMOV.F32        S1, S19
VLDR            S23, =0.2
VLDR            S2, [R6,#0x28]
VMLA.F32        S1, S0, S23
VMUL.F32        S0, S1, S2
VSTR            S0, [R6,#0x28]
LDR             R0, [R5,#8]
ADD             R0, R0, #6
BL              sub_45AAB8
VMUL.F32        S0, S0, S21
VMUL.F32        S0, S0, S22
BL              sub_464380
VMLA.F32        S19, S0, S23
VLDR            S1, [R6,#0x2C]
VMUL.F32        S0, S19, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x28]
ADD             R0, R6, #0x28 ; '('
VADD.F32        S0, S0, S16
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VADD.F32        S0, S0, S17
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VADD.F32        S0, S0, S18
VSTR            S0, [R0,#8]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
LDR             R0, [R5,#8]; jumptable 001AADDC case 23
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =1.0
VLDR            S2, [R5,#0xC]
VLDR            S4, =-5.0
VSUB.F32        S1, S1, S0
ADD             R2, R5, #0x1000
VADD.F32        S2, S2, S4
VLDR            S0, [R2,#0x198]
RSB             R2, R4, R4,LSL#3
ADD             R0, R5, #0xC
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x11C0
VLDR            S0, [R6,#0x28]
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x30]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
LDR             R0, [R5,#8]; jumptable 001AADDC case 24
VLDR            S0, =28.0
ADD             R8, R5, #0x1000
VLDR            S18, =0.71111
LDRSH           R0, [R0,#6]
VLDR            S21, =0.0
VLDR            S17, =-75.0
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VDIV.F32        S19, S1, S0
VLDR            S0, [R8,#0x1B0]
VMUL.F32        S0, S0, S18
BL              sub_464380
VLDR            S1, [R8,#0x1D8]
VLDR            S2, =60.0
VLDR            S23, =90.0
VADD.F32        S1, S1, S2
VMOV.F32        S16, S23
VMLA.F32        S16, S0, S1
VMUL.F32        S24, S16, S18
VMOV.F32        S0, S24
BL              sub_464318
VLDR            S25, =-105.0
VLDR            S22, =-5.0
VMUL.F32        S18, S0, S25
VMOV.F32        S0, S24
BL              sub_464380
VADD.F32        S2, S16, S23
VMLA.F32        S17, S0, S25
VLDR            S0, =0.017453
RSB             R2, R4, R4,LSL#3
VMOV.F32        S1, S19
ADD             R0, R5, #0xC
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
ADD             R0, R0, #4
VMUL.F32        S3, S2, S0
VLDR            S2, [R5,#0xC]
VLDR            S0, [R8,#0x198]
VADD.F32        S2, S2, S22
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x1CC
ADD             R6, R6, #0x28 ; '('
VLDR            S2, [R0]
VLDR            S3, [R6]
VLDR            S1, [R0,#4]
VADD.F32        S2, S2, S18
VLDR            S0, [R0,#8]
VADD.F32        S1, S1, S17
VADD.F32        S0, S0, S21
VADD.F32        S2, S3, S2
VSTR            S2, [R6]
VLDR            S2, [R6,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R6,#4]
VLDR            S1, [R6,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R6,#8]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
DCFS 90.0
DCFS 0.71111
DCFS 0.02
DCFS 180.0
DCFS 3.1416
DCFS 40.744
DCFS 0.2
DCFS 28.0
DCFS -75.0
DCFS 60.0
DCFS -105.0
DCFS 0.017453
LDR             R0, [R5,#8]; jumptable 001AADDC case 25
ADD             R0, R0, #6
BL              sub_45AAB8
VMOV.F32        S1, S0
VLDR            S21, =1.0
ADD             R8, R5, #0x1000
VLDR            S5, =-60.0
VLDR            S3, =-75.0
VLDR            S2, =-50.0
VSUB.F32        S4, S21, S1
VLDR            S0, [R8,#0x1B0]
VLDR            S22, =0.71111
VMUL.F32        S19, S1, S5
VMUL.F32        S17, S1, S3
VMUL.F32        S0, S0, S22
VMUL.F32        S18, S4, S2
BL              sub_464380
VLDR            S1, [R8,#0x1D8]
VLDR            S2, =60.0
VLDR            S16, =90.0
VADD.F32        S1, S1, S2
VMLA.F32        S16, S0, S1
VMUL.F32        S22, S16, S22
VMOV.F32        S0, S22
BL              sub_464318
VADD.F32        S2, S19, S18
VLDR            S1, =50.0
VSUB.F32        S19, S2, S1
VMUL.F32        S18, S0, S19
VMOV.F32        S0, S22
BL              sub_464380
VMLA.F32        S17, S0, S19
VLDR            S0, [R8,#0x198]
VLDR            S2, [R5,#0xC]
VLDR            S3, =-5.0
VADD.F32        S0, S0, S16
VLDR            S19, =0.0
VADD.F32        S2, S2, S3
RSB             R2, R4, R4,LSL#3
ADD             R0, R5, #0xC
VMOV.F32        S1, S21
VMOV.F32        S3, S19
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x1CC
ADD             R6, R6, #0x28 ; '('
VLDR            S2, [R0]
VLDR            S3, [R6]
VLDR            S1, [R0,#4]
VADD.F32        S2, S2, S18
VLDR            S0, [R0,#8]
VADD.F32        S1, S1, S17
VADD.F32        S0, S0, S19
VADD.F32        S2, S3, S2
VSTR            S2, [R6]
VLDR            S2, [R6,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R6,#4]
VLDR            S1, [R6,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R6,#8]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
ADD             R0, R5, #0x3800; jumptable 001AADDC case 26
STR             R0, [SP,#0x58+var_58]
ADD             R8, R5, #0x1000
VLDR            S1, [R0,#0x18C]
VLDR            S0, [R8,#0x198]
VLDR            S2, [R5,#0xC]
VLDR            S4, =-5.0
VADD.F32        S0, S0, S1
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S2, S4
ADD             R0, R5, #0xC
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S1, =1.0
VLDR            S3, =0.0
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [SP,#0x58+var_58]
VLDR            S17, =90.0
VLDR            S16, =0.71111
VLDR            S0, [R0,#0x18C]
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S16
BL              sub_464318
VLDR            S1, [R6,#0x28]
VLDR            S2, [R8,#0x1CC]
VLDR            S18, =105.0
VADD.F32        S1, S1, S2
VMLA.F32        S1, S0, S18
VSTR            S1, [R6,#0x28]
LDR             R0, [SP,#0x58+var_58]
VLDR            S0, [R0,#0x18C]
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S16
BL              sub_464380
VLDR            S1, [R8,#0x1D0]
VLDR            S3, =75.0
VLDR            S2, [R6,#0x2C]
VMLA.F32        S1, S0, S18
VSUB.F32        S0, S1, S3
VADD.F32        S0, S0, S2
VSTR            S0, [R6,#0x2C]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
LDR             R0, =0x39A8; jumptable 001AADDC case 31
LDR             R8, [R0,R5]
CMP             R8, #0
BEQ             loc_1AB6C4
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R8,#0xAAC]
CMPEQ           R0, #3
LDREQ           R8, [R8,#0xAA8]
MOVNE           R8, #0
ADD             R0, R5, #0x1000
STR             R0, [SP,#0x58+var_58]
VLDR            S1, [R8,#0x23C]
VLDR            S16, =57.296
VLDR            S0, [R0,#0x198]
LDR             R1, =0x43B40000
VMLA.F32        S0, S1, S16
VMOV            R0, S0
CMP             R0, R1
BLT             loc_1AB710
VLDR            S1, =0.0027778
VLDR            S2, =360.0
VMUL.F32        S1, S0, S1
VCVT.S32.F32    S1, S1
VMOV            R0, S1
SXTB            R0, R0
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMLS.F32        S0, S1, S2
VLDR            S2, [R5,#0xC]
VLDR            S4, =-5.0
RSB             R2, R4, R4,LSL#3
ADD             R0, R5, #0xC
VADD.F32        S2, S2, S4
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S1, =1.0
VLDR            S3, =0.0
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R7, R5, #0x3800
VLDR            S18, =90.0
VLDR            S0, [R7,#0x18C]
VLDR            S1, [R8,#0x23C]
VLDR            S17, =0.71111
VSUB.F32        S0, S0, S18
VMLA.F32        S0, S1, S16
VMUL.F32        S0, S0, S17
BL              sub_464318
LDR             R0, [SP,#0x58+var_58]
VLDR            S1, [R6,#0x28]
VLDR            S19, =105.0
VLDR            S2, [R0,#0x1C0]
VADD.F32        S1, S1, S2
VMLA.F32        S1, S0, S19
VSTR            S1, [R6,#0x28]
VLDR            S0, [R7,#0x18C]
VLDR            S1, [R8,#0x23C]
VSUB.F32        S0, S0, S18
VMLA.F32        S0, S1, S16
VMUL.F32        S0, S0, S17
BL              sub_464380
LDR             R0, [SP,#0x58+var_58]
VLDR            S3, =75.0
VLDR            S2, [R6,#0x2C]
VLDR            S1, [R0,#0x1C4]
VMLA.F32        S1, S0, S19
VSUB.F32        S0, S1, S3
VADD.F32        S0, S0, S2
VSTR            S0, [R6,#0x2C]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
DCFS 1.0
DCFS -60.0
DCFS -50.0
DCFS 50.0
DCFS 0.0
DCFS -5.0
DCFS 105.0
DCFS 75.0
DCD 0x39A8
DCFS 57.296
DCD 0x43B40000
DCFS 0.0027778
DCFS 360.0
LDR             R0, [R5,#8]; jumptable 001AADDC cases 33-35,38
VLDR            S16, =1.0
LDRSH           R1, [R0]
CMP             R1, #0x22 ; '"'
CMPNE           R1, #0x23 ; '#'
BEQ             loc_1AB824
CMP             R1, #0x26 ; '&'
BEQ             loc_1AB84C
B               loc_1AB858
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S1, S0, S1
VLDR            S0, =0.71111
VMUL.F32        S0, S1, S0
BL              sub_464380
VSUB.F32        S16, S16, S0
NOP
B               loc_1AB858
ADD             R0, R0, #6
BL              sub_45AAB8
VMOV.F32        S16, S0
LDR             R0, =0x39A8
LDR             R8, [R0,R5]
CMP             R8, #0
BEQ             loc_1AB88C
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R8,#0xAAC]
CMPEQ           R0, #3
LDREQ           R8, [R8,#0xAA8]
MOVNE           R8, #0
ADD             R0, R5, #0x1000
STR             R0, [SP,#0x58+var_54]
VLDR            S2, [R8,#0x23C]
VLDR            S17, =57.296
VLDR            S0, [R0,#0x198]
LDR             R1, =0x43B40000
VLDR            S1, =360.0
VMLA.F32        S0, S2, S17
VMOV            R0, S0
CMP             R0, R1
VSUBGT.F32      S0, S0, S1
BGT             loc_1AB8AC
STR             R7, [SP,#0x58+var_58]
ADD             R7, R5, #0x3800
VLDR            S4, =0.017453
VLDR            S3, =3.1416
VLDR            S5, [R7,#0x18C]
RSB             R2, R4, R4,LSL#3
VMOV.F32        S1, S16
VMLA.F32        S3, S5, S4
VLDR            S4, =-5.0
ADD             R0, R5, #0xC
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
ADD             R0, R0, #4
VADD.F32        S3, S2, S3
VLDR            S2, [R5,#0xC]
VADD.F32        S2, S2, S4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [SP,#0x58+var_58]
LDR             R0, [R0]
LDR             R2, [R0,#0x44]
LDR             R0, [SP,#0x58+var_58]
BLX             R2
VLDR            S0, [R7,#0x18C]
VLDR            S19, =90.0
VLDR            S1, [R8,#0x23C]
VLDR            S18, =0.71111
VSUB.F32        S0, S0, S19
VMLA.F32        S0, S1, S17
VMUL.F32        S0, S0, S18
BL              sub_464318
LDR             R0, [SP,#0x58+var_54]
VLDR            S1, [R6,#0x28]
VLDR            S16, =105.0
VLDR            S2, [R0,#0x1C0]
VADD.F32        S1, S1, S2
VMLA.F32        S1, S0, S16
VSTR            S1, [R6,#0x28]
VLDR            S0, [R7,#0x18C]
VLDR            S1, [R8,#0x23C]
VSUB.F32        S0, S0, S19
VMLA.F32        S0, S1, S17
VMUL.F32        S0, S0, S18
BL              sub_464380
LDR             R0, [SP,#0x58+var_54]
VMOV.F32        S1, S0
VLDR            S3, =75.0
VLDR            S2, [R6,#0x2C]
VLDR            S0, [R0,#0x1C4]
VMLA.F32        S0, S1, S16
VSUB.F32        S0, S0, S3
VADD.F32        S0, S0, S2
VSTR            S0, [R6,#0x2C]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
VLDR            S2, [R5,#0xC]; jumptable 001AADDC case 32
VLDR            S4, =-5.0
VLDR            S17, =1.0
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S2, S4
ADD             R0, R5, #0xC
ADD             R8, R5, #0x1000
VMOV.F32        S1, S17
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
VLDR            S0, [R8,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
LDR             R1, [R7]
LDR             R2, [R1,#0x44]
MOV             R1, R0
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x1100
LDRSH           R1, [R0,#0xF6]
LDRSH           R0, [R0,#0xF4]
CMP             R0, R1
BGE             loc_1ABA28
VMOV.F32        S16, S17
VLDR            S1, [R8,#0x1FC]
VLDR            S3, =-0.5
VLDR            S2, [R6,#0x2C]
VLDR            S0, =0.5
VMLS.F32        S16, S1, S3
VMUL.F32        S1, S2, S16
VSTR            S1, [R6,#0x2C]
VLDR            S2, [R8,#0x1FC]
VLDR            S1, [R6,#0x28]
VMLS.F32        S17, S2, S0
VMUL.F32        S0, S1, S17
VSTR            S0, [R6,#0x28]
LDR             R0, [R5,#4]
VLDR            S0, [R6,#0x28]
ADD             R0, R0, #0x108
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VLDR            S1, [R0,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x30]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
LDR             R0, [R5,#8]; jumptable 001AADDC case 36
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =1.0
LDR             R0, =0x39A8
VSUB.F32        S16, S1, S0
LDR             R8, [R0,R5]
CMP             R8, #0
BEQ             loc_1ABAAC
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R8,#0xAAC]
CMPEQ           R0, #3
LDREQ           R8, [R8,#0xAA8]
MOVNE           R8, #0
ADD             R0, R5, #0x1000
STR             R0, [SP,#0x58+var_54]
VLDR            S17, =57.296
VLDR            S0, [R0,#0x198]
VLDR            S3, [R8,#0x23C]
LDR             R1, =0x43B40000
VLDR            S1, =360.0
VMLA.F32        S0, S3, S17
VMOV            R0, S0
CMP             R0, R1
VSUBGE.F32      S0, S0, S1
BGE             loc_1ABACC
VLDR            S2, =0.0
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S1
BCC             loc_1ABAE0
STR             R7, [SP,#0x58+var_58]
ADD             R7, R5, #0x3800
VLDR            S4, =0.017453
VLDR            S2, =3.1416
VLDR            S5, [R7,#0x18C]
RSB             R2, R4, R4,LSL#3
VMOV.F32        S1, S16
VMLA.F32        S2, S5, S4
VLDR            S4, =-5.0
ADD             R0, R5, #0xC
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
ADD             R0, R0, #4
VADD.F32        S3, S3, S2
VLDR            S2, [R5,#0xC]
VADD.F32        S2, S2, S4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [SP,#0x58+var_58]
LDR             R0, [R0]
LDR             R2, [R0,#0x44]
LDR             R0, [SP,#0x58+var_58]
BLX             R2
VLDR            S0, [R7,#0x18C]
VLDR            S16, =90.0
VLDR            S1, [R8,#0x23C]
VLDR            S19, =0.71111
VSUB.F32        S0, S0, S16
VMLA.F32        S0, S1, S17
VMUL.F32        S0, S0, S19
BL              sub_464318
LDR             R0, [SP,#0x58+var_54]
VLDR            S1, [R6,#0x28]
VLDR            S18, =105.0
VLDR            S2, [R0,#0x1C0]
VADD.F32        S1, S1, S2
VMLA.F32        S1, S0, S18
VSTR            S1, [R6,#0x28]
VLDR            S0, [R7,#0x18C]
VLDR            S1, [R8,#0x23C]
VSUB.F32        S0, S0, S16
VMLA.F32        S0, S1, S17
VMUL.F32        S0, S0, S19
BL              sub_464380
LDR             R0, [SP,#0x58+var_54]
VLDR            S3, =75.0
VLDR            S2, [R6,#0x2C]
VLDR            S1, [R0,#0x1C4]
VMLA.F32        S1, S0, S18
VSUB.F32        S0, S1, S3
VADD.F32        S0, S0, S2
VSTR            S0, [R6,#0x2C]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
DCFS 0.017453
DCFS 3.1416
DCFS 90.0
DCFS 0.71111
DCFS -0.5
DCFS 0.5
ADD             R8, R5, #0x1000; jumptable 001AADDC case 37
STR             R8, [SP,#0x58+var_58]
VLDR            S18, =1.0
VLDR            S1, [R8,#0x1B8]
VLDR            S0, =85.0
VLDR            S2, =400.0
VSUB.F32        S5, S18, S1
VMOV.F32        S1, S0
VLDR            S3, =50.0
VLDR            S4, =535.0
LDR             R0, [R5,#8]
ADD             R0, R0, #6
VMLA.F32        S1, S5, S2
VADD.F32        S1, S1, S2
VADD.F32        S0, S1, S0
VSUB.F32        S0, S0, S3
VDIV.F32        S16, S4, S0
BL              sub_45AAB8
VSUB.F32        S1, S18, S16
VSUB.F32        S0, S0, S16
VLDR            S16, [R8,#0x1B8]
LDR             R0, =0x39A8
VLDR            S17, =-75.0
LDR             R8, [R0,R5]
CMP             R8, #0
VDIV.F32        S2, S0, S1
VSUB.F32        S0, S18, S16
VMLA.F32        S16, S2, S0
BEQ             loc_1ABC78
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
BNE             loc_1ABC78
LDRB            R0, [R8,#0xAAC]
CMP             R0, #3
LDREQ           R8, [R8,#0xAA8]
BEQ             loc_1ABC7C
MOV             R8, #0
ADD             R0, R5, #0x3800
STR             R0, [SP,#0x58+var_54]
VLDR            S3, =90.0
VLDR            S0, [R0,#0x18C]
VLDR            S1, [R8,#0x23C]
VLDR            S2, =57.296
VSUB.F32        S0, S0, S3
VMLA.F32        S0, S1, S2
VLDR            S1, =0.71111
VMUL.F32        S21, S0, S1
VMOV.F32        S0, S21
BL              sub_464318
VLDR            S22, =-105.0
VLDR            S19, =-5.0
VMUL.F32        S18, S0, S22
VMOV.F32        S0, S21
BL              sub_464380
LDR             R0, [SP,#0x58+var_54]
VMLA.F32        S17, S0, S22
VLDR            S3, [R8,#0x23C]
VLDR            S1, =0.017453
VLDR            S0, [R0,#0x18C]
LDR             R2, [SP,#0x58+var_58]
ADD             R0, R5, #0xC
VMLA.F32        S3, S0, S1
VLDR            S1, [R5,#0xC]
VLDR            S0, [R2,#0x198]
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S1, S19
VMOV.F32        S1, S16
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x1CC
VLDR            S0, =0.0
VLDR            S2, [R0]
VLDR            S3, [R0,#8]
ADD             R6, R6, #0x28 ; '('
VADD.F32        S2, S2, S18
VADD.F32        S0, S3, S0
VLDR            S3, [R6]
VLDR            S1, [R0,#4]
VADD.F32        S1, S1, S17
VADD.F32        S2, S3, S2
VSTR            S2, [R6]
VLDR            S2, [R6,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [R6,#4]
VLDR            S1, [R6,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [R6,#8]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
VLDR            S4, [R5,#0xC]; jumptable 001AADDC cases 39-46,49,50
VLDR            S2, =-5.0
VLDR            S16, =1.0
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S4, S2
ADD             R0, R5, #0xC
ADD             R8, R5, #0x1000
VMOV.F32        S1, S16
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
VLDR            S0, [R8,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
ADD             R0, R5, #0x1100
LDRSH           R1, [R0,#0xE6]
LDRSH           R0, [R0,#0xE4]
CMP             R0, R1
BGE             loc_1ABEF0
VLDR            S0, [R8,#0x1EC]
VLDR            S4, =0.5
VMOV.F32        S3, S16
VLDR            S2, [R6,#0x2C]
VMLS.F32        S16, S0, S4
VLDR            S1, =-0.5
VMUL.F32        S0, S2, S16
VMOV.F32        S16, S3
VSTR            S0, [R6,#0x2C]
VLDR            S2, [R8,#0x1EC]
VLDR            S0, [R6,#0x28]
VMLS.F32        S16, S2, S1
VMUL.F32        S0, S0, S16
VSTR            S0, [R6,#0x28]
ADD             R1, R5, #0x3800
ADD             R1, R1, #0x21C
VLDR            S1, [R1]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R1,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x30]
B               def_1AADDC; jumptable 001AADDC default case, cases 5-16
VLDR            S2, [R5,#0xC]; jumptable 001AADDC case 47
VLDR            S4, =-5.0
VLDR            S16, =1.0
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S2, S4
ADD             R0, R5, #0xC
ADD             R8, R5, #0x1000
VMOV.F32        S1, S16
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
VLDR            S0, [R8,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R7]
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [R5,#8]
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BGE             loc_1ABEF0
VMOV.F32        S1, S16
VLDR            S0, =0.5
VLDR            S2, [R8,#0x1FC]
VLDR            S5, =-0.5
VLDR            S4, [R6,#0x28]
VLDR            S3, =61.0
VMLS.F32        S1, S2, S0
VMOV.F32        S0, S16
ADD             R0, R5, #0x3800
VMLS.F32        S0, S2, S5
VMUL.F32        S2, S4, S1
VSUB.F32        S4, S16, S1
VSUB.F32        S1, S16, S0
VSTR            S2, [R6,#0x28]
VLDR            S5, [R0,#0x260]
VMUL.F32        S4, S4, S3
VMLA.F32        S2, S5, S4
VSTR            S2, [R6,#0x28]
VLDR            S2, [R6,#0x2C]
VMUL.F32        S0, S2, S0
VMLA.F32        S0, S1, S3
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x28]
B               loc_1ABE00
DCFS 1.0
DCFS 400.0
DCFS 85.0
DCFS 50.0
DCFS 535.0
DCFS -75.0
DCFS 57.296
DCFS -105.0
DCFS -5.0
DCFS 0.0
DCFS 61.0
VLDR            S2, [R5,#0xC]; jumptable 001AADDC case 48
VLDR            S4, =-5.0
VLDR            S16, =1.0
RSB             R2, R4, R4,LSL#3
VADD.F32        S2, S2, S4
ADD             R0, R5, #0xC
ADD             R8, R5, #0x1000
VMOV.F32        S1, S16
ADD             R0, R0, R2,LSL#2
MOV             R1, R6
VLDR            S3, =0.0
VLDR            S0, [R8,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
LDR             R1, [R7]
LDR             R2, [R1,#0x44]
MOV             R1, R0
MOV             R0, R7
BLX             R2
LDR             R0, [R5,#8]
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BGE             loc_1ABFDC
VMOV.F32        S1, S16
VLDR            S0, =0.5
VLDR            S2, [R8,#0x1FC]
VLDR            S5, =-0.5
VLDR            S4, [R6,#0x28]
VLDR            S3, =61.0
VMLS.F32        S1, S2, S0
VMOV.F32        S0, S16
ADD             R0, R5, #0x3800
VMLS.F32        S0, S2, S5
VMUL.F32        S2, S4, S1
VSUB.F32        S4, S16, S1
VSUB.F32        S1, S16, S0
VSTR            S2, [R6,#0x28]
VLDR            S5, [R0,#0x260]
VMUL.F32        S4, S4, S3
VMLA.F32        S2, S5, S4
VSTR            S2, [R6,#0x28]
VLDR            S2, [R6,#0x2C]
VMUL.F32        S0, S2, S0
VMLA.F32        S0, S1, S3
VSTR            S0, [R6,#0x2C]
ADD             R1, R5, #0x3800
ADD             R1, R1, #0x21C
VLDR            S0, [R6,#0x28]
VLDR            S1, [R1]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R1,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x30]
LDR             R0, =byte_68DBBC; jumptable 001AADDC default case, cases 5-16
ADD             R1, R4, #1
UXTH            R4, R1
LDRB            R0, [R0]
CMP             R4, R0
BCC             loc_1AAD10
ADD             SP, SP, #0xC
VPOP            {D8-D12}
POP             {R4-R11,PC}
