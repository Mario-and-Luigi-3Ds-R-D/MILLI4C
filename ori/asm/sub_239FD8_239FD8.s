PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R7, R1
VPUSH           {D8-D12}
SUB             SP, SP, #0x40
LDRD            R0, R1, [R4,#4]
ADD             R6, R0, #0x21000
LDRSH           R2, [R1]
ADD             R5, R0, #0x23000
ADD             R6, R6, #0x15C
CMP             R2, #0x2C; switch 44 cases
ADD             R5, R5, #0x4E0
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_23A008; jumptable 0023A008 default case, cases 5-16,21,22,35
DCD loc_23A0C0; jump table for switch statement
LDR             R3, =byte_68DBBA; jumptable 0023A008 cases 0-4,23-25
VLDR            S0, =0.0
MOV             R1, #0
LDRB            R0, [R3]
VMOV.F32        S4, S0
VMOV.F32        S2, S0
VMOV.F32        S1, S0
CMP             R0, #0
LDRGT           R12, =unk_68C17A
BLE             loc_23A168
RSB             R0, R1, R1,LSL#4
ADD             R1, R1, #1
ADD             R2, R12, R0,LSL#1
LDRSH           R0, [R2]
VMOV            S3, R0
VCVT.F32.S32    S3, S3
VCMPE.F32       S3, S4
VMRS            APSR_nzcv, FPSCR
VMOVGT          S3, R0
VCVTGT.F32.S32  S4, S3
VMOV            S3, R0
VCVT.F32.S32    S3, S3
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC          S0, R0
LDRSH           R0, [R2,#2]
VMOV            S3, R0
VCVTCC.F32.S32  S0, S0
VCVT.F32.S32    S3, S3
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VMOV            S3, R0
VMOVGT          S2, R0
VCVT.F32.S32    S3, S3
VCVTGT.F32.S32  S2, S2
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC          S1, R0
LDRB            R0, [R3]
VCVTCC.F32.S32  S1, S1
CMP             R1, R0
BLT             loc_23A0E8
LDRSH           R0, [R4,#0x40]
LDRSH           R1, [R4,#0x42]
CMP             R0, R1
BGE             loc_23A1AC
VLDR            S1, [R4,#0x48]
VLDR            S3, =209.44
VSUB.F32        S0, S4, S0
VLDR            S2, =1.0
VMUL.F32        S1, S1, S3
LDR             R0, [R4,#8]
VMOV.F32        S3, S2
MOV             R1, SP
ADD             R0, R0, #0x10
BL              sub_5E408C
NOP
NOP
B               loc_23A1CC
VSUB.F32        S0, S4, S0
VLDR            S2, =1.0
LDR             R0, [R4,#8]
VLDR            S1, =209.44
VMOV.F32        S3, S2
ADD             R0, R0, #0x10
MOV             R1, SP
BL              sub_5E408C
LDR             R1, [R4,#4]
VLDR            S2, [SP,#0x88+var_6C]
VLDR            S1, [SP,#0x88+var_78]
ADD             R1, R1, #0x19C00
VLDR            S4, [SP,#0x88+var_70]
VLDR            S3, [R1,#0x64]
VLDR            S5, [R1,#0x58]
VLDR            S16, [SP,#0x88+var_7C]
VADD.F32        S2, S2, S3
VADD.F32        S17, S1, S5
VSUB.F32        S4, S4, S16
VLDR            S0, =0.5
ADD             R0, R4, #0xA00
LDRSH           R2, [R0,#0xCC]
LDRSH           R0, [R0,#0xCE]
CMP             R2, R0
VSUB.F32        S1, S2, S17
VMLA.F32        S16, S4, S0
VMLA.F32        S17, S1, S0
BGE             loc_23A264
ADD             R0, R4, #0x64 ; 'd'
CMP             R7, #0
VLDM            R0, {S0-S1}
LDR             R0, [R4,#4]
VNEGNE.F32      S0, S0
ADD             R0, R0, #0x108
VLDM            R0, {S2-S3}
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2CC
VADD.F32        S19, S0, S2
VADD.F32        S18, S1, S3
BL              sub_45AAB8
VSUB.F32        S2, S16, S19
VSUB.F32        S1, S17, S18
VMLA.F32        S19, S0, S2
VMLA.F32        S18, S0, S1
VMOV.F32        S16, S19
VMOV.F32        S17, S18
ADD             R0, R5, #0x28 ; '('
VSTM            R0, {S16-S17}
B               def_23A008; jumptable 0023A008 default case, cases 5-16,21,22,35
LDR             R0, [R6,#0xA4]; jumptable 0023A008 cases 17-20
LDRH            R1, [R6,#0xB8]
LDRB            R2, [R0,#0x6C]
SUB             R1, R2, R1
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#16
CMPNE           R1, #1
BEQ             loc_23A2A0
CMP             R1, #2
CMPNE           R1, #3
BEQ             loc_23A2E4
B               loc_23A324
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BNE             loc_23A324
LDR             R0, [R4,#4]
LDR             R1, [R6]
MOV             R3, #0
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
VLDR            S0, =2.0
MOV             R2, R3
AND             R0, R0, #0xF
ADD             R1, R0, #2
MOV             R0, R6
BLX             R12
B               loc_23A324
LDR             R0, [R4,#4]
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R1, [R0]
AND             R0, R1, #0xF
MOV             R1, R1,LSL#24
CMP             R0, R1,LSR#28
BEQ             loc_23A324
LDR             R1, [R6]
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
LDR             R12, [R1,#0x3C]
ADD             R1, R0, #2
MOV             R0, R6
BLX             R12
ADD             R8, R4, #0xA00
LDR             R10, =unk_68C17A
LDRH            R9, [R8,#0x84]
MOV             R2, #0x1E
RSB             R0, R9, R9,LSL#4
ADD             R1, R10, R0,LSL#1
MOV             R0, SP
BL              sub_2FF3D8
LDRH            R0, [R8,#0x88]
MOV             R2, #0x1E
RSB             R0, R0, R0,LSL#4
ADD             R1, R10, R0,LSL#1
ADD             R0, SP, #0x88+var_68
BL              sub_2FF3D8
LDRSH           R1, [SP,#0x88+var_88]
CMP             R7, #0
MOVNE           R0, #0xFFFFFFFF
MOVEQ           R0, #1
VLDR            S23, =0.5
MUL             R0, R1, R0
LDR             R1, =0x8889
VLDR            S24, =0.0
ADD             R0, R0, #0x1E
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
MUL             R2, R0, R1
LDR             R1, =0x19C58
LDR             R0, [R4,#4]
MOV             R3, R2,ASR#19
SUB             R2, R3, R2,ASR#31
LDRSH           R3, [SP,#0x88+var_68]
ADD             R2, R1, R2,LSL#2
ADD             R2, R2, R0
VLDR            S1, [R2]
MOVNE           R2, #0xFFFFFFFF
MOVEQ           R2, #1
MUL             R2, R3, R2
LDR             R3, =0x8889
ADD             R2, R2, #0x1E
VMOV            S0, R2
VCVT.F32.S32    S0, S0
VCVT.S32.F32    S0, S0
VMOV            R2, S0
SXTH            R2, R2
MUL             R2, R2, R3
MOV             R3, R2,ASR#19
SUB             R2, R3, R2,ASR#31
RSB             R3, R9, R9,LSL#3
ADD             R1, R1, R2,LSL#2
ADD             R1, R1, R0
LDR             R2, =0x21244
VLDR            S0, [R1]
ADD             R12, R2, R3,LSL#3
VSUB.F32        S2, S0, S1
SUB             R1, R2, #4
ADD             R3, R1, R3,LSL#3
ADD             R12, R12, R0
ADD             R0, R0, R3
LDR             R3, [R4,#4]
VMUL.F32        S16, S2, S23
VCMPE.F32       S16, S24
VMRS            APSR_nzcv, FPSCR
VLDR            S17, [R0]
LDRH            R0, [R8,#0x88]
VLDR            S2, [R12]
VNEGLT.F32      S16, S16
RSB             R0, R0, R0,LSL#3
VSUB.F32        S18, S2, S1
ADD             R2, R2, R0,LSL#3
ADD             R0, R1, R0,LSL#3
ADD             R1, R3, R2
ADD             R0, R0, R3
VLDR            S1, [R1]
VLDR            S19, [R0]
VSUB.F32        S20, S1, S0
VSUB.F32        S1, S19, S17
VSUB.F32        S0, S20, S18
BL              sub_4645C0
VLDR            S1, =1.4062
LDR             R1, =0x42B40000
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S24
VMRS            APSR_nzcv, FPSCR
VLDRCC          S1, =180.0
VADDCC.F32      S0, S0, S1
VLDR            S1, =90.0
VMOV            R0, S0
CMP             R0, R1
VSUBGT.F32      S0, S0, S1
VADDLE.F32      S0, S0, S1
B               loc_23A4D4
DCFS 0.0
DCD byte_68DBBA
DCD unk_68C17A
DCFS 209.44
DCFS 1.0
DCFS 0.5
DCFS 2.0
DCD 0x8889
DCD 0x19C58
DCD 0x21244
DCFS 1.4062
DCFS 180.0
DCD 0x42B40000
DCFS 90.0
VLDR            S1, =0.71111
VMUL.F32        S22, S0, S1
VMOV.F32        S0, S22
BL              sub_464318
VMOV.F32        S21, S0
VMOV.F32        S0, S22
BL              sub_464380
VMOV.F32        S22, S0
VMOV.F32        S0, S24
LDR             R0, [R4,#8]
LDRSH           R1, [R0]
VMOV.F32        S2, S0
CMP             R1, #0x12
BEQ             loc_23A51C
CMP             R1, #0x13
CMPNE           R1, #0x14
BEQ             loc_23A534
B               loc_23A538
ADD             R0, R0, #6
BL              sub_45AAB8
VMOV.F32        S2, S0
VMOV            R0, S2
CMP             R0, #0x3F800000
BLE             loc_23A538
VLDR            S2, =1.0
VSUB.F32        S0, S19, S17
VSUB.F32        S1, S20, S18
VLDR            S5, =1.0
VMUL.F32        S3, S0, S23
VMUL.F32        S0, S1, S23
VLDR            S1, =50.0
VADD.F32        S3, S3, S17
VADD.F32        S0, S0, S18
VSUB.F32        S4, S0, S16
VLDR            S0, =0.3
VMLS.F32        S5, S2, S0
VMUL.F32        S0, S5, S1
VMUL.F32        S1, S21, S0
VMUL.F32        S0, S22, S0
VADD.F32        S1, S3, S1
VADD.F32        S0, S4, S0
VSTR            S1, [R5,#0x28]
VSTR            S0, [R5,#0x2C]
VSTR            S24, [R5,#0x30]
B               def_23A008; jumptable 0023A008 default case, cases 5-16,21,22,35
LDRSH           R1, [R1,#6]; jumptable 0023A008 case 26
VLDR            S1, =0.14286
ADD             R0, R0, #0x17400
VMOV            S0, R1
LDRB            R0, [R0,#0xAD]
VLDR            S4, [R4,#0x64]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.0
VMOV            R1, S0
CMP             R1, #0x3F800000
ADD             R1, R4, #0x68 ; 'h'
VLDRGT          S0, =1.0
CMP             R0, #0
VLDM            R1, {S2-S3}
BEQ             loc_23A5F0
VSUB.F32        S5, S1, S4
VSUB.F32        S6, S2, S2
VSUB.F32        S1, S1, S3
ADD             R0, R5, #0x2C ; ','
VMLA.F32        S4, S0, S5
VMLA.F32        S2, S0, S6
VMLA.F32        S3, S0, S1
VSTR            S4, [R5,#0x28]
VSTM            R0, {S2-S3}
B               loc_23A618
VLDR            S5, =209.44
VSUB.F32        S6, S1, S4
VSUB.F32        S1, S1, S3
VSUB.F32        S5, S5, S2
ADD             R0, R5, #0x2C ; ','
VMLA.F32        S4, S0, S6
VMLA.F32        S3, S0, S1
VMLA.F32        S2, S0, S5
VSTR            S4, [R5,#0x28]
VSTM            R0, {S2-S3}
LDR             R0, [R4,#8]
VLDR            S0, [R5,#0x2C]
VLDR            S1, [R0,#0x364]
VMUL.F32        S0, S0, S1
VSTR            S0, [R5,#0x2C]
LDR             R1, [R4,#4]
VLDR            S0, [R5,#0x28]
ADD             R1, R1, #0x108
VLDR            S1, [R1]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x28]
VLDR            S0, [R5,#0x2C]
VLDR            S1, [R1,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x2C]
VLDR            S0, [R5,#0x30]
VLDR            S1, [R1,#8]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x30]
B               def_23A008; jumptable 0023A008 default case, cases 5-16,21,22,35
ADD             R1, R0, #0x17400; jumptable 0023A008 case 27
LDRB            R2, [R1,#0xAD]
CMP             R2, #0
BEQ             loc_23A6C0
ADD             R2, R0, #0x400
VLDR            S2, [R4,#0x60]
VLDR            S4, [R2,#0xB8]
VLDR            S1, =209.44
VLDR            S0, [R1,#0x1BC]
VDIV.F32        S3, S4, S2
VLDR            S2, [R0,#0x10C]
LDR             R0, [R0,#0x108]
VADD.F32        S4, S2, S1
STR             R0, [R5,#0x28]
VSUB.F32        S0, S0, S4
VMUL.F32        S0, S3, S0
VLDR            S3, =0.0
VADD.F32        S0, S0, S1
VADD.F32        S0, S2, S0
VSTR            S0, [R5,#0x2C]
VSTR            S3, [R5,#0x30]
B               def_23A008; jumptable 0023A008 default case, cases 5-16,21,22,35
VLDR            S0, [R0,#0x10C]
VLDR            S1, =209.44
VLDR            S2, [R0,#0x108]
ADD             R1, R5, #0x2C ; ','
VADD.F32        S0, S0, S1
VLDR            S1, =0.0
VSTR            S2, [R5,#0x28]
VSTM            R1, {S0-S1}
B               def_23A008; jumptable 0023A008 default case, cases 5-16,21,22,35
VLDR            S1, [R1,#0x364]; jumptable 0023A008 case 28
VLDR            S0, [R0,#0x10C]
VLDR            S2, =193.44
LDR             R0, [R0,#0x108]
ADD             R2, R5, #0x2C ; ','
VMLA.F32        S0, S1, S2
VLDR            S1, =0.0
STR             R0, [R5,#0x28]
VSTM            R2, {S0-S1}
B               def_23A008; jumptable 0023A008 default case, cases 5-16,21,22,35
VLDR            S16, =0.0; jumptable 0023A008 cases 29-34,36-43
LDR             R3, =byte_68DBBA
MOV             R1, #0
VMOV.F32        S0, S16
LDRB            R0, [R3]
CMP             R0, #0
VMOV.F32        S2, S0
VMOV.F32        S1, S0
VMOV.F32        S3, S0
LDRGT           R12, =unk_68C17A
BLE             loc_23A7B8
RSB             R0, R1, R1,LSL#4
ADD             R1, R1, #1
ADD             R2, R12, R0,LSL#1
LDRSH           R0, [R2]
VMOV            S4, R0
VCVT.F32.S32    S4, S4
VCMPE.F32       S4, S2
VMRS            APSR_nzcv, FPSCR
VMOV            S4, R0
VMOVGT          S2, R0
VCVT.F32.S32    S4, S4
VCVTGT.F32.S32  S2, S2
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC          S0, R0
LDRSH           R0, [R2,#2]
VMOV            S4, R0
VCVTCC.F32.S32  S0, S0
VCVT.F32.S32    S4, S4
VCMPE.F32       S4, S1
VMRS            APSR_nzcv, FPSCR
VMOV            S4, R0
VMOVGT          S1, R0
VCVT.F32.S32    S4, S4
VCVTGT.F32.S32  S1, S1
VCMPE.F32       S4, S3
VMRS            APSR_nzcv, FPSCR
VMOVCC          S3, R0
LDRB            R0, [R3]
VCVTCC.F32.S32  S3, S3
CMP             R1, R0
BLT             loc_23A738
LDRSH           R0, [R4,#0x40]
LDRSH           R1, [R4,#0x42]
CMP             R0, R1
BGE             loc_23A814
VLDR            S1, [R4,#0x48]
VLDR            S3, =209.44
VLDR            S4, =1.0
VSUB.F32        S0, S2, S0
VMUL.F32        S1, S1, S3
LDR             R0, [R4,#8]
VMOV.F32        S3, S4
VMOV.F32        S2, S4
ADD             R0, R0, #0x10
MOV             R1, SP
BL              sub_5E408C
NOP
NOP
B               loc_23A838
DCFS 0.71111
DCFS 0.3
DCFS 50.0
DCFS 0.14286
DCFS 193.44
VLDR            S1, =1.0
VSUB.F32        S0, S2, S0
LDR             R0, [R4,#8]
VMOV.F32        S3, S1
VMOV.F32        S2, S1
ADD             R0, R0, #0x10
VLDR            S1, =209.44
MOV             R1, SP
BL              sub_5E408C
ADD             R0, SP, #0x88+var_7C
VLDR            S0, =0.5
ADD             R8, R4, #0x800
VLDM            R0, {S1-S2}
ADD             R0, SP, #0x88+var_70
VLDR            S21, =90.0
VLDR            S20, =0.71111
VLDM            R0, {S3-S4}
LDR             R0, [R4,#8]
VSUB.F32        S3, S3, S1
VSUB.F32        S4, S4, S2
LDRH            R0, [R0]
CMP             R0, #0x22 ; '"'
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2A8
VLDR            S7, [R0,#0xC]
VMLA.F32        S1, S3, S0
VMLA.F32        S2, S4, S0
VLDR            S0, [R8,#0x290]
VLDR            S3, [R8,#0x28C]
VLDR            S6, [R0,#4]
VLDR            S5, [R0,#0x10]
VLDR            S4, [R0,#8]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S2, S0
VLDREQ          S2, =99.0
VLDR            S3, [R0,#0x14]
VSUBEQ.F32      S0, S0, S2
VLDR            S2, [R0]
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S7, S1
VMLA.F32        S2, S6, S0
VMLA.F32        S1, S5, S0
VLDR            S0, [R8,#0x29C]
VADD.F32        S0, S0, S21
VADD.F32        S18, S2, S4
VADD.F32        S19, S1, S3
VMUL.F32        S0, S0, S20
BL              sub_464318
LDR             R0, [R4,#4]
VLDR            S1, [R8,#0x29C]
VLDR            S17, =12.0
VLDR            S2, [R0,#0x108]
VADD.F32        S1, S1, S21
VADD.F32        S18, S18, S2
VMLA.F32        S18, S0, S17
VMUL.F32        S0, S1, S20
BL              sub_464380
LDRD            R0, R1, [R4,#4]
VLDR            S1, [R0,#0x10C]
LDRSH           R0, [R1]
VADD.F32        S1, S19, S1
CMP             R0, #0x1E
VMLA.F32        S1, S0, S17
VSUB.F32        S17, S1, S17
BEQ             loc_23A980
CMP             R0, #0x21 ; '!'
CMPNE           R0, #0x22 ; '"'
BEQ             loc_23AA88
LDR             R0, [R6,#0xA4]
LDRH            R1, [R6,#0xB8]
LDRB            R0, [R0,#0x6C]
SUB             R0, R0, R1
UXTH            R0, R0
CMP             R0, #2
BEQ             loc_23A960
LDR             R0, [R6]
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
ADD             R1, R7, #2
MOV             R0, R6
BLX             R12
VSTR            S18, [R5,#0x28]
VSTR            S17, [R5,#0x2C]
VSTR            S16, [R5,#0x30]
LDR             R0, [R4,#8]; jumptable 0023A008 default case, cases 5-16,21,22,35
LDRH            R0, [R0]
CMP             R0, #0x15
BEQ             loc_23AAC4
B               loc_23AB04
VLDR            S0, =1.0
VSTR            S0, [R5,#4]
VSTR            S0, [R5,#8]
VSTR            S0, [R5,#0xC]
LDR             R0, [R4,#8]
VLDR            S0, =30.0
LDRSH           R0, [R0,#6]
VMOV.F32        S2, S0
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_23AA34
LDRB            R1, [R4,#0xAC1]
CMP             R1, #1
BEQ             loc_23AA34
LDRH            R1, [R6,#0xB8]
CMP             R1, #8
BNE             loc_23A9E0
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23A960
LDR             R1, =0x2008
MOV             R0, R6
BL              sub_543494
LDRB            R0, [R4,#0xAC0]
CMP             R7, #0
BEQ             loc_23AA08
CMP             R0, #0
MOVEQ           R1, #5
MOVNE           R1, #7
B               loc_23AA14
CMP             R0, #0
MOVNE           R1, #4
MOVEQ           R1, #6
LDR             R0, [R6]
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
B               loc_23A960
LDRH            R0, [R6,#0xB8]
CMP             R0, #8
BEQ             loc_23A960
LDR             R1, =0x2008
MOV             R0, R6
BL              sub_543494
LDRB            R0, [R4,#0xAC0]
CMP             R7, #0
BEQ             loc_23AA68
CMP             R0, #0
BEQ             loc_23AA80
MOV             R1, #3
B               loc_23AA14
CMP             R0, #0
BEQ             loc_23AA78
MOV             R1, #0
B               loc_23AA14
MOV             R1, #2
B               loc_23AA14
MOV             R1, #1
B               loc_23AA14
LDRH            R0, [R6,#0xB8]
CMP             R0, #8
BEQ             loc_23A960
LDR             R1, =0x2008
MOV             R0, R6
BL              sub_543494
LDRB            R0, [R4,#0xAC0]
CMP             R7, #0
BEQ             loc_23AAB8
CMP             R0, #0
BEQ             loc_23AA80
B               loc_23AA60
CMP             R0, #0
BEQ             loc_23AA78
B               loc_23AA70
LDR             R0, [R4,#4]
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R1, [R0]
AND             R0, R1, #0xF
MOV             R1, R1,LSL#24
CMP             R0, R1,LSR#28
BEQ             loc_23AB7C
LDR             R1, [R6]
VLDR            S0, =2.0
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R1,#0x3C]
ADD             R1, R0, #4
MOV             R0, R6
BLX             R12
LDR             R0, [R4,#8]
LDRH            R0, [R0]
CMP             R0, #0x17
BNE             loc_23AB7C
LDR             R0, [R4,#4]
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R0, [R0]
AND             R1, R0, #0xF
MOV             R0, R0,LSL#24
CMP             R1, R0,LSR#28
BEQ             loc_23AB7C
LDR             R0, [R6,#0xA4]
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
MOV             R2, R0
LDR             R0, [R4,#4]
LDR             R1, [R6]
VLDR            S0, =2.0
ADD             R0, R0, #0x2000
ADD             R0, R0, #0x770
LDR             R12, [R1,#0x3C]
LDR             R0, [R0]
MOV             R3, #1
AND             R0, R0, #0xF
ADD             R1, R0, #6
MOV             R0, R6
BLX             R12
LDRH            R0, [R6,#0xB8]
CMP             R0, #0x14
CMPNE           R0, #0x10
BEQ             loc_23ABA4
CMP             R0, #0
BEQ             loc_23ABA4
VLDR            S0, =1.0
VSTR            S0, [R5,#4]
VSTR            S0, [R5,#8]
VSTR            S0, [R5,#0xC]
ADD             SP, SP, #0x40 ; '@'
VPOP            {D8-D12}
POP             {R4-R10,PC}
