PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R0, R0, #0x1000
ADD             R0, R0, #0x1E4
MOV             R6, R1
VPUSH           {D8-D12}
SUB             SP, SP, #0xC
STR             R0, [SP,#0x58+var_58]
BL              sub_45AA4C
ADD             R0, R5, #0x1000
ADD             R0, R0, #0x1F4
STR             R0, [SP,#0x58+var_54]
BL              sub_45AA4C
LDR             R0, [R5,#8]
ADD             R4, R5, #0x1000
VLDR            S22, [R4,#0x198]
LDRSH           R0, [R0]
CMP             R0, #0x32; switch 50 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
DCD loc_1A72E0; jump table for switch statement
LDR             R0, [R5,#8]; jumptable 001A7210 case 0
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD4]
CMP             R1, #0
SUBNE           R1, R1, #1
STRHNE          R1, [R0,#0xD4]
BNE             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R5,#8]
MOV             R0, #9
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xD4]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
LDRH            R6, [R0,#0xD2]
CMP             R6, #0
BEQ             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
LDR             R0, =dword_6D1F40
MOV             R7, #0
BL              sub_546DB0
LDR             R1, =byte_68DBBC
MUL             R0, R0, R6
MOV             R6, #0
LDRB            R2, [R1]
MOV             R0, R0,LSR#16
CMP             R2, #0
LDRHI           R2, [R5,#8]
BLS             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
ADD             R3, R6, #0x400
ADD             R3, R3, #0xD6
LDRB            R3, [R2,R3]
CMP             R3, #0
BEQ             loc_1A7380
LDRB            R3, [R1]
ADD             R12, R6, #1
UXTH            R6, R12
CMP             R6, R3
BCC             loc_1A7354
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
CMP             R7, R0
ADDNE           R3, R7, #1
UXTHNE          R7, R3
BNE             loc_1A7368
LDR             R2, =0x19C98
RSB             R0, R6, R6,LSL#4
LDR             R1, [R5,#4]
ADD             R3, R0, R6,LSL#5
LDR             R0, =dword_6D1F40
ADD             R2, R2, R3,LSL#2
ADD             R7, R1, R2
BL              sub_546DB0
LDR             R2, =unk_68D002
MOV             R0, R0,LSL#2
RSB             R1, R6, R6,LSL#4
MOV             R9, #1
ADD             R0, R9, R0,LSR#16
ADD             R1, R2, R1,LSL#1
ADD             R0, R1, R0,LSL#1
LDRH            R8, [R0,#8]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R0, [R7]
VLDR            S0, =2.0
MOV             R3, R9
MOV             R2, #0
LDR             R12, [R0,#0x3C]
MOV             R1, R8
MOV             R0, R7
BLX             R12
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD2]
SUB             R1, R1, #1
STRH            R1, [R0,#0xD2]
LDR             R0, [R5,#8]
ADD             R1, R6, #0x400
ADD             R1, R1, #0xD6
STRB            R9, [R0,R1]
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
LDR             R0, [R5,#4]; jumptable 001A7210 cases 1,3,4
VLDR            S3, =0.0023579
VMOV.F32        S0, S22
VLDR            S1, =360.0
VLDR            S2, [R0,#0x108]
VLDR            S4, [R0,#0x118]
LDR             R1, =0x43B40000
VSUB.F32        S2, S2, S4
VMUL.F32        S2, S2, S3
VMLS.F32        S0, S2, S1
VLDR            S2, =0.0
VMOV            R0, S0
VSTR            S0, [R4,#0x198]
CMP             R0, R1
VSUBGT.F32      S0, S0, S1
VSTRGT          S0, [R4,#0x198]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BCS             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
B               loc_1A7554
LDR             R0, [R5,#4]; jumptable 001A7210 case 2
LDR             R1, =0x19C69
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_1A74D8
VLDR            S0, [R0,#0x11C]
VLDR            S5, [R0,#0x10C]
VLDR            S4, =0.0023579
ADD             R1, R0, #0x400
VSUB.F32        S5, S0, S5
VLDR            S1, =12.0
VLDR            S0, [R1,#0xC4]
VLDR            S3, =360.0
VLDR            S2, =35.925
VSUB.F32        S1, S0, S1
CMP             R6, #0
VMUL.F32        S4, S5, S4
VDIV.F32        S0, S1, S2
VLDRNE          S1, =-1.0
VLDREQ          S1, =1.0
VMUL.F32        S3, S4, S3
VMUL.F32        S2, S3, S1
VMOV.F32        S1, S22
VMLA.F32        S1, S2, S0
VSTR            S1, [R4,#0x198]
B               loc_1A750C
VLDR            S1, [R0,#0x11C]
VLDR            S2, [R0,#0x10C]
VLDR            S0, =0.0023579
VLDR            S3, =360.0
VSUB.F32        S1, S1, S2
CMP             R6, #0
VMUL.F32        S0, S1, S0
VLDRNE          S1, =-1.0
VLDREQ          S1, =1.0
VMUL.F32        S2, S0, S3
VMOV.F32        S0, S22
VMLA.F32        S0, S2, S1
VSTR            S0, [R4,#0x198]
VLDR            S3, [R0,#0x108]
VLDR            S4, [R0,#0x118]
VLDR            S2, =0.0023579
VLDR            S0, [R4,#0x198]
VSUB.F32        S3, S3, S4
VLDR            S1, =360.0
LDR             R1, =0x43B40000
VMUL.F32        S2, S3, S2
VMLS.F32        S0, S2, S1
VLDR            S2, =0.0
VMOV            R0, S0
VSTR            S0, [R4,#0x198]
CMP             R0, R1
VSUBGT.F32      S0, S0, S1
VSTRGT          S0, [R4,#0x198]
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BCS             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x198]
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VLDR            S0, [R4,#0x1E0]; jumptable 001A7210 cases 18,19
VLDR            S1, =36.0
LDR             R1, =0x43B40000
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [R4,#0x1E0]
CMP             R0, R1
BLE             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
B               loc_1A77AC
VLDR            S2, [R4,#0x1B8]; jumptable 001A7210 case 23
VLDR            S1, =1.0
VLDR            S0, =40.0
VLDR            S17, =0.71111
VSUB.F32        S2, S1, S2
VLDR            S20, =0.0
VLDR            S16, =-75.0
VMUL.F32        S0, S2, S0
VLDR            S2, =0.5
VCVT.U32.F32    S0, S0
VMOV            R0, S0
BIC             R1, R0, #1
VMOV            S3, R1
VMOV            R0, S0
TST             R0, #1
LDR             R0, [R5,#8]
VCVT.F32.U32    S0, S3
LDRSH           R0, [R0,#6]
VMUL.F32        S0, S0, S2
VADDNE.F32      S0, S0, S1
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VSUB.F32        S1, S1, S0
VLDR            S0, =28.0
VDIV.F32        S18, S1, S0
VLDR            S0, [R4,#0x1B0]
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x1D8]
VLDR            S2, =60.0
VLDR            S23, =90.0
VADD.F32        S1, S1, S2
VMOV.F32        S19, S23
VMLA.F32        S19, S0, S1
VMUL.F32        S21, S19, S17
VMOV.F32        S0, S21
BL              sub_464318
VLDR            S24, =-110.0
VMUL.F32        S17, S0, S24
VMOV.F32        S0, S21
BL              sub_464380
LDR             R0, =byte_68DBBC
VMLA.F32        S16, S0, S24
LDRB            R1, [R0]
AND             R6, R1, #0xFF
MOV             R11, R1,LSL#1
CMP             R11, R6
BLS             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VADD.F32        S1, S19, S23
VLDR            S0, =0.017453
LDR             R10, =0x21218
VLDR            S21, =-5.0
ADD             R9, R5, #0x1000
ADD             R9, R9, #0x1CC
VMUL.F32        S19, S1, S0
LDR             R0, =byte_68DBBC
LDR             R1, =0x19C98
RSB             R2, R6, R6,LSL#4
ADD             R2, R2, R6,LSL#5
LDRB            R0, [R0]
ADD             R3, R1, R2,LSL#2
VLDR            S2, [R5,#0xC]
LDR             R1, [R5,#4]
RSB             R2, R6, R6,LSL#3
SUB             R0, R6, R0
VADD.F32        S2, S2, S21
UXTH            R0, R0
ADD             R2, R10, R2,LSL#3
ADD             R8, R1, R3
ADD             R1, R1, R2
RSB             R0, R0, R0,LSL#3
VMOV.F32        S1, S18
VMOV.F32        S3, S19
ADD             R2, R5, #0xC
ADD             R0, R2, R0,LSL#2
MOV             R7, R1
VLDR            S0, [R4,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R8]
LDR             R2, [R0,#0x44]
MOV             R0, R8
BLX             R2
VLDR            S2, [R9]
VLDR            S3, [R7,#0x28]
VLDR            S1, [R9,#4]
VADD.F32        S2, S2, S17
VLDR            S0, [R9,#8]
VADD.F32        S1, S1, S16
ADD             R0, R6, #1
VADD.F32        S0, S0, S20
UXTH            R6, R0
CMP             R11, R6
VADD.F32        S2, S3, S2
VSTR            S2, [R7,#0x28]
VLDR            S2, [R7,#0x2C]
VADD.F32        S1, S2, S1
VSTR            S1, [R7,#0x2C]
VLDR            S1, [R7,#0x30]
VADD.F32        S0, S1, S0
VSTR            S0, [R7,#0x30]
BHI             loc_1A7660
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
DCD dword_6D1F40
DCD byte_68DBBC
DCD 0x19C98
DCD unk_68D002
DCFS 2.0
DCFS 0.0023579
DCFS 360.0
DCD 0x43B40000
DCFS 0.0
DCD 0x19C69
DCFS 35.925
DCFS 12.0
DCFS -1.0
DCFS 1.0
DCFS 36.0
DCFS 40.0
DCFS 0.5
DCFS 28.0
DCFS -75.0
DCFS 0.71111
DCFS 60.0
DCFS 90.0
DCFS -110.0
DCFS 0.017453
DCD 0x21218
DCFS -5.0
VLDR            S0, [R4,#0x1E0]; jumptable 001A7210 cases 28,29
VLDR            S1, =36.0
LDR             R1, =0x43B40000
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [R4,#0x1E0]
CMP             R0, R1
BLE             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x1E0]
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
LDR             R0, [R5,#4]; jumptable 001A7210 case 32
VLDR            S1, =0.0
VLDR            S0, [R0,#0x108]
VLDR            S2, [R0,#0x118]
VSUB.F32        S0, S0, S2
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDRNE          S1, [R4,#0x1A0]
VADDNE.F32      S0, S22, S1
BEQ             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VSTR            S0, [R4,#0x198]
LDR             R0, [R5,#8]; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
LDRSH           R1, [R0]
CMP             R1, #0x16
BEQ             loc_1A7E68
BGT             loc_1A7A74
CMP             R1, #0x11
BGE             loc_1A7E68
CMP             R1, #0
CMPNE           R1, #1
BEQ             loc_1A7AA4
CMP             R1, #3
BEQ             loc_1A7BEC
CMP             R1, #4
BEQ             loc_1A7AA4
B               loc_1A7E68
LDR             R0, [R5,#8]; jumptable 001A7210 case 36
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, [R4,#0x1B8]
VLDR            S2, =1.0
LDR             R0, =0x39A8
VSUB.F32        S1, S2, S1
LDR             R6, [R0,R5]
CMP             R6, #0
VSUB.F32        S18, S0, S1
BEQ             loc_1A7878
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #8
BNE             loc_1A7878
LDRB            R0, [R6,#0xAAC]
CMP             R0, #3
LDREQ           R0, [R6,#0xAA8]
BEQ             loc_1A787C
MOV             R0, #0
ADD             R1, R5, #0x3800
VLDR            S23, =90.0
VLDR            S2, [R1,#0x18C]
VLDR            S0, [R0,#0x23C]
VLDR            S1, =57.296
VSUB.F32        S19, S2, S23
VLDR            S16, =-75.0
VMLA.F32        S19, S0, S1
VLDR            S0, =0.71111
VMUL.F32        S20, S19, S0
VMOV.F32        S0, S20
BL              sub_464318
VLDR            S21, =-110.0
VMUL.F32        S17, S0, S21
VMOV.F32        S0, S20
BL              sub_464380
LDR             R0, =byte_68DBBC
VMLA.F32        S16, S0, S21
LDRB            R1, [R0]
AND             R6, R1, #0xFF
MOV             R11, R1,LSL#1
CMP             R11, R6
BLS             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VADD.F32        S0, S19, S23
VLDR            S1, =0.017453
LDR             R10, =0x21218
VLDR            S20, =0.0
VLDR            S21, =-5.0
ADD             R9, R5, #0x1000
ADD             R9, R9, #0x1CC
VMUL.F32        S19, S0, S1
LDR             R0, =byte_68DBBC
LDR             R1, =0x19C98
RSB             R2, R6, R6,LSL#4
ADD             R2, R2, R6,LSL#5
LDRB            R0, [R0]
ADD             R3, R1, R2,LSL#2
VLDR            S2, [R5,#0xC]
LDR             R1, [R5,#4]
RSB             R2, R6, R6,LSL#3
SUB             R0, R6, R0
VADD.F32        S2, S2, S21
UXTH            R0, R0
ADD             R2, R10, R2,LSL#3
ADD             R8, R1, R3
ADD             R1, R1, R2
RSB             R0, R0, R0,LSL#3
VMOV.F32        S1, S18
VMOV.F32        S3, S19
ADD             R2, R5, #0xC
ADD             R0, R2, R0,LSL#2
MOV             R7, R1
VLDR            S0, [R4,#0x198]
ADD             R0, R0, #4
BL              sub_1B6C10
MOV             R1, R0
LDR             R0, [R8]
LDR             R2, [R0,#0x44]
MOV             R0, R8
BLX             R2
VLDR            S2, [R9]
VLDR            S3, [R7,#0x28]
VLDR            S1, [R9,#4]
VADD.F32        S2, S2, S17
VLDR            S0, [R9,#8]
VADD.F32        S1, S1, S16
ADD             R0, R6, #1
VADD.F32        S0, S0, S20
UXTH            R6, R0
CMP             R11, R6
VADD.F32        S2, S3, S2
VSTR            S2, [R7,#0x28]
VLDR            S2, [R7,#0x2C]
VADD.F32        S1, S2, S1
VSTR            S1, [R7,#0x2C]
VLDR            S1, [R7,#0x30]
VADD.F32        S0, S1, S0
VSTR            S0, [R7,#0x30]
BHI             loc_1A78F8
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VMOV.F32        S0, S22; jumptable 001A7210 case 46
ADD             R0, R5, #0x3800
VLDR            S2, =12.0
VLDR            S1, [R0,#0x260]
LDR             R1, =0x43B40000
VMLS.F32        S0, S1, S2
VMOV            R0, S0
VSTR            S0, [R4,#0x198]
CMP             R0, R1
BLE             loc_1A79F0
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x198]
VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VLDR            S1, =360.0
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x198]
B               def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
LDR             R0, [R5,#8]; jumptable 001A7210 case 49
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0,#8]
CMP             R1, R0
BGE             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
VMOV.F32        S0, S22
ADD             R0, R5, #0x3800
VLDR            S2, =-12.0
VLDR            S1, [R0,#0x260]
LDR             R1, =0x43B40000
VMLS.F32        S0, S1, S2
VMOV            R0, S0
VSTR            S0, [R4,#0x198]
CMP             R0, R1
BLE             loc_1A7A58
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x198]
VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDRCC          S1, =360.0
VADDCC.F32      S0, S0, S1
BCS             def_1A7210; jumptable 001A7210 default case, cases 5-17,20-22,24-27,30,31,33-35,37-45,47,48
B               loc_1A77E4
CMP             R1, #0x20 ; ' '
BEQ             loc_1A7AA4
BLT             loc_1A7E68
CMP             R1, #0x2F ; '/'
BEQ             loc_1A7D88
CMP             R1, #0x30 ; '0'
BEQ             loc_1A7E68
CMP             R1, #0x31 ; '1'
BEQ             loc_1A7DC0
CMP             R1, #0x33 ; '3'
BNE             loc_1A7E68
B               loc_1A7D34
ADD             R5, R5, #0x1100
LDRSH           R0, [R5,#0xE6]
LDRSH           R1, [R5,#0xE4]
CMP             R1, R0
BGE             loc_1A7B48
VLDR            S0, [R4,#0x1F0]
VLDR            S1, =0.033333
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
LDR             R0, [SP,#0x58+var_58]
VLDRGT          S16, =1.0
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
LDR             R0, [SP,#0x58+var_58]
BGE             loc_1A7B0C
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VMUL.F32        S0, S0, S16
NOP
B               loc_1A7B44
NOP
BL              sub_45AAB8
VLDR            S17, =0.5
VLDR            S2, =2.0
VLDR            S1, =180.0
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S17
VMLA.F32        S1, S0, S17
VMUL.F32        S0, S1, S16
VSTR            S0, [R4,#0x1EC]
LDRSH           R0, [R5,#0xF4]
LDRSH           R1, [R5,#0xF6]
CMP             R0, R1
BGE             loc_1A7E68
VLDR            S0, [R4,#0x200]
VLDR            S1, =0.086207
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
LDR             R0, [SP,#0x58+var_54]
VLDRGT          S16, =1.0
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
BLT             loc_1A7CCC
LDR             R0, [SP,#0x58+var_54]
BL              sub_45AAB8
VLDR            S17, =0.5
VLDR            S2, =2.0
VLDR            S1, =180.0
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S17
VMLA.F32        S1, S0, S17
VMUL.F32        S0, S1, S16
VSTR            S0, [R4,#0x1FC]
B               loc_1A7E68
DCD 0x39A8
DCFS 57.296
DCFS -12.0
DCFS 0.033333
DCFS 180.0
DCFS 0.086207
DCFS 1.0
DCFS 0.5
DCFS 2.0
DCFS 0.71111
ADD             R5, R5, #0x1100
LDRSH           R0, [R5,#0xE6]
LDRSH           R1, [R5,#0xE4]
CMP             R1, R0
BGE             loc_1A7C90
VLDR            S0, [R4,#0x1F0]
VLDR            S1, =0.033333
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
LDR             R0, [SP,#0x58+var_58]
VLDRGT          S16, =1.0
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
LDR             R0, [SP,#0x58+var_58]
BGE             loc_1A7C54
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VMUL.F32        S0, S0, S16
NOP
B               loc_1A7C8C
NOP
BL              sub_45AAB8
VLDR            S17, =0.5
VLDR            S2, =2.0
VLDR            S1, =180.0
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S17
VMLA.F32        S1, S0, S17
VMUL.F32        S0, S1, S16
VSTR            S0, [R4,#0x1EC]
LDRSH           R0, [R5,#0xF4]
LDRSH           R1, [R5,#0xF6]
CMP             R0, R1
BGE             loc_1A7E68
VLDR            S0, [R4,#0x200]
VLDR            S1, =0.086207
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
LDR             R0, [SP,#0x58+var_54]
VLDRGT          S16, =1.0
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
BGE             loc_1A7CF4
LDR             R0, [SP,#0x58+var_54]
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VMUL.F32        S0, S0, S16
NOP
B               loc_1A7D2C
LDR             R0, [SP,#0x58+var_54]
BL              sub_45AAB8
VLDR            S17, =0.5
VLDR            S1, =2.0
VLDR            S2, =180.0
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S17
VMLA.F32        S1, S0, S17
VMUL.F32        S0, S1, S16
VSTR            S0, [R4,#0x1FC]
B               loc_1A7E68
ADD             R0, R5, #0x1100
LDRSH           R1, [R0,#0xE4]
LDRSH           R0, [R0,#0xE6]
CMP             R0, R1
BLE             loc_1A7E68
VLDR            S0, [R4,#0x1F0]
VLDR            S1, =0.033333
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
LDR             R0, [SP,#0x58+var_58]
VLDRGT          S16, =1.0
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VMUL.F32        S0, S0, S16
VSTR            S0, [R4,#0x1EC]
B               loc_1A7E68
LDRSH           R2, [R0,#6]
LDRSH           R1, [R0,#8]
CMP             R2, R1
BGE             loc_1A7E68
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
NOP
NOP
B               loc_1A7D2C
ADD             R0, R5, #0x1100
LDRSH           R1, [R0,#0xE4]
LDRSH           R0, [R0,#0xE6]
CMP             R1, R0
BGE             loc_1A7E68
ADD             R0, R5, #0x3800
VLDR            S1, =-0.033333
VLDR            S0, [R0,#0x24C]
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
LDR             R0, [SP,#0x58+var_58]
VLDRGT          S16, =1.0
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
LDR             R0, [SP,#0x58+var_58]
BGE             loc_1A7E2C
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VMUL.F32        S0, S0, S16
NOP
B               loc_1A7E64
NOP
BL              sub_45AAB8
VLDR            S17, =0.5
VLDR            S2, =2.0
VLDR            S1, =180.0
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S17
VMLA.F32        S1, S0, S17
VMUL.F32        S0, S1, S16
VSTR            S0, [R4,#0x1EC]
VSTR            S22, [R4,#0x19C]
ADD             SP, SP, #0xC
VPOP            {D8-D12}
POP             {R4-R11,PC}
