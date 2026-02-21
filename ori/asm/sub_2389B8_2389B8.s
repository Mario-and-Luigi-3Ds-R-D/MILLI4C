PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, #0
LDR             R8, =off_6D1648
VPUSH           {D8-D11}
SUB             SP, SP, #0x58
LDR             R0, [R0,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xCA]
LDRH            R6, [R0,#0xC8]
CMP             R1, #0x27 ; '''
BNE             loc_238A04
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_1E32A0
CMP             R0, #0
BNE             loc_239234
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x28; switch 40 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
DCD loc_238AB8; jump table for switch statement
LDR             R1, [R4,#8]; jumptable 00238A10 case 0
LDRSH           R0, [R1,#2]
CMP             R0, #1
CMPNE           R0, #4
BEQ             loc_238B10
CMP             R0, #3
CMPNE           R0, #0x20 ; ' '
CMPNE           R0, #0x26 ; '&'
BEQ             loc_238B10
ADD             R1, R1, #0x400
MOV             R0, #0xFE
STRH            R0, [R1,#0xC8]
LDR             R0, [R4,#8]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
MOV             R1, #0x3C ; '<'
STRH            R2, [R0]
STRH            R1, [R0,#2]
STRB            R3, [R0,#4]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R0, =0x4C8
MOV             R2, #0
STRH            R2, [R0,R1]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
CMP             R0, #0
BEQ             def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R0, [R4,#8]
MOV             R3, #0
MOV             R1, #0x3C ; '<'
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
STRH            R3, [R0]
STRH            R1, [R0,#2]
STRB            R2, [R0,#4]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 1
MOV             R0, #1
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 2
MOV             R0, #2
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 17
MOV             R0, #0x11
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R0, [R4,#4]; jumptable 00238A10 case 19
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]
MOV             R0, #0x13
MOV             R3, #0
ADD             R1, R1, #0x400
MOV             R5, #1
STRH            R0, [R1,#0xC8]
LDR             R0, [R4,#8]
MOV             R2, R3
MOV             R1, #5
ADD             R0, R0, #0x400
ADD             R0, R0, #0xCC
B               loc_238B00
LDR             R1, [R4,#8]; jumptable 00238A10 case 20
MOV             R0, #0x14
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 21
MOV             R0, #0x15
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 23
MOV             R0, #0x17
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 24
MOV             R0, #0x18
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 26
MOV             R0, #0x1A
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 27
MOV             R0, #0x1B
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 29
CMP             R6, #0x27 ; '''
MOV             R0, #0x1D
ADD             R1, R1, #0x400
MOVEQ           R5, #1
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R0, [R8]; jumptable 00238A10 cases 31,36
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x354
BL              sub_5A18EC
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x388
BL              sub_5A18EC
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2EC
BL              sub_5A18EC
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xB20
BL              sub_5A18EC
NOP
NOP
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 32
MOV             R0, #0x20 ; ' '
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 34
MOV             R0, #0x22 ; '"'
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R7, R0, #0x16800
ADD             R7, R7, #0x2EC
MOV             R0, R7
BL              sub_5A18EC
VLDR            S16, =0.0
VSTR            S16, [R7,#0xC]
VSTR            S16, [R7,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R7, R0, #0x16000
ADD             R7, R7, #0xB20
MOV             R0, R7
BL              sub_5A18EC
VSTR            S16, [R7,#0xC]
VSTR            S16, [R7,#4]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R1, [R4,#8]; jumptable 00238A10 case 38
MOV             R0, #0x26 ; '&'
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
B               def_238A10; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
LDR             R0, [R4,#0xAC4]; jumptable 00238A10 case 39
LDR             R5, [R0,#0xAA8]
LDR             R0, [R4,#4]
VLDR            S3, [R5,#0x14]
VLDR            S2, [R0,#0x108]
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R5,#0x18]
VSUB.F32        S16, S2, S3
LDR             R0, [R8]
VSUB.F32        S17, S0, S1
VLDR            S18, [R5,#0x20]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S18
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VLDR            S0, [R5,#0x1C]
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S17
VMOV.F32        S3, S17
VMOV.F32        S2, S16
VMOV.F32        S1, S16
VMOV.F32        S0, S18
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
LDR             R1, [R4,#8]
MOV             R0, #0x27 ; '''
MOV             R5, #1
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xC8]
LDR             R0, [R4,#8]; jumptable 00238A10 default case, cases 3-16,18,22,25,28,30,33,35,37
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xC8]
CMP             R1, R6
BEQ             loc_239234
CMP             R5, #0
BNE             loc_239234
STRH            R6, [R0,#0xCA]
LDR             R0, [R4,#8]
LDR             R1, [R4]
VLDR            S17, =0.0
ADD             R0, R0, #0x400
ADD             R2, SP, #0x90+var_8C
LDRH            R0, [R0,#0xC8]
LDR             R3, [R1,#0x54]
VMOV.F32        S16, S17
AND             R1, R0, #0xFF
MOV             R0, R4
BLX             R3
LDR             R0, [R4,#8]
LDR             R1, [R4]
ADD             R2, SP, #0x90+var_70
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0xCA]
LDR             R3, [R1,#0x54]
AND             R1, R0, #0xFF
MOV             R0, R4
BLX             R3
LDR             R2, [R4,#8]
ADD             R1, R2, #0x400
LDRH            R0, [R1,#0xC8]
CMP             R0, #0x18
BEQ             loc_238FAC
BGT             loc_238ED0
CMP             R0, #0x13
BEQ             loc_238F50
BGE             loc_238EB0
CMP             R0, #0
LDRHEQ          R0, [R1,#0xCA]
BEQ             loc_238FAC
CMP             R0, #1
LDRHEQ          R0, [R1,#0xCA]
BEQ             loc_238FAC
CMP             R0, #2
BEQ             loc_238F1C
CMP             R0, #0x11
BEQ             loc_238F30
B               loc_238FB0
CMP             R0, #0x14
BEQ             loc_238FAC
CMP             R0, #0x15
VLDREQ          S16, =5.0
BEQ             loc_238FB0
CMP             R0, #0x17
VLDREQ          S16, =40.0
B               loc_238FB0
CMP             R0, #0x20 ; ' '
BEQ             loc_238F74
BGE             loc_238EFC
CMP             R0, #0x1A
BEQ             loc_238FB0
CMP             R0, #0x1B
VLDREQ          S16, =10.0
BEQ             loc_238FB0
CMP             R0, #0x1D
BEQ             loc_238FAC
B               loc_238FB0
CMP             R0, #0x22 ; '"'
VLDREQ          S16, =3.0
BEQ             loc_238FB0
CMP             R0, #0x26 ; '&'
BEQ             loc_238F9C
CMP             R0, #0xFE
BNE             loc_238FB0
B               loc_238FAC
LDRH            R0, [R1,#0xCA]
CMP             R0, #0
CMPNE           R0, #1
VLDREQ          S16, =15.0
B               loc_238FB0
LDRH            R0, [R1,#0xCA]
CMP             R0, #0
BEQ             loc_238F48
CMP             R0, #1
CMPNE           R0, #0xFE
BNE             loc_238FB0
VLDR            S16, =8.0
B               loc_238FB0
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             loc_238FB0
LDRH            R0, [R1,#0xCA]
CMP             R0, #0x14
VLDRNE          S16, =1.0
BNE             loc_238FB0
B               loc_238FAC
LDRH            R0, [R2,#2]
CMP             R0, #0x2B ; '+'
BEQ             loc_238FAC
ADD             R0, R2, #6
BL              sub_45AAB8
VLDR            S1, =1.0
VSUB.F32        S1, S1, S0
VLDR            S0, =30.0
VMUL.F32        S16, S1, S0
B               loc_238FB0
LDRSH           R0, [R2,#8]
VMOV            S0, R0
VCVT.F32.S32    S16, S0
B               loc_238FB0
VLDR            S16, =30.0
LDRB            R0, [SP,#0x90+var_74]
CMP             R0, #1
BEQ             loc_238FD0
CMP             R0, #2
BEQ             loc_239044
CMP             R0, #3
BEQ             loc_239084
B               loc_2390C4
VLDR            S0, [SP,#0x90+var_8C]
VLDR            S1, [SP,#0x90+var_70]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_23903C
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VLDR            S0, [SP,#0x90+var_8C]
VLDR            S2, [SP,#0x90+var_70]
VLDR            S1, [R0,#4]
VSUB.F32        S2, S0, S2
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S1, S2
B               loc_2390C0
DCD off_6D1648
DCD 0x4C8
DCFS 0.0
DCFS 5.0
DCFS 40.0
DCFS 10.0
DCFS 3.0
DCFS 15.0
DCFS 8.0
DCFS 1.0
DCFS 30.0
VLDR            S0, =1.0
B               loc_2390C0
VLDR            S0, [SP,#0x90+var_80]
VLDR            S1, [SP,#0x90+var_64]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_23903C
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0xB20
VLDR            S0, [SP,#0x90+var_80]
VLDR            S2, [SP,#0x90+var_64]
VLDR            S1, [R0,#4]
VSUB.F32        S2, S0, S2
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S1, S2
B               loc_2390C0
VLDR            S0, [SP,#0x90+var_84]
VLDR            S1, [SP,#0x90+var_68]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_23903C
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2EC
VLDR            S0, [SP,#0x90+var_84]
VLDR            S2, [SP,#0x90+var_68]
VLDR            S1, [R0,#4]
VSUB.F32        S2, S0, S2
VSUB.F32        S1, S0, S1
VDIV.F32        S0, S1, S2
VMUL.F32        S16, S0, S16
LDR             R0, [R4,#4]
ADD             R0, R0, #0x19C00
LDRB            R0, [R0,#0x44]
VCMPE.F32       S17, S16
VMRS            APSR_nzcv, FPSCR
VNEGHI.F32      S16, S16
CMP             R0, #0
ADD             R0, SP, #0x90+var_80
VLDM            R0, {S17-S19}
ADD             R0, SP, #0x90+var_8C
VLDM            R0, {S20-S22}
BEQ             loc_239180
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
LDR             R0, [R0,#0x10]
VLDR            S23, [R0,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
VLDR            S1, =0.1
VLDR            S0, [R0,#0x1C4]
VADD.F32        S0, S23, S0
VSUB.F32        S2, S0, S1
VCMPE.F32       S2, S20
VMRS            APSR_nzcv, FPSCR
BGE             loc_239144
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BHI             loc_239180
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A186C
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S20
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VMOV.F32        S1, S16
VMOV.F32        S0, S21
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1EC
MOV             R1, #0
BL              sub_5A13F0
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0xCA]
CMP             R0, #0x1B
BNE             loc_23920C
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#4]
VLDR            S0, [R0,#0x28]
LDR             R0, [R8]
VLDR            S1, [R1,#0x10C]
VSUB.F32        S20, S1, S0
LDR             R0, [R0,#0xBC]
ADD             R4, R0, #0x16800
ADD             R4, R4, #0x388
MOV             R0, R4
BL              sub_5A18EC
VSTR            S20, [R4,#0xC]
VSTR            S20, [R4,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R4, R0, #0x16800
ADD             R4, R4, #0x354
MOV             R0, R4
BL              sub_5A18EC
VSTR            S20, [R4,#0xC]
VSTR            S20, [R4,#4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VMOV.F32        S4, S19
VMOV.F32        S3, S18
VMOV.F32        S2, S17
VMOV.F32        S1, S22
VMOV.F32        S0, S16
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x2E8
BL              sub_5A137C
ADD             SP, SP, #0x58 ; 'X'
VPOP            {D8-D11}
POP             {R4-R8,PC}
