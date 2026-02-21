PUSH            {R0,R1,R4-R11,LR}
MOV             R4, #0
MOV             R5, R0
LDR             R0, =byte_68DBBA
VPUSH           {D8-D12}
SUB             SP, SP, #0x64
LDRB            R0, [R0]
CMP             R0, #0
BLS             loc_23BF2C
LDR             R10, =0x19C98
LDR             R11, =0x21218
LDR             R9, =unk_68C17A
LDR             R0, [R5,#8]
RSB             R1, R4, R4,LSL#4
ADD             R3, R1, R4,LSL#5
RSB             R2, R4, R4,LSL#3
LDRSH           R1, [R0]
LDR             R0, [R5,#4]
RSB             R12, R4, R4,LSL#4
ADD             R3, R10, R3,LSL#2
ADD             R2, R11, R2,LSL#3
CMP             R1, #0x1D; switch 29 cases
ADD             R8, R9, R12,LSL#1
ADD             R7, R0, R3
ADD             R6, R0, R2
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
DCD loc_23ACA8; jump table for switch statement
ADD             R0, R0, #0x2700; jumptable 0023AC2C case 0
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R7,#0xA4]
LDRH            R1, [R0,#0x1A]
TST             R1, #1
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRSH           R1, [R8,#8]
STR             R1, [SP,#0xB8+var_B8]
AND             R1, R1, #0xFF
BL              sub_5F1670
LDR             R1, =dword_6D1F40
STR             R0, [SP,#0xB8+var_B4]
MOV             R0, R1
BL              sub_546DB0
MOV             R1, R0
LDR             R0, [SP,#0xB8+var_B4]
VLDR            S0, =2.0
MOV             R3, #0
MUL             R0, R1, R0
LDR             R1, [SP,#0xB8+var_B8]
MOV             R2, R0,LSR#16
LDR             R0, [R7]
LDR             R12, [R0,#0x3C]
MOV             R0, R7
BLX             R12
LDR             R2, [R5,#8]
ADD             R0, R4, #0x400
ADD             R0, R0, #0xD6
MOV             R1, #0
STRB            R1, [R2,R0]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD2]
ADD             R1, R1, #1
STRH            R1, [R0,#0xD2]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
ADD             R0, R0, #0x2700; jumptable 0023AC2C cases 1,4
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R7,#0xA4]
LDRH            R1, [R0,#0x1A]
TST             R1, #1
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRSH           R1, [R8,#0x16]
CMN             R1, #1
BEQ             loc_23ADB8
LDRB            R2, [R0,#0x6C]
LDRH            R3, [R7,#0xB8]
LDRSH           R12, [R8,#0x12]
SUB             R2, R2, R3
UXTH            R2, R2
CMP             R2, R12
BEQ             loc_23AF8C
STR             R1, [SP,#0xB8+var_B8]
AND             R1, R1, #0xFF
BL              sub_5F1670
LDR             R1, =dword_6D1F40
STR             R0, [SP,#0xB8+var_B4]
MOV             R0, R1
BL              sub_546DB0
MOV             R1, R0
LDR             R0, [SP,#0xB8+var_B4]
MUL             R0, R1, R0
MOV             R2, R0,LSR#16
B               loc_23ADD4
LDRSH           R1, [R8,#0x12]
STR             R1, [SP,#0xB8+var_B8]
LDRH            R1, [R8,#0x1C]
CMP             R1, #0
LDRNE           R1, [SP,#0xB8+var_B8]
MOVEQ           R2, #0
BNE             loc_23AD8C
LDR             R0, [R7]
LDR             R1, [SP,#0xB8+var_B8]
VLDR            S0, =2.0
MOV             R3, #0
LDR             R12, [R0,#0x3C]
MOV             R0, R7
BLX             R12
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
ADD             R0, R0, #0x2700; jumptable 0023AC2C case 2
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R7,#0xA4]
LDRH            R1, [R7,#0xB8]
LDRSH           R2, [R8,#0x18]
LDRB            R3, [R0,#0x6C]
SUB             R1, R3, R1
UXTH            R12, R1
CMP             R12, R2
BNE             loc_23AE44
LDR             R2, [R0,#0x10]
LDR             R0, [R0,#4]
MOV             R1, R3
BL              sub_136824
CMP             R0, #0xB
NOP
BLS             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
B               loc_23AF5C
LDRH            R1, [R0,#0x1A]
TST             R1, #1
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRSH           R1, [R8,#0x12]
CMP             R12, R1
BEQ             loc_23AF8C
LDRSH           R2, [R8,#0x16]
CMN             R2, #1
MOVNE           R1, R2
STR             R2, [SP,#0xB8+var_B8]
BEQ             loc_23AD88
B               loc_23AD8C
ADD             R0, R0, #0x2700; jumptable 0023AC2C case 3
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R5,#8]
MOV             R1, #0x368
ADD             R1, R1, R4,LSL#1
STR             R1, [SP,#0xB8+var_B8]
LDRSH           R1, [R0,R1]
CMP             R1, #0
BGT             loc_23B158
BNE             loc_23AF20
LDR             R0, [R7,#0xA4]
LDRH            R1, [R7,#0xB8]
LDRB            R3, [R0,#0x6C]
SUB             R1, R3, R1
UXTH            R1, R1
STR             R1, [SP,#0xB8+var_B4]
LDR             R2, [R0,#0x10]
LDR             R0, [R0,#4]
MOV             R1, R3
BL              sub_136824
LDR             R1, [R7,#0xA4]
STR             R0, [SP,#0xB8+var_B0]
LDRH            R0, [R1,#0x16]
LDR             R1, =0x2095
STR             R0, [SP,#0xB8+var_AC]
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
ADD             LR, SP, #0xB8+var_B4
VLDR            S0, =2.0
LDM             LR, {R1,R2}
LDR             R12, [R0,#0x3C]
LDR             R0, [SP,#0xB8+var_AC]
SXTH            R3, R0
MOV             R0, R7
BLX             R12
LDR             R0, [R5,#8]
LDR             R1, [SP,#0xB8+var_B8]
MOV             R2, #0xFFFFFFFF
STRH            R2, [R0,R1]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R7,#0xA4]
LDRH            R1, [R7,#0xB8]
LDRSH           R2, [R8,#0x18]
LDRB            R3, [R0,#0x6C]
SUB             R1, R3, R1
UXTH            R12, R1
CMP             R12, R2
BNE             loc_23AF74
LDR             R2, [R0,#0x10]
LDR             R0, [R0,#4]
MOV             R1, R3
BL              sub_136824
CMP             R0, #0xB
NOP
BLS             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R7,#0xA4]
MOV             R1, #0xA
BL              sub_593084
NOP
NOP
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRH            R1, [R0,#0x1A]
TST             R1, #1
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRSH           R1, [R8,#0x12]
CMP             R12, R1
BNE             loc_23AFB0
LDR             R0, [R7]
LDRSH           R1, [R8,#0x14]
VLDR            S0, =2.0
MOV             R3, #1
LDR             R12, [R0,#0x3C]
MOV             R2, #0
MOV             R0, R7
BLX             R12
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRSH           R2, [R8,#0x16]
CMN             R2, #1
BEQ             loc_23AD88
AND             R1, R2, #0xFF
STR             R2, [SP,#0xB8+var_B8]
BL              sub_5F1670
LDR             R1, =dword_6D1F40
STR             R0, [SP,#0xB8+var_B4]
MOV             R0, R1
BL              sub_546DB0
MOV             R1, R0
LDR             R0, [SP,#0xB8+var_B4]
MUL             R0, R1, R0
MOV             R2, R0,LSR#16
B               loc_23ADD4
DCD byte_68DBBA
DCD 0x19C98
DCD 0x21218
DCD unk_68C17A
DCD dword_6D1F40
DCFS 2.0
DCD 0x2095
LDR             R0, [R7,#0xA4]; jumptable 0023AC2C case 19
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BEQ             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRH            R0, [R7,#0xB8]
CMP             R0, #0xAA
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R1, =0x20B4
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
MOV             R3, #0
LDRSH           R1, [R8,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R7
BLX             R12
RSB             R0, R4, R4,LSL#4
ADD             R0, R9, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R7,#0xA4]
STR             R0, [SP,#0xB8+var_B8]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, [SP,#0xB8+var_B8]
ADD             R0, R0, #0x10
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
NOP
NOP
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R5,#8]; jumptable 0023AC2C case 23
MOV             R1, #0x368
ADD             R1, R1, R4,LSL#1
STR             R1, [SP,#0xB8+var_B8]
LDRSH           R1, [R0,R1]
CMP             R1, #0
BLE             loc_23B0F4
SUB             R2, R1, #1
LDR             R1, [SP,#0xB8+var_B8]
STRH            R2, [R0,R1]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
NOP
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R1, =0x20D2
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
LDRSH           R1, [R8,#0x12]
VLDR            S0, =2.0
MOV             R3, #1
LDR             R12, [R0,#0x3C]
MOV             R2, #0
MOV             R0, R7
BLX             R12
LDR             R1, [R5,#8]
LDR             R0, [SP,#0xB8+var_B8]
MOV             R2, #0xFFFFFFFF
STRH            R2, [R1,R0]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R0, [R5,#8]; jumptable 0023AC2C case 25
MOV             R1, #0x368
ADD             R1, R1, R4,LSL#1
STR             R1, [SP,#0xB8+var_B8]
LDRSH           R1, [R0,R1]
CMP             R1, #0
BLE             loc_23B168
LDR             R2, [SP,#0xB8+var_B8]
SUB             R1, R1, #1
STRH            R1, [R0,R2]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
NOP
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R1, =0x2095
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
MOV             R3, #0
LDRSH           R1, [R8,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R7
BLX             R12
LDR             R1, [R5,#8]
LDR             R0, [SP,#0xB8+var_B8]
MOV             R2, #0xFFFFFFFF
STRH            R2, [R1,R0]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R1, [R5,#8]; jumptable 0023AC2C case 26
MOV             R0, #0x368
ADD             R0, R0, R4,LSL#1
STR             R0, [SP,#0xB8+var_B8]
LDRSH           R0, [R1,R0]
CMP             R0, #0
BLE             loc_23B1DC
SUB             R2, R0, #1
LDR             R0, [SP,#0xB8+var_B8]
STRH            R2, [R1,R0]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
NOP
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R1, =0x20DC
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
LDRSH           R1, [R8,#0x12]
VLDR            S0, =2.0
MOV             R3, #1
LDR             R12, [R0,#0x3C]
MOV             R2, #0
MOV             R0, R7
BLX             R12
LDR             R2, [R5,#8]
LDR             R0, [SP,#0xB8+var_B8]
MOV             R1, #0xFFFFFFFF
STRH            R1, [R2,R0]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R1, [R5,#8]; jumptable 0023AC2C case 28
MOV             R0, #0x368
ADD             R0, R0, R4,LSL#1
STR             R0, [SP,#0xB8+var_B8]
LDRSH           R0, [R1,R0]
CMP             R0, #0
BLE             loc_23B250
LDR             R2, [SP,#0xB8+var_B8]
SUB             R0, R0, #1
STRH            R0, [R1,R2]
B               def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
NOP
BNE             def_23AC2C; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDR             R1, =0x20F0
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
MOV             R3, #0
LDRSH           R1, [R8,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R7
BLX             R12
LDR             R2, [R5,#8]
LDR             R1, [SP,#0xB8+var_B8]
MOV             R0, #0xFFFFFFFF
STRH            R0, [R2,R1]
LDR             R0, [R5,#8]; jumptable 0023AC2C default case, cases 5-18,20-22,24,27
LDRSH           R0, [R0]
CMP             R0, #0x2C; switch 44 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
DCD loc_23B374; jump table for switch statement
DCD 0x20B4
DCFS 0.5
DCFS 1.0
DCFS 256.0
DCD 0x20D2
DCD 0x20DC
DCD 0x20F0
RSB             R0, R4, R4,LSL#4; jumptable 0023B2A0 cases 0-4,23-25
MOV             R2, #0x1E
ADD             R1, R9, R0,LSL#1
MOV             R0, SP
BL              sub_2FF3D8
LDR             R0, [SP,#0xB8+var_28]
LDRSH           R1, [SP,#0xB8+var_B8]
LDR             R2, =0x8889
CMP             R0, #0
MOVNE           R0, #0xFFFFFFFF
MOVEQ           R0, #1
LDR             R12, =0x19C58
MUL             R0, R1, R0
LDR             R3, [R5,#4]
ADD             R0, R0, #0x1E
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
MUL             R7, R0, R2
LDRSH           R2, [SP,#0xB8+var_B8+2]
VMOV            S0, R2
MOV             R0, R7,ASR#19
SUB             R0, R0, R7,ASR#31
ADD             R0, R12, R0,LSL#2
ADD             R0, R0, R3
VCVT.F32.S32    S1, S0
VLDR            S0, [R0]
VADD.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0xB8+var_B8+2]
LDRSH           R2, [R5,#0x40]
LDRSH           R0, [R5,#0x42]
CMP             R2, R0
BGE             loc_23B508
CMP             R2, #0
VLDRLT          S0, =0.0
BLT             loc_23B448
CMP             R0, #1
VLDRLE          S0, =1.0
BLE             loc_23B49C
VMOV            S0, R0
VMOV            S1, R2
VLDR            S2, =1.0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S0, S2
VDIV.F32        S0, S1, S2
VMOV            R0, S0
CMP             R0, #0x3F000000
BGE             loc_23B49C
VLDR            S2, =2.0
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, =0.2
VLDR            S1, =1.0
LDRSH           R0, [SP,#0xB8+var_B8]
LDR             R1, [R5,#8]
VMLA.F32        S1, S0, S2
VMOV            S0, R0
VCVT.F32.S32    S2, S0
VLDR            S0, [R1,#0x360]
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0xB8+var_B8]
B               loc_23B528
VLDR            S18, =0.5
VLDR            S16, =1.0
VLDR            S1, =2.0
VSUB.F32        S0, S0, S18
VMOV.F32        S17, S16
VMLS.F32        S17, S0, S1
VLDR            S0, =3.1416
VLDR            S1, =40.744
VMUL.F32        S0, S17, S0
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S1, =-0.5
LDR             R1, [R5,#8]
LDRSH           R0, [SP,#0xB8+var_B8]
VMLA.F32        S18, S0, S1
VMOV.F32        S1, S16
VLDR            S0, =1.2
VLDR            S2, [R1,#0x360]
VNMLS.F32       S1, S2, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMLA.F32        S16, S1, S18
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0xB8+var_B8]
B               loc_23B528
VMOV            S0, R1
LDR             R0, [R5,#8]
VLDR            S1, [R0,#0x360]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0xB8+var_B8]
LDRSH           R0, [R5,#0x40]
LDRSH           R1, [R5,#0x42]
CMP             R0, R1
BGE             loc_23B558
LDRSH           R0, [SP,#0xB8+var_B8+2]
VLDR            S1, [R5,#0x48]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0xB8+var_B8+2]
VLDR            S16, =1.0
LDR             R0, [R5,#8]
LDR             R3, [SP,#0xB8+var_28]
VMOV.F32        S0, S16
ADD             R0, R0, #0x10
MOV             R2, SP
ADD             R1, SP, #0xB8+var_98
VMOV.F32        S1, S0
BL              sub_5E3D94
LDR             R0, [R5,#4]
VLDR            S4, [SP,#0xB8+var_94]
VLDR            S2, [SP,#0xB8+var_90]
ADD             R0, R0, #0x108
VLDR            S0, [SP,#0xB8+var_98]
VLDR            S1, [R0,#4]
VLDR            S3, [R0,#8]
VLDR            S5, [R0]
VSUB.F32        S1, S4, S1
VSUB.F32        S2, S2, S3
VSUB.F32        S0, S0, S5
ADD             R0, R5, #0xA00
LDRSH           R1, [R0,#0xCC]
LDRSH           R0, [R0,#0xCE]
CMP             R1, R0
VMOV.F32        S4, S1
VMOV.F32        S3, S2
BGE             loc_23B644
ADD             R0, R4, R4,LSL#1
ADD             R1, R5, #0x800
ADD             R0, R5, R0,LSL#2
ADD             R1, R1, #0x2CC
VLDR            S5, [R0,#0x70]
ADD             R0, R0, #0x74 ; 't'
VLDM            R0, {S1-S2}
LDR             R0, [SP,#0xB8+var_28]
CMP             R0, #0
LDRSH           R0, [R1]
VNEGNE.F32      S5, S5
CMP             R0, #0
VLDRLT          S6, =0.0
BLT             loc_23B628
LDRSH           R1, [R1,#2]
CMP             R1, R0
CMPGT           R1, #1
VMOVLE.F32      S6, S16
BLE             loc_23B628
VMOV            S6, R1
VMOV            S7, R0
VCVT.F32.S32    S6, S6
VCVT.F32.S32    S7, S7
VSUB.F32        S8, S6, S16
VDIV.F32        S6, S7, S8
VSUB.F32        S7, S0, S5
VSUB.F32        S4, S4, S1
VSUB.F32        S3, S3, S2
VMOV.F32        S0, S5
VMLA.F32        S0, S6, S7
VMLA.F32        S1, S6, S4
VMLA.F32        S2, S6, S3
LDR             R0, [R5,#8]
LDRSH           R0, [R0,#2]
CMP             R0, #0x15
CMPNE           R0, #0x16
BNE             loc_23B668
LDR             R0, [R5,#4]
VLDR            S3, =199.0
ADD             R0, R0, #0x19C00
VSTR            S3, [R0,#0x20]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x108
VLDR            S5, [R0]
VLDR            S4, [R0,#4]
VLDR            S3, [R0,#8]
VADD.F32        S0, S0, S5
VADD.F32        S4, S1, S4
VADD.F32        S1, S2, S3
VSTR            S0, [R6,#0x28]
VSTR            S4, [R6,#0x2C]
VSTR            S1, [R6,#0x30]
LDR             R0, [SP,#0xB8+var_28]
CMP             R0, #0
VMOVEQ.F32      S0, S16
VLDRNE          S0, =-1.0
VSTR            S0, [R6,#4]
VSTR            S16, [R6,#8]
VSTR            S16, [R6,#0xC]
LDR             R0, [SP,#0xB8+var_8C]
STR             R0, [R6,#0x18]
B               def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
ADD             R0, R4, R4,LSL#1; jumptable 0023B2A0 cases 17,18
LDR             R1, [SP,#0xB8+var_28]
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x70 ; 'p'
CMP             R1, #0
VLDM            R0, {S16-S18}
RSB             R0, R4, R4,LSL#4
MOV             R2, #0x1E
ADD             R7, R9, R0,LSL#1
VNEGNE.F32      S16, S16
MOV             R1, R7
MOV             R0, SP
BL              sub_2FF3D8
LDRSH           R0, [R7]
LDRSH           R1, [R8,#2]
VLDR            S3, =1.5
VMOV            S0, R0
LDR             R0, [SP,#0xB8+var_28]
LDR             R2, =0x19C58
LDR             R3, [R5,#4]
CMP             R0, #0
LDRSH           R0, [R8,#4]
VCVT.F32.S32    S1, S0
VLDRNE          S0, =-1.0
VLDREQ          S0, =1.0
VMUL.F32        S2, S1, S0
VMOV            S0, R1
LDRSH           R1, [SP,#0xB8+var_B8]
VLDR            S1, =0.4
VCVT.F32.S32    S4, S0
VMOV            S0, R0
MOVNE           R0, #0xFFFFFFFF
MOVEQ           R0, #1
VMUL.F32        S2, S2, S3
MUL             R0, R1, R0
VCVT.F32.S32    S3, S0
LDR             R1, =0x8889
ADD             R0, R0, #0x1E
VMOV            S0, R0
VMUL.F32        S1, S4, S1
VCVT.F32.S32    S0, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
VLDR            S0, =0.0
SXTH            R0, R0
MUL             R1, R0, R1
LDR             R0, [R5,#8]
MOV             R12, R1,ASR#19
SUB             R1, R12, R1,ASR#31
ADD             R1, R2, R1,LSL#2
ADD             R1, R1, R3
VLDR            S4, [R1]
LDRSH           R1, [R0]
VADD.F32        S1, S4, S1
CMP             R1, #0x12
BEQ             loc_23B85C
CMP             R1, #0x13
CMPNE           R1, #0x14
BEQ             loc_23B8A4
VSUB.F32        S4, S2, S16
ADD             R0, R5, R4,LSL#2
VSUB.F32        S2, S1, S17
VSUB.F32        S1, S3, S18
VLDR            S3, [R3,#0x110]
VMLA.F32        S16, S0, S4
VMLA.F32        S17, S0, S2
VMLA.F32        S18, S0, S1
VLDR            S2, [R3,#0x108]
VLDR            S1, [R3,#0x10C]
VADD.F32        S2, S16, S2
VADD.F32        S1, S17, S1
VADD.F32        S3, S18, S3
B               loc_23B818
DCD 0x8889
DCD 0x19C58
DCFS 0.0
DCFS 2.0
DCFS 1.5708
DCFS 40.744
DCFS 0.2
DCFS 3.1416
DCFS -0.5
DCFS 1.2
DCFS 199.0
DCFS -1.0
DCFS 1.5
DCFS 0.4
VSTR            S2, [R6,#0x28]
VSTR            S1, [R6,#0x2C]
VLDR            S1, =1.0
ADD             R0, R0, #0x400
VSTR            S3, [R6,#0x30]
VSUB.F32        S0, S1, S0
VLDR            S2, [R0,#0x3F0]
VMUL.F32        S0, S2, S0
VSTR            S0, [R6,#0x18]
LDR             R0, [SP,#0xB8+var_28]
CMP             R0, #0
VMOVEQ.F32      S0, S1
VLDRNE          S0, =-1.0
ADD             R0, R6, #4
VSTM            R0, {S0-S1}
VSTR            S1, [R6,#0xC]
B               def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
LDRSH           R1, [R0,#6]!
CMP             R1, #0
BLT             loc_23B7A8
LDRSH           R0, [R0,#2]
CMP             R0, R1
CMPGT           R0, #1
BLE             loc_23B8A4
VMOV            S0, R0
VMOV            S5, R1
VLDR            S4, =1.0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S5, S5
VSUB.F32        S6, S0, S4
VDIV.F32        S0, S5, S6
VMOV            R0, S0
CMP             R0, #0x3F800000
VMOVGT.F32      S0, S4
B               loc_23B7A8
VLDR            S0, =1.0
B               loc_23B7A8
RSB             R0, R4, R4,LSL#4; jumptable 0023B2A0 cases 19,20
MOV             R2, #0x1E
ADD             R7, R9, R0,LSL#1
MOV             R1, R7
MOV             R0, SP
BL              sub_2FF3D8
LDRSH           R0, [R7]
LDRSH           R1, [R8,#2]
LDRSH           R2, [R8,#4]
VMOV            S0, R0
LDR             R0, [SP,#0xB8+var_28]
CMP             R0, #0
LDR             R0, [R5,#8]
VCVT.F32.S32    S1, S0
VLDRNE          S0, =-1.0
VLDREQ          S0, =1.0
VLDR            S5, [R0,#0x360]
VLDR            S3, [R0,#0x364]
MOVNE           R0, #0xFFFFFFFF
MOVEQ           R0, #1
VMUL.F32        S4, S1, S0
VMOV            S1, R1
LDRSH           R1, [SP,#0xB8+var_B8]
VMOV            S0, R2
LDR             R2, =0x8889
MUL             R0, R1, R0
VCVT.F32.S32    S2, S1
LDR             R1, [R5,#4]
ADD             R0, R0, #0x1E
VCVT.F32.S32    S1, S0
VMUL.F32        S0, S4, S5
VMUL.F32        S2, S2, S3
VMOV            S3, R0
VCVT.F32.S32    S3, S3
VCVT.S32.F32    S3, S3
VMOV            R0, S3
SXTH            R0, R0
MUL             R0, R0, R2
LDR             R2, =0x19C58
MOV             R3, R0,ASR#19
SUB             R0, R3, R0,ASR#31
ADD             R0, R2, R0,LSL#2
ADD             R0, R0, R1
VLDR            S3, [R0]
ADD             R0, R1, #0x108
VADD.F32        S2, S3, S2
VLDM            R0, {S3-S5}
VADD.F32        S0, S3, S0
VADD.F32        S1, S5, S1
VADD.F32        S2, S4, S2
VSTR            S0, [R6,#0x28]
VLDR            S0, =1.0
VSTR            S2, [R6,#0x2C]
VSTR            S1, [R6,#0x30]
VLDRNE          S1, =-1.0
VLDREQ          S1, =1.0
VSTR            S1, [R6,#4]
VSTR            S0, [R6,#8]
VSTR            S0, [R6,#0xC]
B               def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
LDR             R0, [SP,#0xB8+var_28]; jumptable 0023B2A0 cases 26-28
ADD             R1, R4, R4,LSL#1
VLDR            S7, =1.0
CMP             R0, #0
ADD             R0, R5, R1,LSL#2
LDRSH           R1, [R8,#4]
VLDR            S3, [R0,#0x70]
VLDR            S2, [R0,#0x74]
VLDR            S1, [R0,#0x78]
LDRSH           R0, [R8]
VNEGNE.F32      S3, S3
VMOV            S0, R0
LDRSH           R0, [R8,#2]
VCVT.F32.S32    S4, S0
VLDRNE          S0, =-1.0
VLDREQ          S0, =1.0
VMUL.F32        S5, S4, S0
VMOV            S0, R0
VMOV            S4, R1
LDR             R1, [R5,#8]
VCVT.F32.S32    S6, S0
VCVT.F32.S32    S4, S4
VMOV.F32        S0, S7
LDRH            R2, [R1]
CMP             R2, #0x1A
BNE             loc_23BA24
LDRSH           R1, [R1,#6]
VLDR            S8, =0.14286
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S8
VMOV            R1, S0
CMP             R1, #0x3F800000
VMOVGT.F32      S0, S7
VSUB.F32        S5, S5, S3
VSUB.F32        S4, S4, S1
VSUB.F32        S6, S6, S2
LDR             R1, [R5,#8]
MOV             R2, R1
VMLA.F32        S3, S0, S5
VMLA.F32        S1, S0, S4
VLDR            S4, [R1,#0x360]
VMLA.F32        S2, S0, S6
LDRH            R1, [R1]
CMP             R1, #0x1C
VMUL.F32        S3, S3, S4
BNE             loc_23BA88
VMOV            S4, R0
VLDR            S6, =167.0
ADD             R0, R5, #0x800
VLDR            S8, =0.005988
VLDR            S5, [R0,#0x270]
VCVT.F32.S32    S9, S4
VSUB.F32        S5, S5, S7
VMOV.F32        S4, S7
VSUB.F32        S6, S6, S9
VMUL.F32        S6, S6, S8
VMLA.F32        S4, S5, S6
VMUL.F32        S3, S4, S3
VLDR            S4, [R2,#0x364]
LDR             R0, [R5,#4]
VMUL.F32        S2, S2, S4
ADD             R0, R0, #0x108
VLDR            S6, [R0]
VLDR            S4, [R0,#8]
VLDR            S5, [R0,#4]
VADD.F32        S3, S3, S6
VADD.F32        S4, S1, S4
ADD             R0, R5, R4,LSL#2
ADD             R0, R0, #0x400
VADD.F32        S1, S2, S5
VSTR            S3, [R6,#0x28]
VSTR            S1, [R6,#0x2C]
VSUB.F32        S1, S7, S0
VSTR            S4, [R6,#0x30]
VLDR            S0, [R0,#0x3F0]
VMUL.F32        S0, S0, S1
VSTR            S0, [R6,#0x18]
LDR             R0, [SP,#0xB8+var_28]
CMP             R0, #0
VMOVEQ.F32      S0, S7
VLDRNE          S0, =-1.0
VSTR            S0, [R6,#4]
VSTR            S7, [R6,#8]
VSTR            S7, [R6,#0xC]
B               def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
RSB             R0, R4, R4,LSL#4; jumptable 0023B2A0 case 21
VLDR            S22, =0.5
ADD             R0, R9, R0,LSL#1
VLDR            S16, =2.0
LDRSH           R2, [R0]
LDRSH           R1, [R0,#2]
LDRSH           R0, [R0,#4]
VMOV            S2, R2
VMOV            S0, R1
VMOV            S1, R0
ADD             R0, R6, #0x2C ; ','
VLDR            S18, =1.5
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSTR            S2, [R6,#0x28]
VSTM            R0, {S0-S1}
LDR             R0, [R5,#8]
VLDR            S0, [R0,#0x328]
VLDR            S17, [R0,#0x32C]
VMLA.F32        S16, S0, S22
VDIV.F32        S0, S2, S16
BL              sub_5F5B2C
VLDR            S1, =57.296
VLDR            S21, =0.71111
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S21
BL              sub_464380
LDRD            R0, R1, [R5,#4]
VLDR            S20, =1.0
VLDR            S1, =0.025
VLDR            S2, [R0,#0x10C]
VLDR            S3, [R0,#0x11C]
VSUB.F32        S0, S20, S0
LDRB            R0, [R1,#4]
VSUB.F32        S2, S2, S3
CMP             R0, #0
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S16
VLDRNE          S16, =180.0
VMUL.F32        S19, S0, S18
BEQ             loc_23BC88
VMUL.F32        S0, S16, S21
BL              sub_464380
VSUB.F32        S0, S0, S20
VLDR            S1, =0.6
VMUL.F32        S18, S0, S1
VMUL.F32        S0, S16, S21
BL              sub_464380
VMOV.F32        S1, S17
VLDR            S3, [R6,#0x2C]
VMLA.F32        S1, S17, S18
B               loc_23BBF4
DCFS 1.0
DCFS 0.14286
DCFS 167.0
DCFS 0.005988
DCFS 0.5
DCFS 57.296
DCFS 0.71111
DCFS 0.025
DCFS 180.0
DCFS 0.6
VMOV.F32        S2, S20
LDR             R0, [SP,#0xB8+var_28]
CMP             R0, #0
VMLA.F32        S2, S0, S22
VSUB.F32        S0, S3, S19
VSUB.F32        S3, S17, S0
VADD.F32        S0, S2, S18
VMLS.F32        S1, S3, S0
VSTR            S1, [R6,#0x2C]
LDR             R0, [R5,#8]
VLDR            S0, [R6,#0x28]
VLDR            S1, [R0,#0x360]
VMUL.F32        S0, S0, S1
VMOVEQ.F32      S1, S20
VLDRNE          S1, =-1.0
VSTR            S0, [R6,#0x28]
VMUL.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
LDR             R0, [R5,#4]
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
VMOVEQ.F32      S0, S20
VLDRNE          S0, =-1.0
VSTR            S0, [R6,#4]
VSTR            S20, [R6,#8]
VSTR            S20, [R6,#0xC]
B               def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
VMUL.F32        S1, S2, S1
VLDR            S0, =180.0
LDR             R1, =0x42B40000
VMUL.F32        S16, S1, S0
VMOV            R0, S16
CMP             R0, R1
VLDRLE          S18, =0.0
BLE             loc_23BBB4
B               loc_23BBA0
RSB             R0, R4, R4,LSL#4; jumptable 0023B2A0 case 22
VLDR            S23, =2.0
ADD             R0, R9, R0,LSL#1
VLDR            S22, =0.5
LDRSH           R1, [R0]
LDRSH           R2, [R0,#2]
LDRSH           R0, [R0,#4]
VMOV            S0, R1
VMOV            S1, R2
VMOV            S2, R0
ADD             R0, R6, #0x28 ; '('
VMOV.F32        S17, S23
VLDR            S18, =1.5
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
VSTM            R0, {S0-S2}
VMOV.F32        S1, S0
LDR             R0, [R5,#8]
VLDR            S0, [R0,#0x328]
VLDR            S20, [R0,#0x32C]
VMLA.F32        S17, S0, S22
VDIV.F32        S0, S1, S17
BL              sub_5F5B2C
VLDR            S1, =57.296
VLDR            S19, =0.71111
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S19
BL              sub_464380
VLDR            S24, =1.0
VLDR            S2, =0.025
VLDR            S1, [R5,#0x4C]
VSUB.F32        S4, S24, S0
VMUL.F32        S0, S17, S2
VLDR            S3, =4.5
LDR             R0, =0x42B40000
VMUL.F32        S16, S1, S3
VMUL.F32        S2, S4, S1
VMOV            R1, S16
CMP             R1, R0
VMUL.F32        S0, S2, S0
VMUL.F32        S21, S0, S18
VLDRLE          S18, =0.0
BLE             loc_23BD70
VMUL.F32        S0, S16, S19
BL              sub_464380
VSUB.F32        S0, S0, S24
VLDR            S1, =0.6
VMUL.F32        S18, S0, S1
VMUL.F32        S0, S16, S19
BL              sub_464380
VMOV.F32        S1, S24
LDRSH           R0, [R5,#0x40]
LDRSH           R1, [R5,#0x42]
CMP             R0, R1
VMLA.F32        S1, S0, S22
VADD.F32        S19, S1, S18
BGE             def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
CMP             R0, #0
VLDRLT          S0, =0.0
BLT             loc_23BDC4
CMP             R1, #1
VMOVLE.F32      S0, S24
BLE             loc_23BDC4
VMOV            S0, R1
VMOV            S1, R0
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S0, S24
VDIV.F32        S0, S1, S2
VLDR            S1, [R5,#0x4C]
VLDR            S2, =0.066667
VMOV.F32        S16, S24
VMUL.F32        S1, S1, S2
VMOV            R0, S1
CMP             R0, #0x3F800000
VMOVGT.F32      S1, S24
VMOV            R0, S0
CMP             R0, #0x3F000000
VMLS.F32        S16, S1, S22
BGT             loc_23BE24
VMUL.F32        S0, S0, S23
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VSUB.F32        S1, S24, S16
VMOV.F32        S2, S24
VSUB.F32        S3, S24, S0
VMLS.F32        S2, S1, S0
VMUL.F32        S1, S3, S21
VMUL.F32        S2, S2, S19
B               loc_23BE60
VSUB.F32        S0, S0, S22
VMOV.F32        S1, S24
VMLS.F32        S1, S0, S23
VLDR            S0, =3.1416
VMUL.F32        S0, S1, S0
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S1, =-0.5
VMOV.F32        S2, S24
VMLA.F32        S22, S0, S1
VMOV.F32        S0, S24
VLDR            S1, =0.0
VNMLS.F32       S0, S19, S16
VMLA.F32        S2, S22, S0
LDRB            R0, [R5,#0x5C]
CMP             R0, #0
BEQ             loc_23BF6C
VADD.F32        S4, S18, S24
VLDR            S0, =50.0
VLDR            S3, =0.0
VADD.F32        S5, S20, S0
VNMLS.F32       S0, S5, S4
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S3
VLDR            S3, [R6,#0x2C]
VSUB.F32        S1, S3, S1
VSUB.F32        S1, S20, S1
VMLS.F32        S0, S1, S2
VSTR            S0, [R6,#0x2C]
LDR             R1, [R5,#8]
VLDR            S0, [R6,#0x28]
LDR             R0, [SP,#0xB8+var_28]
VLDR            S1, [R1,#0x360]
CMP             R0, #0
VMUL.F32        S0, S0, S1
VMOVEQ.F32      S1, S24
VLDRNE          S1, =-1.0
VSTR            S0, [R6,#0x28]
VMUL.F32        S0, S0, S1
VSTR            S0, [R6,#0x28]
LDR             R1, [R5,#4]
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
VMOVEQ.F32      S0, S24
VLDRNE          S0, =-1.0
VSTR            S0, [R6,#4]
VSTR            S24, [R6,#8]
VSTR            S24, [R6,#0xC]
LDR             R0, =byte_68DBBA; jumptable 0023B2A0 default case, cases 5-16,35
ADD             R1, R4, #1
UXTH            R4, R1
LDRB            R0, [R0]
CMP             R4, R0
BCC             loc_23ABF8
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D12}
ADD             SP, SP, #8
POP             {R4-R11,PC}
DCFS -1.0
DCD 0x42B40000
DCFS 0.0
DCFS 2.0
DCFS 1.5
DCFS 4.5
DCFS 0.066667
DCFS 1.5708
DCFS 40.744
DCFS 3.1416
DCFS -0.5
DCFS 50.0
VLDR            S0, [R6,#0x2C]
VSUB.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
B               loc_23BE9C
LDR             R1, [R5,#8]; jumptable 0023B2A0 cases 29-34,36-43
LDRH            R0, [R1]
CMP             R0, #0x1E
BNE             loc_23C044
LDRSH           R0, [R1,#6]
VLDR            S0, =30.0
VLDR            S16, =0.5
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23C044
LDRB            R0, [R5,#0xAC1]
CMP             R0, #1
BEQ             loc_23C044
LDR             R1, =0x206B
MOV             R0, R7
BL              sub_543494
LDR             R0, [R7]
MOV             R3, #0
LDRSH           R1, [R8,#0x1A]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R7
BLX             R12
RSB             R0, R4, R4,LSL#4
ADD             R0, R9, R0,LSL#1
LDRH            R0, [R0,#0x1C]
CMP             R0, #0
BNE             loc_23C044
LDR             R7, [R7,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#3
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VLDRNE          S1, =1.0
ADD             R0, R7, #0x10
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S16
VADDNE.F32      S0, S0, S1
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
RSB             R0, R4, R4,LSL#4
MOV             R2, #0x1E
ADD             R1, R9, R0,LSL#1
MOV             R0, SP
BL              sub_2FF3D8
LDRSH           R1, [R5,#0x42]
LDRSH           R0, [R5,#0x40]
VMOV            S0, R1
CMP             R0, R1
BGE             loc_23C168
CMP             R0, #0
VLDRLT          S0, =0.0
BLT             loc_23C0AC
VMOV            R1, S0
CMP             R1, #1
VLDRLE          S0, =1.0
BLE             loc_23C100
VCVT.F32.S32    S0, S0
VMOV            S1, R0
VLDR            S2, =1.0
VCVT.F32.S32    S1, S1
VSUB.F32        S2, S0, S2
VDIV.F32        S0, S1, S2
VMOV            R0, S0
CMP             R0, #0x3F000000
BGE             loc_23C100
VLDR            S2, =2.0
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, =0.2
VLDR            S1, =1.0
LDRSH           R0, [SP,#0xB8+var_B8]
LDR             R1, [R5,#8]
VMLA.F32        S1, S0, S2
VMOV            S0, R0
VCVT.F32.S32    S2, S0
VLDR            S0, [R1,#0x360]
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0xB8+var_B8]
B               loc_23C168
VLDR            S16, =0.5
VLDR            S17, =1.0
VLDR            S1, =2.0
VSUB.F32        S2, S0, S16
VMOV.F32        S0, S17
VMLS.F32        S0, S2, S1
VLDR            S1, =3.1416
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S1, =-0.5
LDR             R1, [R5,#8]
LDRSH           R0, [SP,#0xB8+var_B8]
VMLA.F32        S16, S0, S1
VMOV.F32        S0, S17
VLDR            S1, =1.2
VLDR            S2, [R1,#0x360]
VNMLS.F32       S0, S2, S1
VMOV            S1, R0
VMLA.F32        S17, S0, S16
VCVT.F32.S32    S0, S1
VMUL.F32        S0, S0, S17
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [SP,#0xB8+var_B8]
VLDR            S0, =1.0
LDR             R0, [R5,#8]
LDR             R3, [SP,#0xB8+var_28]
VMOV.F32        S1, S0
ADD             R0, R0, #0x10
MOV             R2, SP
ADD             R1, SP, #0xB8+var_98
BL              sub_5E3D94
ADD             R1, SP, #0xB8+var_98
ADD             R0, R5, #0x800
VLDM            R1, {S1-S2}
VLDR            S0, [R0,#0x290]
LDR             R1, [R5,#8]
VLDR            S3, [R0,#0x28C]
VSUB.F32        S0, S2, S0
LDRH            R1, [R1]
VSUB.F32        S1, S1, S3
CMP             R1, #0x22 ; '"'
VLDREQ          S2, =99.5
VSUBEQ.F32      S0, S0, S2
BEQ             loc_23C1D0
LDRSH           R2, [R5,#0x40]
LDRSH           R1, [R5,#0x42]
CMP             R2, R1
VLDRLT          S2, [R5,#0x48]
VMULLT.F32      S0, S0, S2
ADD             R1, R5, #0x800
ADD             R1, R1, #0x2A8
ADD             R2, R6, #0x28 ; '('
VLDR            S2, [R1]
VLDR            S7, [R1,#0xC]
VLDR            S5, [R1,#0x10]
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S7, S1
VLDR            S6, [R1,#4]
VLDR            S3, [R1,#0x14]
VLDR            S4, [R1,#8]
LDR             R1, [R5,#4]
ADD             R1, R1, #0x108
VMLA.F32        S2, S6, S0
VMLA.F32        S1, S5, S0
VADD.F32        S2, S2, S4
VADD.F32        S3, S1, S3
VLDM            R1, {S0-S1}
LDR             R1, [SP,#0xB8+var_90]
VADD.F32        S0, S2, S0
VADD.F32        S1, S3, S1
VSTM            R2, {S0-S1}
STR             R1, [R6,#0x30]
VLDR            S0, =0.017453
VLDR            S1, [R0,#0x29C]
VMUL.F32        S0, S1, S0
VSTR            S0, [R6,#0x18]
B               def_23B2A0; jumptable 0023B2A0 default case, cases 5-16,35
