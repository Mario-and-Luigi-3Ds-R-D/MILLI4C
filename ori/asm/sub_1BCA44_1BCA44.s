PUSH            {R0,R1,R4-R11,LR}
MOV             R4, R0
MOV             R5, #0
LDR             R0, =byte_68DBBB
VPUSH           {D8-D9}
SUB             SP, SP, #0x7C
LDRB            R1, [R0]
CMP             R1, #0x3C ; '<'
ANDCS           R1, R1, #0xFF
CMPCS           R1, #0x5F ; '_'
MOVCC           R1, #0x5F ; '_'
CMP             R1, #0
STR             R1, [SP,#0xB8+var_AC]
BLE             loc_1BD21C
LDR             R10, =0x19C98
LDR             R11, =0x21218
LDR             R9, =unk_68C882
VLDR            S17, =2.0
LDRD            R0, R1, [R4,#4]
RSB             R3, R5, R5,LSL#4
RSB             R2, R5, R5,LSL#3
ADD             R3, R3, R5,LSL#5
LDRSH           R1, [R1]
ADD             R2, R11, R2,LSL#3
ADD             R3, R10, R3,LSL#2
CMP             R1, #0x12
CMPLT           R1, #2
ADD             R8, R9, R5,LSL#5
ADD             R7, R0, R3
ADD             R6, R0, R2
BGE             loc_1BCBCC
CMP             R1, #0
BEQ             loc_1BCAD4
CMP             R1, #1
BNE             loc_1BCBCC
B               loc_1BCB50
LDR             R0, =byte_68DBBB
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_1BCBCC
LDR             R0, [R7,#0xA4]
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BNE             loc_1BCBCC
LDR             R0, [R7]
VMOV.F32        S0, S17
MOV             R3, #0
LDRSH           R1, [R8,#8]
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R7
BLX             R12
LDR             R0, [R7,#0xA4]
MOV             R1, #0x200
ADD             R0, R0, #0x10
BL              sub_485780
LDR             R2, [R4,#8]
ADD             R0, R5, #0x400
ADD             R0, R0, #0xD6
MOV             R1, #0
STRB            R1, [R2,R0]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD2]
ADD             R1, R1, #1
STRH            R1, [R0,#0xD2]
B               loc_1BCBCC
LDR             R0, =byte_68DBBB
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_1BCBCC
LDR             R0, [R7,#0xA4]
LDRH            R1, [R0,#0x1A]
TST             R1, #1
BNE             loc_1BCBCC
LDRSH           R1, [R8,#0x12]
STR             R1, [SP,#0xB8+var_A4]
LDRH            R1, [R8,#0x1E]
CMP             R1, #0
MOVEQ           R2, #0
BEQ             loc_1BCBB0
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
LDR             R1, =dword_6D1F40
STR             R0, [SP,#0xB8+var_9C]
MOV             R0, R1
BL              sub_546DB0
MOV             R1, R0
LDR             R0, [SP,#0xB8+var_9C]
MUL             R0, R1, R0
MOV             R2, R0,LSR#16
LDR             R0, [R7]
VMOV.F32        S0, S17
LDR             R1, [SP,#0xB8+var_A4]
MOV             R3, #0
LDR             R12, [R0,#0x3C]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x1C; switch 28 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1BCBD8; jumptable 001BCBD8 default case, cases 5-16
DCD loc_1BCC50; jump table for switch statement
LDR             R0, =byte_68DBBB; jumptable 001BCBD8 cases 0-4,21
LDRB            R0, [R0]
CMP             R5, R0
BGE             loc_1BCD00
ADD             R7, R9, R5,LSL#5
MOV             R2, #0x20 ; ' '
MOV             R1, R7
ADD             R0, SP, #0xB8+var_68
BL              sub_2FF3D8
LDR             R0, [R4,#8]
LDR             R3, [SP,#0xB8+var_28]
ADD             R2, SP, #0xB8+var_68
ADD             R0, R0, #0x10
ADD             R1, SP, #0xB8+var_A8
BL              sub_5E39B0
LDR             R0, [SP,#0xB8+var_28]
VLDR            S3, =0.00097656
VLDR            S2, =6.2832
CMP             R0, #0
ADD             R0, SP, #0xB8+var_A8
LDM             R0, {R1-R3}
ADD             R0, R6, #0x28 ; '('
STM             R0, {R1-R3}
LDRSH           R0, [R7,#0x1C]
VLDR            S1, [SP,#0xB8+var_9C]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S3
VMUL.F32        S0, S0, S2
VLDRNE          S2, =-1.0
VLDREQ          S2, =1.0
VMLA.F32        S1, S0, S2
VSTR            S1, [R6,#0x18]
LDRH            R0, [R8,#0x16]
CMP             R0, #0
LDR             R0, [SP,#0xB8+var_28]
BEQ             loc_1BCDF0
CMP             R0, #0
BNE             loc_1BCE00
B               loc_1BCDF8
VLDR            S0, =1.0
VSTR            S1, [R6,#4]
VSTR            S0, [R6,#8]
VSTR            S0, [R6,#0xC]
ADD             R0, R4, #0x1100
LDRSH           R1, [R0,#0xD0]
LDRSH           R0, [R0,#0xD2]
CMP             R0, R1
BLE             def_1BCBD8; jumptable 001BCBD8 default case, cases 5-16
LDR             R1, [R4,#4]
VLDR            S0, [R6,#0x28]
ADD             R0, R4, #0x1000
ADD             R1, R1, #0x108
VLDR            S4, =0.15
VLDR            S1, [R1]
VLDR            S2, =-0.2
VSUB.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S0, [R6,#0x2C]
VLDR            S1, [R1,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R6,#0x2C]
VLDR            S1, [R1,#8]
VLDR            S0, [R6,#0x30]
VSUB.F32        S0, S0, S1
VSTR            S0, [R6,#0x30]
VLDR            S0, =1.0
VLDR            S5, [R0,#0x1D8]
VLDR            S3, [R6,#0x2C]
VMOV.F32        S1, S0
VMLS.F32        S1, S5, S4
VMUL.F32        S1, S3, S1
VSTR            S1, [R6,#0x2C]
VLDR            S1, [R0,#0x1D8]
VLDR            S3, [R6,#0x28]
VMLS.F32        S0, S1, S2
VMUL.F32        S0, S3, S0
VSTR            S0, [R6,#0x28]
LDR             R1, [R4,#4]
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
B               def_1BCBD8; jumptable 001BCBD8 default case, cases 5-16
DCD byte_68DBBB
DCD 0x19C98
DCD 0x21218
DCD unk_68C882
DCFS 2.0
DCD dword_6D1F40
DCFS 0.00097656
DCFS 6.2832
DCFS -1.0
DCFS 1.0
DCFS 0.15
DCFS -0.2
CMP             R0, #0
BEQ             loc_1BCE00
VLDR            S1, =-1.0
B               loc_1BCCF0
VLDR            S1, =1.0
B               loc_1BCCF0
CMP             R5, #0x3C ; '<'; jumptable 001BCBD8 cases 17-20,22,23
BGE             loc_1BD1F8
UXTH            R0, R5
CMP             R0, #0xA
MOVCC           R8, #1
BCC             loc_1BCE44
CMP             R0, #0x14
MOVCC           R8, #2
BCC             loc_1BCE44
CMP             R0, #0x26 ; '&'
MOVCC           R8, #3
BCC             loc_1BCE44
CMP             R0, #0x3C ; '<'
MOVCC           R8, #4
MOVCS           R8, #0
LDR             R0, [R4,#8]
VLDR            S0, =0.0
LDRSH           R0, [R0]
CMP             R0, #0x11
BEQ             loc_1BCE74
CMP             R0, #0x12
BEQ             loc_1BCEC4
CMP             R0, #0x13
BEQ             loc_1BCE74
CMP             R0, #0x14
BNE             loc_1BCF08
B               loc_1BCEC4
ADD             R1, R4, #0x1000
ADD             R1, R1, #0x184
LDRSH           R0, [R1]
CMP             R0, #0
BLT             loc_1BCEB8
LDRSH           R1, [R1,#2]
CMP             R1, R0
CMPGT           R1, #1
VLDRLE          S0, =1.0
BLE             loc_1BCEB8
VMOV            S0, R1
VMOV            S1, R0
VLDR            S2, =1.0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S0, S2
VDIV.F32        S0, S1, S2
VLDR            S1, =0.5
VMUL.F32        S0, S0, S1
B               loc_1BCF08
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x184
LDRSH           R1, [R0]
CMP             R1, #0
BLT             loc_1BCF08
LDRSH           R0, [R0,#2]
CMP             R0, R1
CMPGT           R0, #1
VLDRLE          S0, =1.0
BLE             loc_1BCF08
VMOV            S1, R0
VMOV            S0, R1
VLDR            S2, =1.0
VCVT.F32.S32    S3, S1
VCVT.F32.S32    S1, S0
VSUB.F32        S2, S3, S2
VDIV.F32        S0, S1, S2
VLDR            S1, =3.1416
ADD             R0, R4, #0x1000
ADD             R1, SP, #0xB8+var_A8
ADD             R2, R4, #0x2A8
STR             R1, [SP,#0xB8+var_98]
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
STR             R2, [SP,#0xB8+var_90]
VLDR            S16, [R0,#0x180]
VMUL.F32        S0, S0, S1
BL              sub_464380
VMOV.F32        S1, S0
UXTH            R0, R5
CMP             R0, #0xA
MOVCC           R3, #1
BCC             loc_1BCF6C
CMP             R0, #0x14
MOVCC           R3, #2
BCC             loc_1BCF6C
CMP             R0, #0x26 ; '&'
MOVCC           R3, #3
BCC             loc_1BCF6C
CMP             R0, #0x3C ; '<'
MOVCC           R3, #4
MOVCS           R3, #0
LDR             R1, [SP,#0xB8+var_90]
ADD             R0, R0, R0,LSL#2
VMOV.F32        S0, S16
ADD             R0, R1, R0,LSL#3
LDR             R2, [SP,#0xB8+var_98]
MOV             R1, R6
BL              sub_1C0DBC
CMP             R8, #1
NOP
BEQ             loc_1BCFA0
LDRH            R0, [SP,#0xB8+var_A8]
ADD             R0, R0, #5
STRH            R0, [SP,#0xB8+var_A8]
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
MOV             R0, #0xFF
STRB            R0, [R7,#7]
LDR             R0, [R7]
VMOV.F32        S0, S17
MOV             R3, #0
LDRH            R1, [SP,#0xB8+var_A8]
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R7
BLX             R12
LDR             R1, [R4,#4]
VLDR            S0, [R6,#0x28]
ADD             R1, R1, #0x108
VLDR            S1, [R1]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
VLDR            S1, [R6,#0x2C]
VLDR            S0, [R1,#4]
VADD.F32        S0, S1, S0
VSTR            S0, [R6,#0x2C]
VLDR            S0, [R6,#0x30]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R6,#0x30]
B               def_1BCBD8; jumptable 001BCBD8 default case, cases 5-16
CMP             R5, #0x5F ; '_'; jumptable 001BCBD8 cases 24-27
BGE             loc_1BD1F8
LDR             R0, [R4,#8]
VLDR            S16, =0.0
LDRSH           R1, [R0]
CMP             R1, #0x18
BEQ             loc_1BD04C
CMP             R1, #0x19
CMPNE           R1, #0x1A
BEQ             loc_1BD088
CMP             R1, #0x1B
BEQ             loc_1BD090
B               loc_1BD0D4
LDRSH           R1, [R0,#6]!
CMP             R1, #0
BLT             loc_1BD0D4
LDRSH           R0, [R0,#2]
CMP             R0, R1
CMPGT           R0, #1
BLE             loc_1BD088
VMOV            S0, R0
VMOV            S1, R1
VLDR            S2, =1.0
VCVT.F32.S32    S3, S0
VCVT.F32.S32    S0, S1
VSUB.F32        S1, S3, S2
VDIV.F32        S16, S0, S1
B               loc_1BD0D4
VLDR            S16, =1.0
B               loc_1BD0D4
LDRSH           R1, [R0,#6]!
CMP             R1, #0
BLT             loc_1BD0CC
LDRSH           R0, [R0,#2]
CMP             R0, R1
CMPGT           R0, #1
VLDRLE          S16, =1.0
BLE             loc_1BD0CC
VMOV            S0, R0
VMOV            S1, R1
VLDR            S2, =1.0
VCVT.F32.S32    S3, S0
VCVT.F32.S32    S0, S1
VSUB.F32        S1, S3, S2
VDIV.F32        S16, S0, S1
VLDR            S0, =1.0
VSUB.F32        S16, S0, S16
LDR             R0, [R7]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
VLDR            S0, =3.1416
VLDR            S1, =40.744
ADD             R0, SP, #0xB8+var_9C
VMUL.F32        S0, S16, S0
ADD             R3, SP, #0xB8+var_8C
STM             R0, {R3,R7}
ADD             R8, R4, #0x1000
ADD             R7, R4, #0x2A8
VLDR            S18, [R8,#0x180]
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S2, =-0.5
VLDR            S1, =0.5
UXTH            R0, R5
CMP             R0, #0xC
VMLA.F32        S1, S0, S2
VLDR            S2, [R8,#0x1CC]
BCC             loc_1BD150
CMP             R0, #0x1C
BCC             loc_1BD174
CMP             R0, #0x30 ; '0'
BCC             loc_1BD184
CMP             R0, #0x46 ; 'F'
BCC             loc_1BD198
CMP             R0, #0x4A ; 'J'
BCS             loc_1BD16C
MOV             R1, #1
B               loc_1BD19C
DCFS 0.0
DCFS 0.5
DCFS 3.1416
DCFS 40.744
DCFS -0.5
CMP             R0, #0x4F ; 'O'
BCS             loc_1BD17C
MOV             R1, #2
B               loc_1BD19C
CMP             R0, #0x57 ; 'W'
BCS             loc_1BD18C
MOV             R1, #3
B               loc_1BD19C
CMP             R0, #0x5F ; '_'
MOVCS           R1, #0
BCS             loc_1BD19C
MOV             R1, #4
ADD             R0, R0, R0,LSL#2
VMOV.F32        S0, S18
STR             R1, [SP,#0xB8+var_B8]
LDR             R2, [SP,#0xB8+var_98]
LDR             R3, [SP,#0xB8+var_9C]
ADD             R0, R7, R0,LSL#3
MOV             R1, R6
BL              sub_1C0A08
LDR             R1, [R4,#4]
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
B               def_1BCBD8; jumptable 001BCBD8 default case, cases 5-16
LDR             R0, [R7]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R7
BLX             R2
LDR             R0, [SP,#0xB8+var_AC]; jumptable 001BCBD8 default case, cases 5-16
ADD             R5, R5, #1
CMP             R5, R0
BLT             loc_1BCA8C
ADD             SP, SP, #0x7C ; '|'
VPOP            {D8-D9}
ADD             SP, SP, #8
POP             {R4-R11,PC}
