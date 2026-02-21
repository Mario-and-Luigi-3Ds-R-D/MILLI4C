PUSH            {R4-R11,LR}
MOV             R1, #0
MOV             R9, R0
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0xFC
VPUSH           {D8}
MOV             R10, R1
LDR             R0, [R0]
LDR             R2, =0x97B425ED
ADD             R7, R9, #0x14800
ADD             R7, R7, #0x36C
LDR             R12, [R0,#0x54]
SUB             SP, SP, #4
UMLAL           R2, R1, R12, R2
MOVS            R8, R1,LSR#6
STREQ           R10, [R7]
BEQ             loc_18F598
ADD             R1, R9, #0x14C00
ADD             R1, R1, #0x3F8
MOV             R3, #0
LDR             R6, [R1]
STR             R10, [R1]
LDR             R1, [R0,#0x50]
MOV             R2, R3
ADD             R4, R0, R1
MOV             R0, #0x94
ADD             R1, R9, #0x13C00
MUL             R0, R8, R0
ADD             R1, R1, #0x5C ; '\'
STR             R1, [SP,#0x30+var_30]
BL              sub_1143B4
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_18F2C8
LDR             R1, =nullsub_893
MOV             R3, R8
MOV             R2, #0x94
BLX             sub_1002F4
MOV             R5, R0
VLDR            S16, =0.017453
MOV             R11, #2
STR             R5, [R7]
LDRB            R0, [R5]
LDR             R2, [R4,#0x28]
MVN             R1, R6
BIC             R0, R0, #1
AND             R2, R2, #1
ORR             R0, R0, R2
AND             R1, R11, R1,LSL#1
BIC             R0, R0, #2
ORR             R0, R0, R1
STRB            R0, [R5]
LDR             R0, [R4,#0x28]
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#28
STRB            R0, [R5,#1]
STRH            R10, [R5,#2]
LDRH            R0, [R4,#0x18]
STRH            R0, [R5,#4]
LDRH            R0, [R4,#0x1A]
STRH            R0, [R5,#6]
LDRSH           R0, [R4]
LDRSH           R2, [R4,#2]
LDRSH           R3, [R4,#4]
VMOV            S1, R0
LDRSH           R12, [R4,#6]
LDRSH           LR, [R4,#8]
VMOV            S0, R2
LDRSH           R1, [R4,#0xA]
VMOV            S3, R3
VCVT.F32.S32    S1, S1
VMOV            S2, R12
VMOV            S4, LR
VMOV            S5, R1
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S3, S3
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S4, S4
VSTR            S1, [R5,#8]
VCVT.F32.S32    S1, S5
VSTR            S0, [R5,#0xC]
VSTR            S3, [R5,#0x10]
VSTR            S2, [R5,#0x14]
VSTR            S4, [R5,#0x18]
VSTR            S1, [R5,#0x1C]
LDRSH           R0, [R4,#0xE]
LDRSH           R1, [R4,#0xC]
VMOV            S5, R0
LDRSH           R0, [R4,#0x12]
VMOV            S2, R1
LDRSH           R1, [R4,#0x10]
VMOV            S0, R0
LDRSH           R0, [R4,#0x16]
VMOV            S1, R1
LDRSH           R1, [R4,#0x14]
VMOV            S4, R0
VCVT.F32.S32    S2, S2
VMOV            S3, R1
VCVT.F32.S32    S5, S5
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S4, S4
ADD             R0, R5, #0x30 ; '0'
VCVT.F32.S32    S3, S3
VSTR            S2, [R5,#0x20]
VSTR            S5, [R5,#0x24]
VSTR            S1, [R5,#0x28]
VSTR            S0, [R5,#0x2C]
VSTM            R0, {S3-S4}
LDRSH           R0, [R4,#0x1C]
LDRSH           R1, [R4,#0x1E]
LDRSH           R2, [R4,#0x20]
VMOV            S0, R0
VMOV            S1, R1
VMOV            S2, R2
VCVT.F32.S32    S4, S0
VCVT.F32.S32    S3, S1
VCVT.F32.S32    S0, S2
ADD             R0, R5, #0x38 ; '8'
VMUL.F32        S1, S4, S16
VMUL.F32        S2, S3, S16
VMUL.F32        S0, S0, S16
VSTR            S0, [R5,#0x40]
VSTM            R0, {S1-S2}
LDRSH           R0, [R4,#0x22]
LDRSH           R1, [R4,#0x24]
LDRSH           R2, [R4,#0x26]
VMOV            S0, R0
VMOV            S1, R1
VMOV            S2, R2
MOV             R2, #0x20 ; ' '
ADD             R1, R4, #0x2C ; ','
ADD             R0, R5, #0x50 ; 'P'
VCVT.F32.S32    S3, S0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S2
VMUL.F32        S2, S3, S16
VMUL.F32        S1, S1, S16
VMUL.F32        S0, S0, S16
VSTR            S2, [R5,#0x44]
VSTR            S1, [R5,#0x48]
VSTR            S0, [R5,#0x4C]
BL              sub_1103A4
MOV             R2, #8
ADD             R1, R4, #0x4C ; 'L'
ADD             R0, R5, #0x70 ; 'p'
BL              sub_1103A4
MOV             R2, #8
ADD             R1, R4, #0x54 ; 'T'
ADD             R0, R5, #0x78 ; 'x'
BL              sub_1103A4
MOV             R2, #8
ADD             R1, R4, #0x5C ; '\'
ADD             R0, R5, #0x80
BL              sub_1103A4
MOV             R2, #8
ADD             R1, R4, #0x64 ; 'd'
ADD             R0, R5, #0x88
BL              sub_1103A4
MOV             R3, #0
LDR             R1, [SP,#0x30+var_30]
MOV             R2, R3
MOV             R0, R8
BL              sub_1143B4
MOV             R2, R8
MOV             R1, #0
STR             R0, [R5,#0x90]
BL              sub_110BE4
LDR             R0, [R4,#0x28]
TST             R0, #1
BEQ             loc_18F5D0
LDR             R0, [R7]
MOV             R3, #0
MOV             R4, #1
LDR             R1, [R7]
MOV             R2, #0
CMP             R3, R2
BEQ             loc_18F570
VLDR            S0, [R0,#0xC]
VLDR            S1, [R1,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_18F570
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_18F570
VLDR            S0, [R0,#0x14]
VLDR            S1, [R1,#0x10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_18F570
VLDR            S0, [R0,#0x10]
VLDR            S1, [R1,#0x14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_18F570
VLDR            S0, [R0,#0x1C]
VLDR            S1, [R1,#0x18]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_18F570
VLDR            S0, [R0,#0x18]
VLDR            S1, [R1,#0x1C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
LDRLS           R12, [R0,#0x90]
STRBLS          R4, [R12,R2]
LDRB            R12, [R1]
TST             R12, #1
ADDEQ           R2, R2, #1
ADDEQ           R1, R1, #0x94
BEQ             loc_18F4EC
LDRB            R1, [R0]
TST             R1, #1
ADDEQ           R3, R3, #1
ADDEQ           R0, R0, #0x94
BEQ             loc_18F4E4
LDR             R0, [R9]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DD24
LDM             R0, {R1,R2}
ADD             SP, SP, #4
MOV             R0, R9
VPOP            {D8}
POP             {R4-R11,LR}
BX              R12
DCD 0x97B425ED
DCD nullsub_893
DCFS 0.017453
DCD off_67DD24
ADD             R4, R4, #0x6C ; 'l'
ADD             R5, R5, #0x94
MOV             R6, R6,LSR#1
B               loc_18F2D4
