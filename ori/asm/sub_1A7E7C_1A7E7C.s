PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R11, R1
LDR             R0, =byte_68DBBC
LDR             R3, =0x19C98
LDR             R12, =0x21218
VPUSH           {D8-D15}
SUB             SP, SP, #0x6C
LDRB            R2, [R0]
LDR             R1, [R4,#8]
LDR             R0, [R4,#4]
MOV             R7, R2,LSL#1
LDRSH           R1, [R1]
RSB             R5, R7, R7,LSL#4
ADD             R5, R5, R7,LSL#5
RSB             R2, R7, R7,LSL#3
ADD             R3, R3, R5,LSL#2
STR             R2, [SP,#0xD0+var_84]
ADD             R2, R12, R2,LSL#3
ADD             R9, R0, #0x21000
ADD             R5, R0, #0x23000
CMP             R1, #0x34; switch 52 cases
ADD             R9, R9, #0x15C
ADD             R10, R0, R3
ADD             R8, R0, R2
ADD             R5, R5, #0x4E0
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
DCD loc_1A7FBC, loc_1A7FBC, loc_1A8204, loc_1A7FBC; jump table for switch statement
LDR             R0, [R10]; jumptable 001A7EE4 cases 0,1,3,4,51
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R10
BLX             R2
ADD             R0, R4, #0x1100
LDRSH           R1, [R0,#0xE6]
LDRSH           R2, [R0,#0xE4]
CMP             R2, R1
VLDRGE          S20, =1.0
BGE             loc_1A7FFC
ADD             R1, R4, #0x1000
VLDR            S1, =0.5
VLDR            S20, =1.0
VLDR            S0, [R1,#0x1EC]
VMLS.F32        S20, S0, S1
VLDRGE          S22, =1.0
BGE             loc_1A8018
ADD             R1, R4, #0x1000
VLDR            S1, =-0.5
VLDR            S22, =1.0
VLDR            S0, [R1,#0x1EC]
VMLS.F32        S22, S0, S1
LDRSH           R1, [R0,#0xF4]
LDRSH           R0, [R0,#0xF6]
CMP             R1, R0
VLDRGE          S19, =1.0
BGE             loc_1A8040
ADD             R0, R4, #0x1000
VLDR            S1, =-0.5
VLDR            S19, =1.0
VLDR            S0, [R0,#0x1FC]
VMLS.F32        S19, S0, S1
VLDRGE          S21, =1.0
BGE             loc_1A805C
ADD             R0, R4, #0x1000
VLDR            S1, =0.5
VLDR            S21, =1.0
VLDR            S0, [R0,#0x1FC]
VMLS.F32        S21, S0, S1
VLDR            S23, =0.0
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1BC
VMOV.F32        S17, S23
MOV             R8, R0
BL              sub_5F19B8
CMP             R0, #0
NOP
BEQ             loc_1A8108
MOV             R0, R8
VLDR            S0, =1.0
BL              sub_5A2484
VMOV.F32        S0, S17
VLDR            S1, [R0,#4]
LDRH            R0, [R9,#0xB8]
CMP             R0, #8
VADD.F32        S16, S1, S0
BNE             loc_1A80C4
LDR             R0, [R9,#0xA4]
CMP             R11, #0
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, #8
UXTH            R0, R0
BEQ             loc_1A80FC
CMP             R0, #5
BEQ             loc_1A81C4
MOV             R1, #8
MOV             R0, R9
BL              sub_543494
LDR             R0, [R9]
CMP             R11, #0
MOVEQ           R1, #4
MOVNE           R1, #5
LDR             R12, [R0,#0x3C]
VLDR            S0, =2.0
MOV             R3, #1
MOV             R2, #0
MOV             R0, R9
BLX             R12
B               loc_1A81C4
CMP             R0, #4
BNE             loc_1A80C4
B               loc_1A81C4
ADD             R8, R4, #0x3800
VLDR            S16, =90.0
VLDR            S0, [R8,#0x18C]
VLDR            S25, =0.71111
VADD.F32        S0, S0, S16
VMUL.F32        S0, S0, S25
BL              sub_464318
VMOV.F32        S18, S17
VLDR            S24, =60.0
VLDR            S1, [R8,#0x18C]
VMLA.F32        S18, S0, S24
VADD.F32        S0, S1, S16
VMUL.F32        S0, S0, S25
BL              sub_464380
VLDR            S1, =75.0
LDR             R0, [R4,#8]
VMLA.F32        S1, S0, S24
LDRSH           R0, [R0]
CMP             R0, #0x33 ; '3'
VMULNE.F32      S0, S20, S19
VADD.F32        S16, S1, S17
VMULNE.F32      S16, S0, S16
VMUL.F32        S0, S22, S21
CMP             R0, #1
CMPNE           R0, #3
CMPNE           R0, #4
VMUL.F32        S17, S0, S18
BNE             loc_1A81C4
LDR             R1, [R4,#4]
LDR             R0, [R9,#0xA4]
VLDR            S0, [R1,#0x108]
VLDR            S1, [R1,#0x118]
ADD             R0, R0, #0x10
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =0.1
VLDR            S2, =2.0
VNEGLT.F32      S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, =256.0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
LDR             R2, [R4,#4]
ADD             R3, R5, #0x28 ; '('
VLDR            S1, =0.017453
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
VMOV            S0, R0
STM             R3, {R0-R2}
ADD             R0, R4, #0x3800
VADD.F32        S0, S0, S17
VSTR            S0, [R5,#0x28]
VMOV            S0, R1
VADD.F32        S0, S0, S16
VSTR            S0, [R5,#0x2C]
VLDR            S0, [R0,#0x18C]
VMUL.F32        S0, S0, S1
B               loc_1A8D48
LDR             R2, [R4,#4]; jumptable 001A7EE4 case 2
VLDR            S0, =135.0
ADD             R3, R5, #0x28 ; '('
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
VMOV            S1, R1
STM             R3, {R0-R2}
VADD.F32        S0, S1, S0
VLDR            S1, =0.0
VSTR            S0, [R5,#0x2C]
LDR             R1, [R4,#4]
LDR             R0, [R9,#0xA4]
ADD             R1, R1, #0x400
ADD             R0, R0, #0x10
VLDR            S0, [R1,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =0.1
VLDR            S1, =2.0
VNEGLT.F32      S0, S0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
NOP
NOP
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
ADD             R0, R4, #0x3800; jumptable 001A7EE4 case 17
VLDR            S0, =1.0
ADD             R0, R0, #0x1BC
BL              sub_5A2484
ADD             R0, R4, #0x39C0
ADD             R1, R4, #0x11C0
VLDR            S5, [R0]
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1C4
VLDR            S0, [R1,#4]
VLDR            S1, [R1]
VLDR            S2, [R1,#8]
VLDM            R0, {S3-S4}
VADD.F32        S1, S1, S5
ADD             R0, R4, #0x3800
VADD.F32        S0, S0, S3
VLDR            S3, =135.0
VADD.F32        S2, S2, S4
VSTR            S1, [R5,#0x28]
VLDR            S1, =0.0
VADD.F32        S0, S0, S3
VSTR            S2, [R5,#0x30]
VSTR            S0, [R5,#0x2C]
VLDR            S0, [R0,#0x1C4]
VLDR            S2, [R0,#0x1D0]
VSUB.F32        S0, S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_1A8330
LDR             R0, [R10,#0xA4]
LDRH            R1, [R10,#0xB8]
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
BNE             loc_1A8330
LDR             R0, [R10]
MOV             R3, #1
VLDR            S0, =6.0
MOV             R2, #0
LDR             R12, [R0,#0x3C]
MOV             R1, R3
MOV             R0, R10
BLX             R12
ADD             R0, R5, #0x28 ; '('
VLDR            S0, =50.0
LDM             R0, {R0-R2}
ADD             R3, R8, #0x28 ; '('
VMOV            S1, R1
STM             R3, {R0-R2}
VSUB.F32        S0, S1, S0
VSTR            S0, [R8,#0x2C]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
DCD byte_68DBBC
DCD 0x19C98
DCD 0x21218
DCFS 1.0
DCFS 0.5
DCFS -0.5
DCFS 0.0
DCFS 2.0
DCFS 90.0
DCFS 0.71111
DCFS 60.0
DCFS 75.0
DCFS 0.1
DCFS 256.0
DCFS 0.017453
DCFS 135.0
DCFS 6.0
DCFS 50.0
LDR             R0, [R10,#0xA4]; jumptable 001A7EE4 case 18
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BNE             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, [R10]
VLDR            S0, =2.0
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x3C]
MOV             R1, #3
MOV             R0, R10
B               loc_1A99F8
ADD             R9, R4, #0x1000; jumptable 001A7EE4 case 19
VLDR            S17, =0.71111
VLDR            S0, [R9,#0x1B0]
VLDR            S16, =0.0
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VLDR            S18, =60.0
VLDR            S19, =0.0027778
VLDR            S20, =6.2832
VADD.F32        S1, S1, S18
VSTR            S16, [R5,#0x10]
VSTR            S16, [R5,#0x14]
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VSTR            S0, [R5,#0x18]
VLDR            S0, [R9,#0x1B0]
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VSTR            S16, [R8,#0x10]
VSTR            S16, [R8,#0x14]
VADD.F32        S1, S1, S18
ADD             R11, SP, #0xD0+var_B0
ADD             R2, SP, #0xD0+var_A4
ADD             R0, SP, #0xD0+var_A8
ADD             R1, SP, #0xD0+var_CC
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VSTR            S0, [R8,#0x18]
STR             R11, [SP,#0xD0+var_98]
MOV             R11, R2
MOV             R2, R0
MOV             R0, R4
BL              sub_1B1B9C
LDR             R1, [SP,#0xD0+var_98]
MOV             R2, R11
MOV             R0, R4
BL              sub_1AD930
ADD             R11, SP, #0xD0+var_CC
VLDR            S3, =50.0
LDM             R11, {R1-R3}
ADD             R11, R5, #0x28 ; '('
MOV             R0, R8
VMOV            S1, R1
STM             R11, {R1-R3}
ADD             R11, SP, #0xD0+var_CC
VLDR            S2, [SP,#0xD0+var_A4]
VLDR            S0, [SP,#0xD0+var_A8]
VMLA.F32        S1, S2, S0
VSUB.F32        S3, S0, S3
VSTR            S1, [R5,#0x28]
VMOV            S1, R2
VLDR            S4, [SP,#0xD0+var_B0]
VMLA.F32        S1, S4, S0
VSTR            S1, [R5,#0x2C]
LDM             R11, {R1-R3}
ADD             R11, R0, #0x28 ; '('
VMOV            S0, R1
STM             R11, {R1,R2}
STR             R3, [R8,#0x30]
VMLA.F32        S0, S2, S3
VSTR            S0, [R8,#0x28]
VMOV            S0, R2
VMLA.F32        S0, S4, S3
VSTR            S0, [R0,#0x2C]
LDR             R0, [R10]
LDR             R1, [R0,#0x48]
MOV             R0, R10
BLX             R1
CMP             R0, #0
BNE             loc_1A8508
LDR             R0, [R10]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R10
BLX             R2
LDR             R0, [R9,#0x1B0]
ADD             R1, R0, #0xC0000000
SUB             R1, R1, #0x2B40000
CMP             R1, #0xD30000
BCS             loc_1A8538
LDR             R1, [R10,#0xA4]
LDRH            R2, [R10,#0xB8]
LDRB            R1, [R1,#0x6C]
SUB             R1, R1, R2
UXTH            R1, R1
CMP             R1, #5
BEQ             loc_1A8568
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x2B40000
CMP             R0, #0xD30000
BCC             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, [R10,#0xA4]
LDRH            R1, [R10,#0xB8]
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
UXTH            R0, R0
CMP             R0, #4
BNE             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
B               loc_1A86F0
LDR             R0, [R10]
MOV             R3, #0
VLDR            S0, =3.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #4
B               loc_1A8708
ADD             R9, R4, #0x1000; jumptable 001A7EE4 case 20
VLDR            S17, =0.71111
VLDR            S0, [R9,#0x1B0]
VLDR            S16, =0.0
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VLDR            S18, =60.0
VLDR            S19, =0.0027778
VLDR            S20, =6.2832
VADD.F32        S1, S1, S18
VSTR            S16, [R5,#0x10]
VSTR            S16, [R5,#0x14]
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VSTR            S0, [R5,#0x18]
VLDR            S0, [R9,#0x1B0]
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VSTR            S16, [R8,#0x10]
VSTR            S16, [R8,#0x14]
VADD.F32        S1, S1, S18
ADD             R11, SP, #0xD0+var_B0
ADD             R2, SP, #0xD0+var_A4
ADD             R0, SP, #0xD0+var_A8
ADD             R1, SP, #0xD0+var_CC
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VSTR            S0, [R8,#0x18]
STR             R11, [SP,#0xD0+var_A0]
MOV             R11, R2
MOV             R2, R0
MOV             R0, R4
BL              sub_1B1B9C
LDR             R1, [SP,#0xD0+var_A0]
MOV             R2, R11
MOV             R0, R4
BL              sub_1AD930
ADD             R11, SP, #0xD0+var_CC
VLDR            S0, =50.0
LDM             R11, {R1-R3}
ADD             R11, R5, #0x28 ; '('
MOV             R0, R8
VMOV            S1, R1
STM             R11, {R1-R3}
ADD             R11, SP, #0xD0+var_CC
VLDR            S4, [SP,#0xD0+var_A4]
VLDR            S2, [SP,#0xD0+var_A8]
VMLA.F32        S1, S4, S2
VSUB.F32        S3, S2, S0
VMOV            S0, R2
VSTR            S1, [R5,#0x28]
VLDR            S1, [SP,#0xD0+var_B0]
VMLA.F32        S0, S1, S2
VSTR            S0, [R5,#0x2C]
LDM             R11, {R1-R3}
ADD             R11, R0, #0x28 ; '('
VMOV            S0, R1
STM             R11, {R1,R2}
STR             R3, [R8,#0x30]
VMLA.F32        S0, S4, S3
VSTR            S0, [R8,#0x28]
VMOV            S0, R2
VMLA.F32        S0, S1, S3
VSTR            S0, [R0,#0x2C]
LDR             R0, [R9,#0x1B0]
ADD             R1, R0, #0xC0000000
SUB             R1, R1, #0x2B40000
CMP             R1, #0xD30000
BCS             loc_1A86C4
LDR             R1, [R10,#0xA4]
LDRH            R2, [R10,#0xB8]
LDRB            R1, [R1,#0x6C]
SUB             R1, R1, R2
UXTH            R1, R1
CMP             R1, #5
BEQ             loc_1A8568
ADD             R0, R0, #0xC0000000
SUB             R0, R0, #0x2B40000
CMP             R0, #0xD30000
BCC             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, [R10,#0xA4]
LDRH            R1, [R10,#0xB8]
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
UXTH            R0, R0
CMP             R0, #4
BNE             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, [R10]
VLDR            S0, =3.0
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #5
MOV             R0, R10
B               loc_1A99F8
DCFS 0.0027778
DCFS 6.2832
DCFS 3.0
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 21
ADD             R2, SP, #0xD0+var_A8
ADD             R8, SP, #0xD0+var_B0
ADD             R6, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R6
MOV             R1, R8
MOV             R0, R4
BL              sub_1AD930
ADD             R3, SP, #0xD0+var_CC
LDM             R3, {R0-R2}
ADD             R3, R5, #0x28 ; '('
VMOV            S1, R0
STM             R3, {R0-R2}
VLDR            S2, [SP,#0xD0+var_A4]
VLDR            S0, [SP,#0xD0+var_A8]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x28]
VMOV            S1, R1
VLDR            S2, [SP,#0xD0+var_B0]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x2C]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R10, R4, #0x1100
LDR             R0, [R0,#8]
VLDR            S1, =0.02
VLDR            S0, =1.0
STR             R0, [R5,#0x24]
ADD             R0, R5, #0x1C
STM             R0, {R1,R2}
VLDR            S2, [SP,#0xD0+var_A8]
LDRH            R0, [R10,#0xB4]
VMLA.F32        S0, S2, S1
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R0, R6
BCS             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
SUB             R0, R6, R0
CMP             R0, #0
LDRGT           R11, =byte_68DBBC
VLDRGT          S16, =2.0
MOV             R8, #0
BLE             loc_1A92E4
LDRB            R0, [R11]
LDRH            R2, [R10,#0xB4]
LDR             R3, =0x19C98
AND             R1, R0, #0xFF
ADD             R1, R1, R8
ADD             R0, R0, R2
ADD             R1, R1, R0
LDR             R12, [R4,#4]
RSB             R9, R1, R1,LSL#4
ADD             R0, R8, #4
ADD             R1, R9, R1,LSL#5
ADD             R2, R2, R0
ADD             R0, R3, R1,LSL#2
ADD             R9, R0, R12
AND             R1, R2, #7
LDR             R0, [R9]
VMOV.F32        S0, S16
MOV             R3, #0
ADD             R1, R1, #6
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R9
BLX             R12
LDR             R0, [R9]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
LDRH            R1, [R10,#0xB4]
ADD             R0, R8, #1
UXTH            R8, R0
SUB             R0, R6, R1
CMP             R0, R8
BGT             loc_1A87D4
B               loc_1A92E4
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 23
ADD             R2, SP, #0xD0+var_A8
ADD             R6, SP, #0xD0+var_B0
ADD             R8, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R8
MOV             R1, R6
MOV             R0, R4
BL              sub_1AD930
VLDR            S0, =-50.0
VLDR            S1, [SP,#0xD0+var_A4]
VLDR            S3, [SP,#0xD0+var_B0]
ADD             R0, R4, #0x1000
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
ADD             R0, R0, #0x1CC
VLDR            S2, =0.0
ADD             R10, R4, #0x1100
VLDM            R0, {S3-S5}
VADD.F32        S1, S3, S1
VADD.F32        S0, S4, S0
VADD.F32        S2, S5, S2
VSTR            S1, [R5,#0x28]
VSTR            S0, [R5,#0x2C]
VSTR            S2, [R5,#0x30]
VLDR            S2, =0.02
VLDR            S0, =1.0
VLDR            S1, [SP,#0xD0+var_A8]
LDRH            R0, [R10,#0xB4]
VMLA.F32        S0, S1, S2
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R0, R6
BCS             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
SUB             R0, R6, R0
CMP             R0, #0
LDRGT           R11, =byte_68DBBC
VLDRGT          S16, =2.0
MOV             R8, #0
BLE             loc_1A92E4
LDRB            R1, [R11]
LDRH            R0, [R10,#0xB4]
LDR             R12, =0x19C98
AND             R2, R1, #0xFF
ADD             R3, R1, R8
ADD             R1, R0, R2
ADD             R2, R1, R3
LDR             R3, [R4,#4]
RSB             R1, R2, R2,LSL#4
ADD             R1, R1, R2,LSL#5
ADD             R0, R0, #4
ADD             R1, R12, R1,LSL#2
ADD             R9, R1, R3
AND             R0, R0, #7
LDR             R1, [R9]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R1,#0x3C]
ADD             R1, R0, #6
MOV             R0, R9
BLX             R12
LDR             R0, [R9]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
LDRH            R1, [R10,#0xB4]
ADD             R0, R8, #1
UXTH            R8, R0
SUB             R0, R6, R1
CMP             R0, R8
BGT             loc_1A8908
B               loc_1A92E4
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 24
ADD             R2, SP, #0xD0+var_A8
ADD             R6, SP, #0xD0+var_B0
ADD             R8, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R8
MOV             R1, R6
MOV             R0, R4
BL              sub_1AD930
VLDR            S0, =50.0
VLDR            S3, [SP,#0xD0+var_A4]
VLDR            S2, [SP,#0xD0+var_B0]
ADD             R0, R4, #0x1000
VMUL.F32        S3, S3, S0
ADD             R0, R0, #0x1CC
VMUL.F32        S2, S2, S0
VLDR            S0, [R0]
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1D0
VLDR            S1, =0.0
VLDM            R0, {S4-S5}
ADD             R0, R4, #0x1100
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S4, S2
VSUB.F32        S1, S5, S1
VSTR            S0, [R5,#0x28]
VLDR            S0, =1.0
VSTR            S2, [R5,#0x2C]
VSTR            S1, [R5,#0x30]
VLDR            S2, =0.02
VLDR            S1, [SP,#0xD0+var_A8]
LDRH            R2, [R0,#0xB4]
VMLA.F32        S0, S1, S2
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R2, R6
STRHCC          R6, [R0,#0xB4]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 22
ADD             R2, SP, #0xD0+var_A8
ADD             R9, SP, #0xD0+var_B0
ADD             R6, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R6
MOV             R1, R9
MOV             R0, R4
BL              sub_1AD930
ADD             R6, R4, #0x1000
VLDR            S17, =0.71111
VLDR            S0, [R6,#0x1B0]
VLDR            S16, =0.0
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R6,#0x1D8]
VLDR            S18, =60.0
VLDR            S19, =0.0027778
VLDR            S20, =6.2832
VADD.F32        S1, S1, S18
VSTR            S16, [R5,#0x10]
VSTR            S16, [R5,#0x14]
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VSTR            S0, [R5,#0x18]
VLDR            S0, [R6,#0x1B0]
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R6,#0x1D8]
VSTR            S16, [R8,#0x10]
VSTR            S16, [R8,#0x14]
VADD.F32        S1, S1, S18
ADD             R3, SP, #0xD0+var_CC
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VSTR            S0, [R8,#0x18]
LDM             R3, {R0-R2}
ADD             R3, R5, #0x28 ; '('
VMOV            S1, R0
STM             R3, {R0-R2}
VLDR            S2, [SP,#0xD0+var_A4]
VLDR            S0, [SP,#0xD0+var_A8]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x28]
VMOV            S1, R1
VLDR            S2, [SP,#0xD0+var_B0]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x2C]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
VLDR            S1, =0.02
VLDR            S0, =1.0
STR             R0, [R5,#0x24]
ADD             R0, R5, #0x1C
STM             R0, {R1,R2}
VLDR            S2, [SP,#0xD0+var_A8]
VMLA.F32        S0, S2, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R6, R0
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
DCFS 0.02
DCFS 1.0
DCFS 2.0
DCFS -50.0
DCFS 0.0
DCFS 50.0
DCFS 0.71111
DCFS 60.0
ADD             R8, R4, #0x3800; jumptable 001A7EE4 case 26
VLDR            S17, =90.0
VLDR            S0, [R8,#0x18C]
VLDR            S18, =0.71111
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
BL              sub_464318
VLDR            S19, =50.0
VLDR            S1, [R8,#0x18C]
VMUL.F32        S16, S0, S19
VSUB.F32        S0, S1, S17
VMUL.F32        S0, S0, S18
BL              sub_464380
VMUL.F32        S0, S0, S19
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1CC
VLDR            S1, =0.0
VLDR            S2, [R0]
VLDR            S4, [R0,#4]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S16
VADD.F32        S3, S3, S1
VADD.F32        S0, S4, S0
VSTR            S2, [R5,#0x28]
VSTR            S0, [R5,#0x2C]
VSTR            S3, [R5,#0x30]
VLDR            S0, =0.017453
VLDR            S2, [R8,#0x18C]
VSTR            S1, [R5,#0x10]
VSTR            S1, [R5,#0x14]
VMUL.F32        S0, S2, S0
B               loc_1A8D48
LDR             R0, =0x39A8; jumptable 001A7EE4 case 31
LDR             R8, [R0,R4]
CMP             R8, #0
BEQ             loc_1A8C08
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R8,#0xAAC]
CMPEQ           R0, #3
LDREQ           R8, [R8,#0xAA8]
MOVNE           R8, #0
ADD             R9, R4, #0x3800
VLDR            S19, =90.0
VLDR            S0, [R9,#0x18C]
VLDR            S1, [R8,#0x23C]
VLDR            S16, =57.296
VSUB.F32        S0, S0, S19
VLDR            S18, =0.71111
VMLA.F32        S0, S1, S16
VMUL.F32        S0, S0, S18
BL              sub_464318
VLDR            S1, [R9,#0x18C]
VLDR            S2, [R8,#0x23C]
VLDR            S17, =50.0
VSUB.F32        S1, S1, S19
VMLA.F32        S1, S2, S16
VMUL.F32        S16, S0, S17
VMUL.F32        S0, S1, S18
BL              sub_464380
VMUL.F32        S0, S0, S17
ADD             R0, R4, #0x11C0
VLDR            S1, =0.0
VLDR            S2, [R0]
VLDR            S4, [R0,#4]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S16
VADD.F32        S3, S3, S1
VADD.F32        S0, S4, S0
VSTR            S2, [R5,#0x28]
VLDR            S2, =0.017453
VSTR            S0, [R5,#0x2C]
VSTR            S3, [R5,#0x30]
VLDR            S0, [R8,#0x23C]
VLDR            S3, [R9,#0x18C]
VSTR            S1, [R5,#0x10]
VSTR            S1, [R5,#0x14]
VMLA.F32        S0, S3, S2
B               loc_1A8D48
LDR             R0, [R4,#8]; jumptable 001A7EE4 case 32
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R0, R2
BLE             loc_1A8D50
ADD             R0, R1, #6
BL              sub_45AAB8
ADD             R8, R4, #0x3800
VMOV.F32        S16, S0
VLDR            S0, [R8,#0x18C]
VLDR            S18, =0.71111
VMUL.F32        S0, S0, S18
BL              sub_464318
VMOV.F32        S1, S0
VLDR            S0, =50.0
VLDR            S17, =60.0
VMLS.F32        S17, S16, S0
VLDR            S0, [R8,#0x18C]
VMUL.F32        S0, S0, S18
VMUL.F32        S16, S1, S17
BL              sub_464380
VMUL.F32        S1, S0, S17
VLDR            S2, =75.0
LDR             R0, [R4,#4]
VLDR            S0, =0.0
ADD             R0, R0, #0x108
VLDM            R0, {S3-S4}
VADD.F32        S1, S1, S2
VLDR            S2, [R0,#8]
VADD.F32        S3, S3, S16
ADD             R0, R5, #0x2C ; ','
VADD.F32        S2, S2, S0
VADD.F32        S1, S4, S1
VSTR            S3, [R5,#0x28]
VSTM            R0, {S1-S2}
VLDR            S2, =90.0
VLDR            S3, [R8,#0x18C]
VLDR            S1, =0.017453
VSTR            S0, [R5,#0x10]
VSUB.F32        S2, S3, S2
VSTR            S0, [R5,#0x14]
VMUL.F32        S0, S2, S1
VSTR            S0, [R5,#0x18]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, =0x39A4
LDR             R8, [R0,R4]
CMP             R8, #0
BEQ             loc_1A8EA0
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R8,#0xAAC]
CMPEQ           R0, #3
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x1AC
LDREQ           R8, [R8,#0xAA8]
VLDR            S2, [R0]
VLDR            S0, [R0,#4]
VLDR            S3, [R0,#8]
VMUL.F32        S1, S2, S2
MOVNE           R8, #0
VMLA.F32        S1, S0, S0
VMLA.F32        S1, S3, S3
VLDR            S3, =1.0
VSQRT.F32       S16, S1
VDIV.F32        S1, S3, S16
VLDR            S3, [R0,#8]
VMUL.F32        S17, S0, S1
VMUL.F32        S19, S3, S1
VMUL.F32        S18, S2, S1
VLDR            S0, [R8,#0x250]
VLDR            S1, =61.0
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1A8EA0
LDR             R0, [R9]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
LDR             R1, [R4,#4]
VLDR            S0, =75.0
ADD             R0, R5, #0x28 ; '('
ADD             R2, R1, #0x108
LDR             R1, [R1,#0x110]
LDM             R2, {R2,R3}
STR             R1, [R5,#0x30]
VMOV            S1, R3
STRD            R2, R3, [R5,#0x28]
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x2C]
VLDR            S0, =50.0
VLDR            S1, [R8,#0x250]
VLDR            S3, [R5,#0x28]
VADD.F32        S0, S1, S0
VSUB.F32        S0, S16, S0
VLDR            S16, =0.0
VMUL.F32        S2, S18, S0
VMUL.F32        S1, S19, S0
VMUL.F32        S0, S17, S0
VADD.F32        S2, S3, S2
VSTR            S2, [R0]
VLDR            S2, [R0,#4]
VADD.F32        S0, S2, S0
VSTR            S0, [R0,#4]
VLDR            S0, [R0,#8]
VADD.F32        S0, S0, S1
VMOV.F32        S1, S17
VSTR            S0, [R0,#8]
VMOV.F32        S0, S18
BL              sub_4645C0
VLDR            S1, =-0.024544
VSTR            S16, [R5,#0x10]
VSTR            S16, [R5,#0x14]
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x18]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
DCFS 90.0
DCFS 0.017453
DCD 0x39A8
DCFS 57.296
DCFS 75.0
DCD 0x39A4
DCFS 61.0
DCFS -0.024544
LDR             R0, [R9]
LDR             R1, [R0,#0x48]
MOV             R0, R9
BLX             R1
CMP             R0, #0
BEQ             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, [R9]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, =0x39A8; jumptable 001A7EE4 case 33
LDR             R8, [R0,R4]
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
ADD             R10, R4, #0x3800
VLDR            S18, =0.017453
VLDR            S0, =3.1416
VLDR            S2, [R10,#0x18C]
CMP             R0, #8
LDRBEQ          R0, [R8,#0xAAC]
VMLA.F32        S0, S2, S18
VLDR            S17, =0.0
CMPEQ           R0, #3
LDREQ           R8, [R8,#0xAA8]
MOVNE           R8, #0
ADD             R1, SP, #0xD0+var_CC
ADD             R2, SP, #0xD0+var_A8
VLDR            S1, [R8,#0x23C]
VSTR            S17, [R5,#0x10]
VSTR            S17, [R5,#0x14]
VADD.F32        S0, S1, S0
ADD             R9, SP, #0xD0+var_B0
ADD             R11, SP, #0xD0+var_A4
MOV             R0, R4
VSTR            S0, [R5,#0x18]
BL              sub_1B1B9C
MOV             R2, R11
MOV             R1, R9
MOV             R0, R4
BL              sub_1AD930
ADD             R3, SP, #0xD0+var_CC
VLDR            S21, =90.0
LDM             R3, {R0-R2}
ADD             R3, R5, #0x28 ; '('
VLDR            S16, =57.296
VMOV            S1, R0
STM             R3, {R0-R2}
VLDR            S2, [SP,#0xD0+var_A4]
VLDR            S0, [SP,#0xD0+var_A8]
VLDR            S19, =0.71111
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x28]
VMOV            S1, R1
VLDR            S2, [SP,#0xD0+var_B0]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x2C]
VLDR            S0, [R10,#0x18C]
VLDR            S1, [R8,#0x23C]
LDR             R0, [R4,#4]
VSUB.F32        S0, S0, S21
ADD             R9, R0, #0x23400
ADD             R9, R9, #0xA8
VMLA.F32        S0, S1, S16
VMUL.F32        S0, S0, S19
BL              sub_464318
VLDR            S1, [R10,#0x18C]
VLDR            S2, [R8,#0x23C]
VLDR            S20, =50.0
VSUB.F32        S1, S1, S21
VMLA.F32        S1, S2, S16
VMUL.F32        S16, S0, S20
VMUL.F32        S0, S1, S19
BL              sub_464380
VMUL.F32        S0, S0, S20
ADD             R0, R4, #0x11C0
VLDR            S2, [R0]
VLDR            S1, [R0,#4]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S16
VADD.F32        S1, S1, S0
VADD.F32        S0, S3, S17
VSTR            S2, [R9,#0x28]
VSTR            S1, [R9,#0x2C]
VSTR            S0, [R9,#0x30]
VLDR            S0, [R8,#0x23C]
VLDR            S1, [R10,#0x18C]
VSTR            S17, [R9,#0x10]
VSTR            S17, [R9,#0x14]
VMLA.F32        S0, S1, S18
VSTR            S0, [R9,#0x18]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 34
ADD             R2, SP, #0xD0+var_A8
ADD             R6, SP, #0xD0+var_B0
ADD             R8, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R8
MOV             R1, R6
MOV             R0, R4
BL              sub_1AD930
ADD             R3, SP, #0xD0+var_CC
LDM             R3, {R0-R2}
ADD             R3, R5, #0x28 ; '('
VMOV            S1, R0
STM             R3, {R0-R2}
VLDR            S2, [SP,#0xD0+var_A4]
VLDR            S0, [SP,#0xD0+var_A8]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x28]
VMOV            S1, R1
VLDR            S2, [SP,#0xD0+var_B0]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x2C]
BL              sub_4635D8
LDM             R0, {R1,R2}
MOV             R3, #0
LDR             R0, [R0,#8]
VLDR            S16, =2.0
STR             R0, [R5,#0x24]
ADD             R0, R5, #0x1C
VMOV.F32        S0, S16
STM             R0, {R1,R2}
MOV             R2, R3
LDR             R0, [R9,#0xA4]
LDRH            R1, [R9,#0xB8]
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
SXTH            R0, R0
CMP             R0, #0xD
SUBNE           R0, R0, #5
MOVEQ           R0, #0
ADD             R0, R0, #6
SXTH            R1, R0
LDR             R0, [R9]
LDR             R12, [R0,#0x3C]
MOV             R0, R9
BLX             R12
VLDR            S0, [SP,#0xD0+var_A8]
VLDR            S1, =0.02
ADD             R10, R4, #0x1100
VMUL.F32        S0, S0, S1
LDRH            R0, [R10,#0xB4]
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R0, R6
BCS             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
SUB             R0, R6, R0
CMP             R0, #0
LDRGT           R11, =byte_68DBBC
MOV             R8, #0
BLE             loc_1A92E4
LDRB            R0, [R11]
LDRH            R1, [R10,#0xB4]
LDR             R3, =0x19C98
AND             R2, R0, #0xFF
ADD             R0, R0, R8
ADD             R2, R2, R1
ADD             R2, R2, R0
LDR             R12, [R4,#4]
RSB             R0, R2, R2,LSL#4
ADD             R0, R0, R2,LSL#5
VMOV.F32        S0, S16
ADD             R0, R3, R0,LSL#2
ADD             R9, R0, R12
ADD             R0, R1, #4
LDR             R1, [R9]
AND             R0, R0, #7
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R1,#0x3C]
ADD             R1, R0, #6
MOV             R0, R9
BLX             R12
LDR             R0, [R9]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
LDRH            R0, [R10,#0xB4]
ADD             R1, R8, #1
UXTH            R8, R1
SUB             R0, R6, R0
CMP             R0, R8
BGT             loc_1A9114
B               loc_1A92E4
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 36
ADD             R2, SP, #0xD0+var_A8
ADD             R6, SP, #0xD0+var_B0
ADD             R8, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R8
MOV             R1, R6
MOV             R0, R4
BL              sub_1AD930
VLDR            S0, =-50.0
VLDR            S1, [SP,#0xD0+var_A4]
VLDR            S3, [SP,#0xD0+var_B0]
ADD             R0, R4, #0x1000
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
ADD             R0, R0, #0x1CC
VLDR            S2, =0.0
ADD             R10, R4, #0x1100
VLDM            R0, {S3-S5}
VADD.F32        S1, S3, S1
VADD.F32        S0, S4, S0
VADD.F32        S2, S5, S2
VSTR            S1, [R5,#0x28]
VSTR            S0, [R5,#0x2C]
VSTR            S2, [R5,#0x30]
VLDR            S1, =0.02
VLDR            S0, [SP,#0xD0+var_A8]
LDRH            R0, [R10,#0xB4]
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R0, R6
BCS             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
SUB             R0, R6, R0
CMP             R0, #0
LDRGT           R11, =byte_68DBBC
VLDRGT          S16, =2.0
MOV             R8, #0
BLE             loc_1A92E4
LDRB            R2, [R11]
LDRH            R0, [R10,#0xB4]
LDR             R3, [R4,#4]
AND             R1, R2, #0xFF
ADD             R2, R2, R8
ADD             R1, R1, R0
ADD             R1, R1, R2
LDR             R2, =0x19C98
RSB             R12, R1, R1,LSL#4
ADD             R1, R12, R1,LSL#5
ADD             R0, R0, #4
ADD             R1, R2, R1,LSL#2
ADD             R9, R1, R3
AND             R0, R0, #7
LDR             R1, [R9]
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R1,#0x3C]
ADD             R1, R0, #6
MOV             R0, R9
BLX             R12
LDR             R0, [R9]
MOV             R1, #1
B               loc_1A92C0
DCFS 3.1416
DCFS 0.71111
DCFS 50.0
DCFS 2.0
DCFS 0.02
DCFS -50.0
DCFS 0.0
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
LDRH            R0, [R10,#0xB4]
ADD             R1, R8, #1
UXTH            R8, R1
SUB             R0, R6, R0
CMP             R0, R8
BGT             loc_1A9240
STRH            R6, [R10,#0xB4]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 37
ADD             R2, SP, #0xD0+var_A8
ADD             R6, SP, #0xD0+var_B0
ADD             R8, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R8
MOV             R1, R6
MOV             R0, R4
BL              sub_1AD930
VLDR            S1, =50.0
VLDR            S0, [SP,#0xD0+var_A4]
VLDR            S2, [SP,#0xD0+var_B0]
ADD             R0, R4, #0x1000
VMUL.F32        S0, S0, S1
VMUL.F32        S2, S2, S1
ADD             R0, R0, #0x1CC
VLDR            S3, =0.0
VLDR            S5, [R0]
VLDR            S4, [R0,#4]
VLDR            S1, [R0,#8]
ADD             R0, R4, #0x1100
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S5, S0
VSUB.F32        S2, S4, S2
VSTR            S0, [R5,#0x28]
VSTR            S2, [R5,#0x2C]
VSTR            S1, [R5,#0x30]
VLDR            S1, =0.02
VLDR            S0, [SP,#0xD0+var_A8]
LDRH            R2, [R0,#0xB4]
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R2, R6
STRHCC          R6, [R0,#0xB4]
LDR             R0, =0x39B8
LDR             R1, [R4,#4]
LDRB            R0, [R0,R4]
ADD             R8, R1, #0x21000
ADD             R8, R8, #0xA0
CMP             R0, #0
BEQ             loc_1A93E0
LDR             R0, [R8,#0xA4]
LDRH            R1, [R8,#0xB8]
MOV             R3, #0
VLDR            S0, =2.0
LDRB            R0, [R0,#0x6C]
MOV             R2, R3
SUB             R0, R0, R1
SXTH            R0, R0
CMP             R0, #6
SUBNE           R0, R0, #7
MOVEQ           R0, #7
ADD             R0, R0, #6
SXTH            R1, R0
LDR             R0, [R8]
LDR             R12, [R0,#0x3C]
MOV             R0, R8
B               loc_1A99F8
LDR             R0, [R8,#0xA4]
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
CMP             R0, #0
SUBNE           R0, R0, #1
UXTHNE          R1, R0
BEQ             loc_1A9418
LDR             R0, [R8,#0xA4]
BL              sub_593084
NOP
NOP
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, [R8,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
SUB             R0, R0, #1
UXTH            R1, R0
B               loc_1A9404
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 38
ADD             R2, SP, #0xD0+var_A8
ADD             R8, SP, #0xD0+var_B0
ADD             R6, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R6
MOV             R1, R8
MOV             R0, R4
BL              sub_1AD930
ADD             R3, SP, #0xD0+var_CC
LDM             R3, {R0-R2}
ADD             R3, R5, #0x28 ; '('
VMOV            S1, R0
STM             R3, {R0-R2}
VLDR            S2, [SP,#0xD0+var_A4]
VLDR            S0, [SP,#0xD0+var_A8]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x28]
VMOV            S1, R1
VLDR            S2, [SP,#0xD0+var_B0]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x2C]
BL              sub_4635D8
LDM             R0, {R1,R2}
MOV             R3, #0
LDR             R0, [R0,#8]
VLDR            S0, =2.0
STR             R0, [R5,#0x24]
ADD             R0, R5, #0x1C
STM             R0, {R1,R2}
MOV             R2, R3
LDR             R0, [R9,#0xA4]
LDRH            R1, [R9,#0xB8]
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
SUB             R0, R0, #7
SXTH            R0, R0
CMN             R0, #1
MOVEQ           R0, #6
ADD             R0, R0, #6
SXTH            R1, R0
LDR             R0, [R9]
LDR             R12, [R0,#0x3C]
MOV             R0, R9
BLX             R12
VLDR            S0, [SP,#0xD0+var_A8]
VLDR            S1, =0.02
ADD             R9, R4, #0x1100
VMUL.F32        S0, S0, S1
LDRH            R0, [R9,#0xB4]
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R0, R6
BLS             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
SUB             R0, R0, R6
CMP             R0, #0
LDRGT           R10, =0x19BDC
MOV             R8, #0
BLE             loc_1A9690
LDRH            R0, [R9,#0xB4]
LDR             R1, [R4,#4]
ADD             R0, R0, R7
SUB             R2, R0, R8
RSB             R0, R2, R2,LSL#4
ADD             R0, R0, R2,LSL#5
ADD             R0, R10, R0,LSL#2
LDR             R1, [R0,R1]!
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
LDRH            R0, [R9,#0xB4]
ADD             R1, R8, #1
UXTH            R8, R1
SUB             R0, R0, R6
CMP             R0, R8
BGT             loc_1A9524
B               loc_1A9690
ADD             R1, SP, #0xD0+var_CC; jumptable 001A7EE4 case 27
ADD             R2, SP, #0xD0+var_A8
ADD             R8, SP, #0xD0+var_B0
ADD             R6, SP, #0xD0+var_A4
MOV             R0, R4
BL              sub_1B1B9C
MOV             R2, R6
MOV             R1, R8
MOV             R0, R4
BL              sub_1AD930
ADD             R3, SP, #0xD0+var_CC
LDM             R3, {R0-R2}
ADD             R3, R5, #0x28 ; '('
VMOV            S1, R0
STM             R3, {R0-R2}
VLDR            S2, [SP,#0xD0+var_A4]
VLDR            S0, [SP,#0xD0+var_A8]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x28]
VMOV            S1, R1
VLDR            S2, [SP,#0xD0+var_B0]
VMLA.F32        S1, S2, S0
VSTR            S1, [R5,#0x2C]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x24]
ADD             R0, R5, #0x1C
STM             R0, {R1,R2}
LDR             R0, [R9,#0xA4]
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
CMP             R0, #0
SUBNE           R0, R0, #1
UXTHNE          R1, R0
BEQ             loc_1A9698
LDR             R0, [R9,#0xA4]
BL              sub_593084
VLDR            S1, [SP,#0xD0+var_A8]
VLDR            S2, =0.02
VLDR            S0, =1.0
ADD             R9, R4, #0x1100
VMLA.F32        S0, S1, S2
LDRH            R0, [R9,#0xB4]
VCVT.U32.F32    S0, S0
VMOV            R1, S0
UXTH            R6, R1
CMP             R0, R6
BLS             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
SUB             R0, R0, R6
CMP             R0, #0
LDRGT           R10, =0x19BDC
MOV             R8, #0
BLE             loc_1A9690
LDRH            R0, [R9,#0xB4]
LDR             R2, [R4,#4]
ADD             R0, R0, R7
SUB             R1, R0, R8
RSB             R0, R1, R1,LSL#4
ADD             R0, R0, R1,LSL#5
ADD             R0, R10, R0,LSL#2
LDR             R1, [R0,R2]!
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
LDRH            R1, [R9,#0xB4]
ADD             R0, R8, #1
UXTH            R8, R0
SUB             R0, R1, R6
CMP             R0, R8
BGT             loc_1A964C
STRH            R6, [R9,#0xB4]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDR             R0, [R9,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
SUB             R0, R0, #1
UXTH            R1, R0
B               loc_1A9604
ADD             R9, R4, #0x1000; jumptable 001A7EE4 case 28
VLDR            S0, =11.25
VLDR            S2, [R9,#0x1B0]
LDR             R1, =0x7FFFFF
VLDR            S1, =90.0
VADD.F32        S0, S0, S2
VMOV            R0, S0
VSTR            S0, [R9,#0x1B0]
SUB             R0, R0, #0x40000001
SUB             R0, R0, #0x2B40000
CMP             R0, R1
VSTRCC          S1, [R9,#0x1B0]
BCC             loc_1A96F8
LDR             R1, =0x43870000
VMOV            R0, S0
CMP             R0, R1
VLDRGE          S0, =270.0
VSTR            S0, [R9,#0x1B0]
LDR             R0, [R9,#0x1B0]
LDR             R1, =0x42B40000
VLDR            S16, =0.0
CMP             R0, R1
BGT             loc_1A9770
VMOV            S0, R0
VLDR            S17, =0.71111
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VLDR            S18, =60.0
VLDR            S19, =0.017453
VSTR            S16, [R5,#0x10]
VADD.F32        S2, S1, S18
VSTR            S16, [R5,#0x14]
VMOV.F32        S1, S2
VNMLS.F32       S1, S0, S2
VMUL.F32        S0, S1, S19
VSTR            S0, [R5,#0x18]
VLDR            S0, [R9,#0x1B0]
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VSTR            S16, [R8,#0x10]
VSTR            S16, [R8,#0x14]
VADD.F32        S2, S1, S18
VMOV.F32        S1, S2
VNMLS.F32       S1, S0, S2
VMUL.F32        S0, S1, S19
B               loc_1A97D4
VMOV            S0, R0
VLDR            S18, =0.71111
VMUL.F32        S0, S0, S18
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VLDR            S17, =60.0
VLDR            S19, =0.017453
VSTR            S16, [R5,#0x10]
VADD.F32        S3, S1, S17
VMOV.F32        S2, S17
VSTR            S16, [R5,#0x14]
VMLA.F32        S2, S0, S3
VADD.F32        S0, S2, S1
VMUL.F32        S0, S0, S19
VSTR            S0, [R5,#0x18]
VLDR            S0, [R9,#0x1B0]
VMUL.F32        S0, S0, S18
BL              sub_464380
VLDR            S1, [R9,#0x1D8]
VSTR            S16, [R8,#0x10]
VSTR            S16, [R8,#0x14]
VADD.F32        S2, S1, S17
VMLA.F32        S17, S0, S2
VADD.F32        S0, S17, S1
VMUL.F32        S0, S0, S19
ADD             R1, SP, #0xD0+var_CC
ADD             R2, SP, #0xD0+var_A8
ADD             R10, SP, #0xD0+var_B0
ADD             R9, SP, #0xD0+var_A4
MOV             R0, R4
VSTR            S0, [R8,#0x18]
BL              sub_1B1B9C
MOV             R2, R9
MOV             R1, R10
MOV             R0, R4
BL              sub_1AD930
ADD             R9, SP, #0xD0+var_CC
VLDR            S2, =50.0
LDM             R9, {R1-R3}
ADD             R9, R5, #0x28 ; '('
MOV             R0, R8
VMOV            S0, R1
STM             R9, {R1-R3}
ADD             R9, SP, #0xD0+var_CC
VLDR            S3, [SP,#0xD0+var_A4]
VLDR            S1, [SP,#0xD0+var_A8]
VMLA.F32        S0, S3, S1
VSUB.F32        S2, S1, S2
VSTR            S0, [R5,#0x28]
VMOV            S0, R2
VLDR            S4, [SP,#0xD0+var_B0]
VMLA.F32        S0, S4, S1
VSTR            S0, [R5,#0x2C]
LDM             R9, {R1-R3}
ADD             R9, R0, #0x28 ; '('
VMOV            S0, R1
STM             R9, {R1,R2}
STR             R3, [R8,#0x30]
VMLA.F32        S0, S3, S2
VSTR            S0, [R8,#0x28]
VMOV            S0, R2
VMLA.F32        S0, S4, S2
VSTR            S0, [R0,#0x2C]
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
ADD             R0, R4, #0x3800; jumptable 001A7EE4 case 30
VLDR            S0, =1.0
ADD             R0, R0, #0x1BC
BL              sub_5A2484
ADD             R1, R4, #0x39C0
ADD             R0, R4, #0x11C0
VLDR            S5, [R1]
ADD             R1, R4, #0x3800
ADD             R1, R1, #0x1C4
VLDR            S0, [R0,#4]
VLDR            S1, [R0]
VLDR            S2, [R0,#8]
ADD             R3, R8, #0x28 ; '('
VLDM            R1, {S3-S4}
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S3
VLDR            S3, =185.0
VADD.F32        S2, S2, S4
VSTR            S1, [R5,#0x28]
VLDR            S1, =50.0
VADD.F32        S0, S0, S3
VSTR            S2, [R5,#0x30]
VMOV            R2, S2
VMOV            R1, S0
VSTR            S0, [R5,#0x2C]
LDR             R0, [R5,#0x28]
VMOV            S0, R1
STM             R3, {R0-R2}
VSUB.F32        S0, S0, S1
B               loc_1A834C
DCD 0x39B8
DCD 0x19BDC
DCFS 1.0
DCFS 11.25
DCD 0x7FFFFF
DCFS 90.0
DCD 0x43870000
DCFS 270.0
DCD 0x42B40000
DCFS 0.0
DCFS 0.71111
DCFS 60.0
DCFS 0.017453
DCFS 50.0
DCFS 185.0
LDR             R0, [R4,#4]; jumptable 001A7EE4 cases 39-41
ADD             R8, R4, #0x3800
VLDR            S16, =0.0
VLDR            S0, [R8,#0x21C]
VLDR            S1, [R0,#0x108]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VMOV            R0, S0
CMP             R0, #0x3F800000
BLE             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
MOV             R1, #0x3000
MOV             R0, R9
BL              sub_543494
LDR             R0, [R4,#4]
VLDR            S0, [R8,#0x224]
VLDR            S1, [R8,#0x21C]
VLDR            S3, [R0,#0x110]
VLDR            S2, [R0,#0x108]
VSUB.F32        S0, S3, S0
VSUB.F32        S1, S1, S2
BL              sub_4645C0
VLDR            S1, =1.4062
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_1A9A8C
VLDR            S2, =0.0027778
VLDR            S3, =8.0
VLDR            S1, =10.5
VMUL.F32        S0, S0, S2
VMLS.F32        S1, S0, S3
VCVT.U32.F32    S0, S1
VMOV            R0, S0
AND             R1, R0, #7
B               loc_1A99E0
VLDR            S2, =8.0; jumptable 001A7EE4 case 42
CMP             R11, #0
ADD             R0, R4, #0x3800
BEQ             loc_1A9A00
VLDR            S1, [R0,#0x214]
VLDR            S0, =6.5
VMLA.F32        S0, S1, S2
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R1, R0, #7
LDR             R0, [R9]
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R0, R9
BLX             R12
B               def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
VLDR            S0, =10.5
VLDR            S1, [R0,#0x214]
VMLS.F32        S0, S1, S2
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R1, R0, #7
B               loc_1A99E0
LDR             R0, [R4,#4]; jumptable 001A7EE4 cases 43-45
ADD             R8, R4, #0x3800
VLDR            S16, =0.0
VLDR            S0, [R8,#0x21C]
VLDR            S1, [R0,#0x108]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VMOV            R0, S0
CMP             R0, #0x3F800000
BLE             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
MOV             R1, #0x3000
MOV             R0, R9
BL              sub_543494
LDR             R0, [R4,#4]
VLDR            S0, [R8,#0x224]
VLDR            S1, [R8,#0x21C]
VLDR            S3, [R0,#0x110]
VLDR            S2, [R0,#0x108]
VSUB.F32        S0, S3, S0
VSUB.F32        S1, S1, S2
BL              sub_4645C0
VLDR            S1, =1.4062
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1A9994
VLDR            S1, =360.0
VADD.F32        S0, S0, S1
B               loc_1A9994
LDR             R0, [R4,#8]; jumptable 001A7EE4 cases 46-49
LDRH            R0, [R0]
CMP             R0, #0x31 ; '1'
BNE             loc_1A9AC4
LDR             R0, =0x3A81
LDRSB           R0, [R0,R4]
CMP             R0, #0
BLT             loc_1A9AC4
LDR             R1, =0x3A81
SUB             R0, R0, #1
STRB            R0, [R1,R4]
ADD             R8, R4, #0x3800
VLDR            S0, [R5,#0x2C]
VLDR            S1, [R8,#0x27C]
VLDR            S16, =2.0
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x2C]
VLDR            S0, [R8,#0x27C]
VSUB.F32        S0, S0, S16
VSTR            S0, [R8,#0x27C]
LDR             R0, [R4,#4]
VLDR            S1, [R5,#0x2C]
VLDR            S0, [R0,#0x10C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
VSTR            S0, [R5,#0x2C]
LDR             R0, [R9,#0xA4]
LDRH            R1, [R0,#0x1A]
TST             R1, #1
BNE             loc_1A9B68
LDRH            R1, [R9,#0xB8]
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
UXTH            R0, R0
CMP             R0, #0xA
CMPNE           R0, #0xB
CMPEQ           R1, #0
BNE             loc_1A9B68
MOV             R1, #8
MOV             R0, R9
BL              sub_543494
LDR             R0, [R9]
CMP             R11, #0
VMOV.F32        S0, S16
MOVNE           R1, #3
LDR             R12, [R0,#0x3C]
MOVEQ           R1, #2
MOV             R3, #1
MOV             R2, #0
MOV             R0, R9
BLX             R12
LDR             R0, [R4,#8]
MOV             R1, R0
LDRSH           R2, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R0, R2
LDRHLE          R0, [R1]
CMPLE           R0, #0x31 ; '1'
BNE             def_1A7EE4; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
ADD             R10, R4, #0x3A00
LDRSB           R0, [R10,#0x81]
CMN             R0, #1
BNE             loc_1A9BA4
LDR             R1, =0x3A81
MOV             R0, #0xE
STRB            R0, [R1,R4]
MOV             R1, #8
MOV             R0, R9
BL              sub_543494
LDR             R0, [R9]
CMP             R11, #0
VMOV.F32        S0, S16
MOVEQ           R1, #4
LDR             R12, [R0,#0x3C]
MOVNE           R1, #5
MOV             R3, #1
MOV             R2, #0
MOV             R0, R9
BLX             R12
LDRSB           R0, [R10,#0x81]
VLDR            S2, =135.0
VLDR            S3, =-1.0
VMOV            S1, R0
MVN             R0, R0
VLDR            S0, =-2.0
VCVT.F32.S32    S4, S1
VDIV.F32        S1, S2, S4
VMOV            S2, R0
VCVT.F32.S32    S2, S2
VMLA.F32        S1, S2, S3
VADD.F32        S0, S1, S0
VSTR            S0, [R8,#0x27C]
LDR             R0, [R4,#8]; jumptable 001A7EE4 default case, cases 5-16,25,29,35,50
LDRSH           R0, [R0]
SUB             R0, R0, #0x15
CMP             R0, #0x1D; switch 29 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1A9C1C; jumptable 001A9C1C default case, cases 4,5,7-11
DCD loc_1A9CC4; jump table for switch statement
DCFS 1.4062
DCFS 0.0027778
DCFS 8.0
DCFS 10.5
DCFS 6.5
DCFS 2.0
DCFS 360.0
DCD 0x3A81
DCFS 135.0
DCFS -1.0
DCFS -2.0
LDR             R0, [R4,#8]; jumptable 001A9C1C cases 0-3,6
LDRSH           R0, [R0]
CMP             R0, #0x22 ; '"'
BEQ             loc_1A9D0C
BGT             loc_1A9CF4
CMP             R0, #0x15
CMPNE           R0, #0x17
CMPNE           R0, #0x18
BEQ             loc_1A9D0C
CMP             R0, #0x1B
BEQ             loc_1A9F10
B               loc_1A9D3C
CMP             R0, #0x24 ; '$'
CMPNE           R0, #0x25 ; '%'
BEQ             loc_1A9D0C
CMP             R0, #0x26 ; '&'
BEQ             loc_1A9F10
B               loc_1A9D3C
ADD             R0, R4, #0x1000
VLDR            S0, =45.0
VLDR            S2, [R0,#0x1E0]
LDR             R2, =0x43B40000
VLDR            S1, =360.0
VADD.F32        S0, S0, S2
VMOV            R1, S0
VSTR            S0, [R0,#0x1E0]
CMP             R1, R2
VSUBGT.F32      S0, S0, S1
BLE             loc_1A9D3C
VSTR            S0, [R0,#0x1E0]
SUB             R0, R6, #1
VMOV            S1, R0
VLDR            S18, =50.0
VLDR            S0, [SP,#0xD0+var_A8]
VLDR            S2, =0.02
ADD             R11, R4, #0x1100
MOV             R8, #0
VCVT.F32.S32    S1, S1
LDRH            R0, [R11,#0xB4]
SUB             R0, R0, #1
CMP             R0, #0
VMLS.F32        S0, S1, S18
VMUL.F32        S16, S0, S2
BLE             loc_1A9F98
ADD             R9, R4, #0x1000
VLDR            S22, =75.0
VLDR            S20, =0.71111
VLDR            S19, =60.0
VLDR            S23, =0.022222
VLDR            S24, =3.0
VLDR            S17, =0.0
VLDR            S25, =2.0
VLDR            S21, =0.017453
LDR             R0, [R4,#8]
LDRH            R0, [R0]
CMP             R0, #0x17
BEQ             loc_1A9EEC
ADD             R3, R8, #1
VMOV            S0, R3
VLDR            S1, [SP,#0xD0+var_A8]
ADD             R12, R7, R8
LDR             R0, [R4,#8]
RSB             R2, R12, R12,LSL#4
ADD             R6, R2, R12,LSL#5
VCVT.F32.U32    S0, S0
LDR             R3, =0x19C98
LDR             R1, [R4,#4]
LDRSH           R0, [R0]
LDR             R2, =0x21218
RSB             R12, R12, R12,LSL#3
ADD             R3, R3, R6,LSL#2
CMP             R0, #0x17
ADD             R2, R2, R12,LSL#3
CMPNE           R0, #0x18
VMLS.F32        S1, S0, S18
ADD             R10, R1, R3
ADD             R6, R1, R2
BEQ             loc_1A9F40
VLDR            S3, [SP,#0xD0+var_CC]
VLDR            S2, [SP,#0xD0+var_C8]
VLDR            S0, [SP,#0xD0+var_C4]
VSTR            S3, [R6,#0x28]
VSTR            S2, [R6,#0x2C]
VSTR            S0, [R6,#0x30]
VLDR            S0, [R6,#0x28]
VLDR            S2, [SP,#0xD0+var_A4]
VMLA.F32        S0, S2, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S2, [SP,#0xD0+var_B0]
VMLA.F32        S0, S2, S1
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R9,#0x1B0]
VMUL.F32        S0, S0, S20
BL              sub_464380
VLDR            S2, [R9,#0x1D8]
VMOV            S1, R8
VSTR            S17, [R6,#0x10]
VADD.F32        S2, S2, S19
VSTR            S17, [R6,#0x14]
VCVT.F32.U32    S1, S1
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S21
VSTR            S0, [R6,#0x18]
VLDR            S0, [R9,#0x1E0]
VMLA.F32        S0, S1, S19
VMUL.F32        S0, S0, S20
BL              sub_464380
VMUL.F32        S0, S0, S24
VLDR            S1, [R6,#0x18]
VMLA.F32        S1, S0, S21
VSTR            S1, [R6,#0x18]
BL              sub_4635D8
VLDM            R0, {S0-S2}
ADD             R6, R6, #0x1C
VSTM            R6, {S0-S2}
VLDR            S0, [R9,#0x1E0]
LDR             R0, [R10,#0xA4]
LDRH            R1, [R10,#0xB8]
VMUL.F32        S0, S0, S23
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
UXTH            R0, R0
VCVT.U32.F32    S0, S0
VMOV            R1, S0
ADD             R1, R1, R8
ADD             R1, R1, #4
AND             R1, R1, #7
ADD             R1, R1, #6
CMP             R1, R0
BEQ             loc_1A9EEC
LDR             R0, [R10]
VMOV.F32        S0, S25
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R0, R10
BLX             R12
LDRH            R1, [R11,#0xB4]
ADD             R0, R8, #1
UXTH            R8, R0
SUB             R0, R1, #1
CMP             R0, R8
BLE             loc_1A9F98
CMP             R8, #0
BEQ             loc_1A9D98
B               loc_1A9DA8
ADD             R0, R4, #0x1000
VLDR            S0, =45.0
VLDR            S3, [R0,#0x1E0]
VLDR            S2, =0.0
VLDR            S1, =360.0
VSUB.F32        S0, S3, S0
VSTR            S0, [R0,#0x1E0]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S1
BCS             loc_1A9D3C
B               loc_1A9D38
VADD.F32        S0, S1, S18
VLDR            S2, [R9,#0x1BC]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLT             loc_1A9F6C
LDR             R0, [R10]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R10
BLX             R2
B               loc_1A9EEC
CMP             R0, #0x17
CMPNE           R0, #0x18
BNE             loc_1A9DFC
VLDR            S0, [R9,#0x1C4]
VLDR            S2, [R9,#0x1C0]
VLDR            S3, [R9,#0x1C8]
VADD.F32        S0, S0, S22
VSTR            S2, [R6,#0x28]
VSTR            S0, [R6,#0x2C]
VSTR            S3, [R6,#0x30]
B               loc_1A9E14
ADD             R8, R4, #0x1000
VLDR            S1, =0.71111
VLDR            S0, [R8,#0x1B0]
LDRH            R0, [R11,#0xB4]
LDR             R2, =0x211E0
VMUL.F32        S0, S0, S1
ADD             R1, R0, R7
LDR             R0, [R4,#4]
RSB             R1, R1, R1,LSL#3
ADD             R1, R2, R1,LSL#3
ADD             R6, R1, R0
BL              sub_464380
VLDR            S1, [R8,#0x1D8]
VLDR            S3, =60.0
VLDR            S2, =25.0
ADD             R0, R8, #0x1C0
VADD.F32        S1, S1, S3
VMLA.F32        S2, S16, S18
LDM             R0, {R0-R2}
ADD             R3, R6, #0x28 ; '('
STM             R3, {R0-R2}
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S0, S16
VMOV            S0, R1
VADD.F32        S0, S0, S2
VLDR            S2, =0.017453
VMUL.F32        S1, S1, S2
VSTR            S0, [R6,#0x2C]
VLDR            S0, =0.0
VSTR            S0, [R6,#0x10]
ADD             R6, R6, #0x14
VMUL.F32        S1, S1, S16
VSTM            R6, {S0-S1}
LDR             R0, [R4,#8]
LDRSH           R1, [R0]
CMP             R1, #0x15
CMPNE           R1, #0x17
BEQ             loc_1AA050
CMP             R1, #0x1B
BNE             loc_1AA14C
ADD             R0, R0, #6
BL              sub_45AAB8
LDR             R1, =0x3E99999A
VMOV            R0, S0
CMP             R0, R1
BGE             loc_1AA14C
ADD             R8, R8, #0x1C0
VLDR            S0, =1.0
LDM             R8, {R0-R2}
LDR             R7, [R4,#4]
VMOV            S1, R2
ADD             R4, R7, #0x23000
ADD             R4, R4, #0x470
ADD             R3, R4, #0x28 ; '('
ADD             R6, R7, #0x20C00
STM             R3, {R0-R2}
VSUB.F32        S0, S1, S0
ADD             R7, R7, #0x20C00
ADD             R6, R6, #0x3E4
ADD             R7, R7, #0x328
VSTR            S0, [R4,#0x30]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x18]
ADD             R4, R4, #0x10
MOV             R0, R6
STM             R4, {R1,R2}
LDR             R1, =0x3046
BL              sub_543494
NOP
NOP
B               loc_1AA104
DCFS 45.0
DCD 0x43B40000
DCFS 50.0
DCFS 0.02
DCFS 75.0
DCFS 0.71111
DCFS 60.0
DCFS 0.022222
DCFS 3.0
DCFS 0.0
DCFS 0.017453
DCD 0x19C98
DCD 0x21218
DCD 0x211E0
DCFS 25.0
DCD 0x3E99999A
DCFS 1.0
DCD 0x3046
LDR             R0, [R6]
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #4
MOV             R0, R6
BLX             R12
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDR             R0, [R7]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R7
B               loc_1AA180
LDR             R4, [R4,#4]
ADD             R0, R4, #0x20C00
ADD             R0, R0, #0x3E4
ADD             R4, R4, #0x20C00
LDR             R1, [R0]
ADD             R4, R4, #0x328
LDR             R2, [R1,#0x44]
MOV             R1, #0
BLX             R2
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
B               def_1A9C1C; jumptable 001A9C1C default case, cases 4,5,7-11
LDR             R0, [R4,#8]; jumptable 001A9C1C cases 12-17
LDRSH           R0, [R0]
CMP             R0, #0x22 ; '"'
CMPNE           R0, #0x24 ; '$'
CMPNE           R0, #0x25 ; '%'
BEQ             loc_1AA1AC
CMP             R0, #0x26 ; '&'
BEQ             loc_1AA28C
B               loc_1AA1DC
ADD             R0, R4, #0x1000
VLDR            S0, =45.0
VLDR            S2, [R0,#0x1E0]
LDR             R2, =0x43B40000
VLDR            S1, =360.0
VADD.F32        S0, S0, S2
VMOV            R1, S0
VSTR            S0, [R0,#0x1E0]
CMP             R1, R2
VSUBGT.F32      S0, S0, S1
BLE             loc_1AA1DC
VSTR            S0, [R0,#0x1E0]
ADD             R0, R4, #0x1100
STR             R0, [SP,#0xD0+var_A0]
LDRH            R0, [R0,#0xB4]
MOV             R8, #0
CMP             R0, #0
BLS             loc_1AA414
ADD             R0, R4, #0x1000
STR             R0, [SP,#0xD0+var_94]
VLDR            S19, =3.1416
VLDR            S21, =0.022222
VLDR            S18, =50.0
VLDR            S17, =0.0
VLDR            S22, =2.0
VLDR            S20, =0.017453
ADD             R11, R4, #0x3800
ADD             R0, R4, #0x3800
ADD             R11, R11, #0x1A8
STR             R0, [SP,#0xD0+var_90]
LDR             R0, [R4,#8]
LDRH            R0, [R0]
CMP             R0, #0x17
BEQ             loc_1AA3FC
ADD             R2, R8, #1
VMOV            S0, R2
VLDR            S16, [SP,#0xD0+var_A8]
ADD             R12, R7, R8
LDR             R0, [R4,#8]
RSB             R3, R12, R12,LSL#4
ADD             R6, R3, R12,LSL#5
VCVT.F32.U32    S0, S0
LDR             R2, =0x19C98
LDR             R1, [R4,#4]
LDRSH           R0, [R0]
LDR             R3, =0x21218
RSB             R12, R12, R12,LSL#3
ADD             R2, R2, R6,LSL#2
CMP             R0, #0x24 ; '$'
ADD             R3, R3, R12,LSL#3
CMPNE           R0, #0x25 ; '%'
VMLS.F32        S16, S0, S18
ADD             R9, R1, R2
ADD             R6, R1, R3
BNE             loc_1AA2FC
B               loc_1AA2C8
ADD             R0, R4, #0x1000
VLDR            S0, =45.0
VLDR            S3, [R0,#0x1E0]
VLDR            S2, =0.0
VLDR            S1, =360.0
VSUB.F32        S0, S3, S0
VSTR            S0, [R0,#0x1E0]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S1
BCS             loc_1AA1DC
B               loc_1AA1D8
CMP             R8, #0
BEQ             loc_1AA224
B               loc_1AA234
VADD.F32        S0, S16, S18
LDR             R0, [SP,#0xD0+var_94]
VLDR            S1, [R0,#0x1BC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1AA2FC
LDR             R0, [R9]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
CMP             R8, #8
BNE             loc_1AA3FC
ADD             R0, SP, #0xD0+var_CC
VLDR            S0, [SP,#0xD0+var_C4]
VLDM            R0, {S1-S2}
ADD             R0, R6, #0x28 ; '('
VSTR            S0, [R6,#0x30]
VMOV.F32        S0, S1
VSTM            R0, {S1-S2}
VLDR            S1, [SP,#0xD0+var_A4]
VMLA.F32        S0, S1, S16
VSTR            S0, [R6,#0x28]
VMOV.F32        S0, S2
VLDR            S1, [SP,#0xD0+var_B0]
VMLA.F32        S0, S1, S16
VSTR            S0, [R6,#0x2C]
LDR             R0, [R4,#8]
LDR             R10, [R11]
LDRSH           R0, [R0]
LDR             R0, [R10]
LDR             R1, [R0,#8]
MOV             R0, R10
BLX             R1
LDR             R1, [SP,#0xD0+var_90]
VMOV.F32        S0, S19
CMP             R0, #8
LDRBEQ          R0, [R10,#0xAAC]
VLDR            S2, [R1,#0x18C]
CMPEQ           R0, #3
VMLA.F32        S0, S2, S20
LDREQ           R0, [R10,#0xAA8]
MOVNE           R0, #0
VLDR            S1, [R0,#0x23C]
VSTR            S17, [R6,#0x10]
VSTR            S17, [R6,#0x14]
VADD.F32        S0, S1, S0
VSTR            S0, [R6,#0x18]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R6,#0x24]
ADD             R6, R6, #0x1C
STM             R6, {R1,R2}
LDR             R0, [SP,#0xD0+var_94]
LDRH            R1, [R9,#0xB8]
VLDR            S0, [R0,#0x1E0]
LDR             R0, [R9,#0xA4]
VMUL.F32        S0, S0, S21
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
UXTH            R0, R0
VCVT.U32.F32    S0, S0
VMOV            R2, S0
ADD             R2, R2, R8
ADD             R2, R2, #4
AND             R1, R2, #7
ADD             R1, R1, #6
CMP             R1, R0
BEQ             loc_1AA3FC
LDR             R0, [R9]
VMOV.F32        S0, S22
MOV             R3, #0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R0, R9
BLX             R12
LDR             R0, [SP,#0xD0+var_A0]
ADD             R1, R8, #1
UXTH            R8, R1
LDRH            R0, [R0,#0xB4]
CMP             R0, R8
BHI             loc_1AA2BC
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
LDR             R0, =0x39A8
LDR             R6, [R0,R4]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R6,#0xAAC]
LDR             R1, [R4,#8]
LDR             R2, [R4,#4]
CMPEQ           R0, #3
LDREQ           R8, [R6,#0xAA8]
LDRSH           R0, [R1]
MOVNE           R8, #0
ADD             R6, R2, #0x23000
CMP             R0, #0x22 ; '"'
ADD             R7, R2, #0x20C00
CMPNE           R0, #0x24 ; '$'
ADD             R6, R6, #0x470
ADD             R7, R7, #0x3E4
BEQ             loc_1AA490
CMP             R0, #0x26 ; '&'
BNE             loc_1AA59C
ADD             R0, R1, #6
BL              sub_45AAB8
LDR             R1, =0x3E99999A
VMOV            R0, S0
CMP             R0, R1
BGE             loc_1AA59C
LDR             R0, [R7]
LDR             R1, [R0,#0x48]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BNE             loc_1AA67C
B               loc_1AA4BC
DCFS 2.0
DCFS 360.0
DCFS 3.1416
DCD 0x39A8
LDR             R0, [SP,#0xD0+var_A0]
LDRH            R0, [R0,#0xB4]
CMP             R0, #8
BCC             loc_1AA4FC
LDR             R0, [SP,#0xD0+var_84]
LDR             R2, =0x213D8
LDR             R1, [R4,#4]
ADD             R0, R2, R0,LSL#3
ADD             R0, R0, R1
ADD             R1, R0, #0x28 ; '('
LDR             R0, [R0,#0x30]
LDM             R1, {R1,R2}
STR             R0, [R6,#0x30]
ADD             R0, R6, #0x28 ; '('
STM             R0, {R1,R2}
B               loc_1AA50C
ADD             R3, SP, #0xD0+var_CC
LDM             R3, {R0-R2}
ADD             R3, R6, #0x28 ; '('
STM             R3, {R0-R2}
ADD             R3, SP, #0xD0+var_CC
VLDR            S0, =-0.1
LDM             R3, {R0-R2}
ADD             R3, R6, #0x28 ; '('
VLDR            S2, =3.1416
STM             R3, {R0-R2}
ADD             R0, R6, #0x14
VSTR            S0, [R6,#0x30]
VLDR            S1, [R8,#0x23C]
VLDR            S0, =0.0
VADD.F32        S1, S1, S2
VSTR            S0, [R6,#0x10]
VSTM            R0, {S0-S1}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R6,#0x24]
ADD             R6, R6, #0x1C
MOV             R0, R7
STM             R6, {R1,R2}
LDR             R1, =0x3046
BL              sub_543494
LDR             R0, [R7]
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R1, #0xA
MOV             R0, R7
BLX             R12
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
B               loc_1AA67C
LDR             R0, [R4,#8]
LDRH            R0, [R0]
CMP             R0, #0x25 ; '%'
BNE             loc_1AA67C
LDR             R0, [R7,#0xA4]
LDRH            R1, [R7,#0xB8]
VLDR            S0, [SP,#0xD0+var_A8]
VLDR            S1, =500.0
LDRB            R0, [R0,#0x6C]
MOV             R3, #0
VSUB.F32        S16, S0, S1
SUB             R0, R0, R1
VLDR            S0, =2.0
SXTH            R0, R0
CMP             R0, #0xD
SUBNE           R0, R0, #5
MOVEQ           R0, #0
ADD             R0, R0, #6
MOV             R2, R3
SXTH            R1, R0
LDR             R0, [R7]
LDR             R12, [R0,#0x3C]
MOV             R0, R7
BLX             R12
VLDR            S0, =50.0
ADD             R0, R4, #0x1000
VADD.F32        S2, S16, S0
VLDR            S1, [R0,#0x1BC]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1AA630
LDR             R0, [R7]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
B               loc_1AA67C
LDR             R0, [SP,#0xD0+var_84]
LDR             R2, =0x213D8
LDR             R1, [R4,#4]
ADD             R3, R6, #0x28 ; '('
ADD             R0, R2, R0,LSL#3
ADD             R0, R0, R1
ADD             R1, R0, #0x28 ; '('
LDR             R0, [R0,#0x30]
LDM             R1, {R1,R2}
STR             R0, [R6,#0x30]
VMOV            S1, R1
STM             R3, {R1,R2}
VLDR            S2, [SP,#0xD0+var_A4]
VMLS.F32        S1, S2, S0
VSTR            S1, [R6,#0x28]
VMOV            S1, R2
VLDR            S2, [SP,#0xD0+var_B0]
VMLS.F32        S1, S2, S0
VSTR            S1, [R6,#0x2C]
LDR             R0, [R4,#8]
LDRH            R1, [R0]
LDR             R0, [R4,#4]
CMP             R1, #0x25 ; '%'
ADD             R1, R0, #0x23400
ADD             R1, R1, #0xA8
BNE             def_1A9C1C; jumptable 001A9C1C default case, cases 4,5,7-11
ADD             R0, R0, #0x23000
ADD             R0, R0, #0x470
LDRD            R2, R3, [R0,#0x28]
LDR             R0, [R0,#0x30]
STR             R0, [R1,#0x30]
STRD            R2, R3, [R1,#0x28]
B               def_1A9C1C; jumptable 001A9C1C default case, cases 4,5,7-11
LDR             R0, [R4,#8]; jumptable 001A9C1C cases 18-24
LDRSH           R0, [R0]
CMP             R0, #0x2A ; '*'
CMPNE           R0, #0x2C ; ','
BNE             loc_1AA6E8
LDR             R0, [R4,#4]
ADD             R1, R4, #0x3800
VLDR            S0, =135.0
VLDR            S2, [R1,#0x234]
VLDR            S1, [R0,#0x10C]
VADD.F32        S1, S1, S2
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x2C]
LDR             R1, [R4,#8]
LDRSH           R0, [R1]
CMP             R0, #0x2D ; '-'
CMPNE           R0, #0x2B ; '+'
BNE             loc_1AA740
ADD             R0, R1, #6
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S3, =1.0
ADD             R0, R4, #0x3800
VLDR            S1, =135.0
VSUB.F32        S0, S3, S0
VLDR            S2, [R0,#0x234]
LDR             R1, [R4,#4]
VMLA.F32        S1, S2, S0
VLDR            S0, [R1,#0x10C]
VADD.F32        S0, S1, S0
VSTR            S0, [R5,#0x2C]
ADD             R0, R4, #0x3800
VLDR            S3, =75.0
VLDR            S0, [R0,#0x220]
VLDR            S1, [R0,#0x21C]
VLDR            S2, [R0,#0x224]
VADD.F32        S0, S0, S3
ADD             R0, R5, #0x28 ; '('
VLDR            S22, =23.0
VLDM            R0, {S3-S5}
VSUB.F32        S1, S1, S3
VSUB.F32        S20, S2, S5
VSUB.F32        S0, S0, S4
VMOV.F32        S18, S1
VSUB.F32        S19, S0, S22
VNEG.F32        S0, S20
BL              sub_4645C0
VLDR            S16, =1.4062
VLDR            S17, =0.0
VMUL.F32        S26, S0, S16
VCMPE.F32       S26, S17
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S18
VLDRCC          S0, =360.0
VADDCC.F32      S26, S26, S0
VMOV.F32        S0, S19
VCMPE.F32       S1, S17
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S1, S1
BL              sub_4645C0
VMUL.F32        S16, S0, S16
ADD             R9, R4, #0x3A00
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
VCMPE.F32       S18, S17
VLDRCC          S0, =360.0
VADDCC.F32      S16, S16, S0
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S0, S18, S18
VLDR            S2, =1.0
VLDR            S3, =60.0
VNEGCC.F32      S16, S16
VMLA.F32        S0, S19, S19
VMLA.F32        S0, S20, S20
VSQRT.F32       S1, S0
VDIV.F32        S0, S2, S1
VSUB.F32        S1, S1, S3
VLDR            S2, =0.025
VMUL.F32        S21, S19, S0
VMUL.F32        S20, S20, S0
VMUL.F32        S19, S18, S0
VLDR            S0, =0.9
VSUB.F32        S1, S1, S22
VMLA.F32        S0, S1, S2
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTB            R6, R0
LDRSB           R0, [R9,#0x83]
MOV             R11, R6
CMP             R0, R6
LDRGT           R10, =0x19C98
BLE             loc_1AA87C
ADD             R0, R7, R6
LDR             R1, [R4,#4]
RSB             R2, R0, R0,LSL#4
ADD             R0, R2, R0,LSL#5
ADD             R0, R10, R0,LSL#2
ADD             R8, R1, R0
LDR             R1, =0x3046
MOV             R0, R8
BL              sub_543494
LDR             R0, [R8]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R8
BLX             R2
LDRSB           R0, [R9,#0x83]
ADD             R6, R6, #1
CMP             R0, R6
BGT             loc_1AA834
LDR             R0, =0x3A83
CMP             R11, #0
MOV             R6, #0
STRB            R11, [R0,R4]
BLE             def_1A9C1C; jumptable 001A9C1C default case, cases 4,5,7-11
LDR             R10, =0x19C98
VLDR            S2, =0.0027778
VLDR            S0, =10.5
VLDR            S3, =8.0
VMUL.F32        S2, S26, S2
VLDR            S1, =4.0
VLDR            S4, =0.017453
LDR             R11, =0x21218
VLDR            S24, =40.0
VMUL.F32        S16, S16, S4
VLDR            S27, =2.0
VLDR            S23, =10.0
VLDR            S25, =26.0
VMLS.F32        S0, S2, S3
VADD.F32        S0, S0, S1
VCVT.U32.F32    S18, S0
ADD             R1, R7, R6
RSB             R3, R1, R1,LSL#4
RSB             R2, R1, R1,LSL#3
ADD             R1, R3, R1,LSL#5
B               loc_1AA948
DCD 0x213D8
DCFS -0.1
DCFS 0.0
DCFS 500.0
DCFS 50.0
DCFS 135.0
DCFS 90.0
DCFS 0.71111
DCFS 1.0
DCFS 75.0
DCFS 23.0
DCFS 1.4062
DCFS 60.0
DCFS 0.025
DCFS 0.9
DCD 0x3A83
DCFS 0.0027778
DCFS 10.5
DCFS 8.0
DCFS 4.0
DCFS 0.017453
DCFS 40.0
DCFS 2.0
DCFS 10.0
DCFS 26.0
VMOV            S0, R6
VLDR            S4, [R5,#0x2C]
VLDR            S5, [R5,#0x28]
LDR             R0, [R4,#4]
ADD             R1, R10, R1,LSL#2
ADD             R2, R11, R2,LSL#3
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S23
ADD             R8, R0, R1
ADD             R0, R0, R2
ADD             R1, R0, #0x28 ; '('
VMLA.F32        S0, S1, S24
VADD.F32        S0, S0, S25
VMUL.F32        S2, S21, S0
VMUL.F32        S3, S20, S0
VMUL.F32        S1, S19, S0
VLDR            S0, [R5,#0x30]
VADD.F32        S2, S4, S2
VADD.F32        S3, S0, S3
VADD.F32        S1, S5, S1
VADD.F32        S0, S2, S22
VSTM            R1, {S1-S3}
MOV             R1, #1
VSTR            S0, [R0,#0x2C]
VSTR            S17, [R0,#0x10]
VSTR            S17, [R0,#0x14]
VSTR            S16, [R0,#0x18]
LDR             R0, [R8]
LDR             R2, [R0,#0x44]
MOV             R0, R8
BLX             R2
LDR             R1, =0x305C
MOV             R0, R8
BL              sub_543494
VMOV            R0, S18
VMOV.F32        S0, S27
MOV             R3, #0
AND             R1, R0, #7
LDR             R0, [R8]
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R0, R8
BLX             R12
LDRSB           R0, [R9,#0x83]
ADD             R6, R6, #1
CMP             R0, R6
BGT             loc_1AA8D0
B               def_1A9C1C; jumptable 001A9C1C default case, cases 4,5,7-11
ADD             R0, R4, #0x3800; jumptable 001A9C1C cases 25-28
VLDR            S1, =75.0
VLDR            S0, [R0,#0x220]
VLDR            S19, [R0,#0x21C]
VLDR            S18, [R0,#0x224]
VADD.F32        S20, S0, S1
VLDR            S0, [R5,#0x2C]
VLDR            S1, [R5,#0x28]
VLDR            S2, [R5,#0x30]
VSUB.F32        S1, S19, S1
VSUB.F32        S21, S18, S2
VLDR            S2, =23.0
VSUB.F32        S0, S20, S0
VMOV.F32        S16, S1
VSUB.F32        S17, S0, S2
VNEG.F32        S0, S21
BL              sub_4645C0
VLDR            S22, =1.4062
VLDR            S24, =0.0
VMUL.F32        S30, S0, S22
VCMPE.F32       S30, S24
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S16
VLDRCC          S0, =360.0
VADDCC.F32      S30, S30, S0
VMOV.F32        S0, S17
VCMPE.F32       S1, S24
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S1, S1
BL              sub_4645C0
VMUL.F32        S29, S0, S22
ADD             R9, R4, #0x3A00
ADD             R1, R4, #0x3A00
LDRSB           R0, [R9,#0x82]
ADD             R1, R1, #0x82
MOV             R2, #6
VCMPE.F32       S29, S24
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =1.0
VLDRCC          S0, =360.0
VADDCC.F32      S29, S29, S0
VMUL.F32        S0, S16, S16
VMLA.F32        S0, S17, S17
VMLA.F32        S0, S21, S21
VSQRT.F32       S1, S0
VDIV.F32        S0, S2, S1
VLDR            S1, =3.0
VMOV.F32        S2, S1
VMUL.F32        S25, S16, S0
VMUL.F32        S23, S17, S0
VMUL.F32        S22, S21, S0
VMOV            S0, R0
VLDR            S17, =180.0
ADD             R0, R0, #1
SXTB            R0, R0
STRB            R0, [R1]
VCVT.F32.S32    S3, S0
VDIV.F32        S0, S3, S2
VLDR            S2, =110.0
VMLS.F32        S17, S0, S2
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S2, =70.0
VLDR            S1, =0.019231
VLDR            S0, =0.9
VSUB.F32        S2, S17, S2
STRBCC          R2, [R1]
VMLA.F32        S0, S2, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R8, R0, #0xFF
LDRSB           R0, [R9,#0x83]
MOV             R10, R8
CMP             R0, R8
LDRGT           R11, =0x19C98
BLE             loc_1AAB88
ADD             R0, R7, R8
LDR             R1, [R4,#4]
RSB             R2, R0, R0,LSL#4
ADD             R0, R2, R0,LSL#5
ADD             R0, R11, R0,LSL#2
ADD             R6, R1, R0
LDR             R1, =0x3046
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDRSB           R0, [R9,#0x83]
ADD             R8, R8, #1
CMP             R0, R8
BGT             loc_1AAB40
LDR             R0, =0x3A83
CMP             R10, #0
MOV             R6, #0
STRB            R10, [R0,R4]
BLE             def_1A9C1C; jumptable 001A9C1C default case, cases 4,5,7-11
LDR             R8, =0x19C98
VLDR            S1, =0.0027778
VLDR            S3, =8.0
VLDR            S0, =10.5
VMUL.F32        S1, S30, S1
VLDR            S2, =4.0
VLDR            S4, =0.017453
LDR             R11, =0x21218
VLDR            S31, =2.0
VMUL.F32        S16, S29, S4
VLDR            S26, =10.0
VLDR            S27, =26.0
VLDR            S28, =52.0
VMLS.F32        S0, S1, S3
VADD.F32        S0, S0, S2
VCVT.U32.F32    S21, S0
ADD             R1, R7, R6
LDR             R0, [R4,#4]
RSB             R2, R1, R1,LSL#3
RSB             R3, R1, R1,LSL#4
ADD             R1, R3, R1,LSL#5
VMOV.F32        S4, S26
ADD             R1, R8, R1,LSL#2
ADD             R9, R0, R1
ADD             R1, R6, #1
VMOV            S0, R1
VNEG.F32        S3, S22
VNEG.F32        S1, S25
VNEG.F32        S2, S23
ADD             R2, R11, R2,LSL#3
ADD             R0, R0, R2
VCVT.F32.S32    S0, S0
VSTR            S24, [R0,#0x10]
VSTR            S24, [R0,#0x14]
VSTR            S16, [R0,#0x18]
ADD             R1, R0, #0x28 ; '('
MOV             R0, R9
VMLA.F32        S4, S0, S28
VSUB.F32        S0, S4, S27
VSUB.F32        S4, S17, S0
VMUL.F32        S3, S3, S4
VMUL.F32        S1, S1, S4
VMUL.F32        S2, S2, S4
VADD.F32        S3, S18, S3
VADD.F32        S1, S19, S1
VADD.F32        S2, S20, S2
VSTM            R1, {S1-S3}
LDR             R1, =0x305C
BL              sub_543494
VMOV            R0, S21
VMOV.F32        S0, S31
MOV             R3, #0
AND             R1, R0, #7
LDR             R0, [R9]
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R0, R9
BLX             R12
LDR             R0, [R9]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R9
BLX             R2
ADD             R6, R6, #1
CMP             R6, R10
BLT             loc_1AABDC
VLDR            S0, =1.0; jumptable 001A9C1C default case, cases 4,5,7-11
VSTR            S0, [R5,#4]
VSTR            S0, [R5,#8]
ADD             SP, SP, #0x6C ; 'l'
VPOP            {D8-D15}
POP             {R4-R11,PC}
