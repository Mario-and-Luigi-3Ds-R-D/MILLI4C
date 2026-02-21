PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R7, R2
MOV             R5, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x2C
VMOV.F64        D8, D0
VLDR            S0, [SP,#0x60+arg_10]
VLDR            S1, =2.0
ADD             R0, SP, #0x60+arg_8
VCVT.F32.S32    S0, S0
LDM             R0, {R2,R6}
ADD             R0, SP, #0x60+arg_0
LDM             R0, {R9,R10}
MOV             R0, #0xFFFFFFFF
STR             R1, [R4,#0xC]
STR             R3, [R4,#0x40]
STR             R5, [R4,#0x1C]
STR             R7, [R4,#8]
VMUL.F32        S0, S0, S1
LDR             R1, [R4,#4]
MOV             R3, #0
STR             R5, [R1]
STR             R2, [R4,#0x20]
MOV             R2, R3
MOV             R1, R3
VCVT.S32.F32    S0, S0
VSTR            S0, [R4,#0x24]
STR             R5, [R4,#0x10]
STR             R5, [R4,#0x28]
STR             R5, [R4,#0x2C]
STR             R5, [R4,#0x2C0]
STR             R0, [R4,#0x218]
ADD             R0, R4, #0x2AC
STR             R5, [R4,#0x214]
BL              sub_140180
VLDR            S18, =90.0
MOV             R2, #0
MOV             R1, R5
VMUL.F32        S0, S16, S18
ADD             R0, R4, #0x298
BL              sub_140098
LDR             R0, [R4,#0x2C0]
ORR             R0, R0, #4
STR             R0, [R4,#0x2C0]
ADDS            R0, R4, #0x280
VMOVNE.F32      S0, S17
BLNE            sub_13631C
MOV             R2, #0x28 ; '('
MOV             R1, #0
ADD             R0, R4, #0x220
BL              sub_12B588
MOV             R5, #0
STR             R5, [R4,#0x30]
LDR             R0, [R4,#4]
MOV             R3, R5
MOV             R2, R5
ADD             R0, R0, #4
MOV             R1, R5
BL              sub_13F890
LDR             R0, [R4,#4]
MOV             R1, #0x80
VMOV.F32        S0, S18
MOV             R2, #0
STR             R5, [R0,#0x90]
LDR             R0, [R4,#4]
STR             R5, [R0,#0x8C]
LDR             R0, [R4,#4]
STR             R5, [R0,#0x88]
LDR             R0, [R4,#4]
STR             R1, [R0,#0x88]
LDR             R0, [R4,#4]
MOV             R1, R2
ADD             R0, R0, #0x48 ; 'H'
BL              sub_140098
VLDR            S16, =1.0
LDR             R0, [R4,#4]
MOV             R2, #0
VMOV.F32        S0, S16
ADD             R0, R0, #0x18
MOV             R1, R2
BL              sub_140098
LDR             R0, [R4,#4]
VMOV.F32        S0, S16
MOV             R2, #0
ADD             R0, R0, #0x30 ; '0'
MOV             R1, R2
BL              sub_140098
LDR             R0, [R4,#4]
STR             R5, [R0,#0x90]
LDR             R0, [R4,#4]
STR             R5, [R0,#0x94]
LDR             R0, [R4,#4]
STR             R5, [R0,#0x8C]
LDR             R0, [R4,#4]
ADDS            R0, R0, #0x74 ; 't'
BEQ             loc_134F70
MOV             R1, #0
STR             R1, [R0]
STRH            R1, [R0,#4]
STRH            R1, [R0,#6]
MOV             R3, #0
MOV             R2, R3
MOV             R1, R3
ADD             R0, R4, #0x1A4
BL              sub_140180
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x200
BL              sub_140098
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x1C4
BL              sub_140098
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x1D8
BL              sub_140098
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x1EC
BL              sub_140098
MOV             R5, #0
ADD             R0, R5, R5,LSL#2
ADD             R0, R4, R0,LSL#4
ADDS            R0, R0, #0x2D4
BLNE            sub_134434
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_134FD8
ADD             R0, R4, #0x400
ADD             R0, R0, #0x7C ; '|'
STR             R6, [R4,#0x478]
STR             R0, [SP,#0x60+var_48]
STR             R6, [R4,#0x47C]
LDR             R0, [R7,#0x10]
SUB             R0, R0, #0x12C
CMP             R0, #2
BHI             loc_1351E0
LDR             R8, [R4,#0x40]
VLDR            S1, =0.007874
MOV             R7, #0
ADD             R1, R8, #0x24 ; '$'
LDRSB           R2, [R8,#0x1E]
LDRSB           R0, [R8,#0x1F]
MOV             R3, R10
CMP             R0, #0
ADD             R11, R1, R2,LSL#3
ADDNE           R11, R11, R0,LSL#3
LDRSB           R0, [R8,#0x21]
MOV             R2, R9
ADD             R1, SP, #0x60+var_58
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x3C]
STR             R7, [SP,#0x60+var_58]
STR             R7, [SP,#0x60+var_54]
STR             R7, [SP,#0x60+var_50]
STR             R7, [SP,#0x60+var_4C]
LDRSB           R0, [R8,#0x1E]
STR             R0, [SP,#0x60+var_60]
MOV             R0, R4
BL              sub_13F564
CMP             R0, #0
NOP
BLE             loc_1351CC
LDRSB           R2, [R8,#0x1E]
LDR             R0, [R4]
MOV             R1, R4
BL              sub_133F64
MOVS            R6, R0
NOP
BEQ             loc_13518C
LDRSB           R1, [R8,#0x1E]
ADD             R7, SP, #0x60+var_58
MOV             R0, R10
BL              sub_2FEFCC
MOV             R1, R0,ASR#31
STR             R0, [SP,#0x60+var_5C]
ADD             R0, R0, R1,LSR#29
MOV             R5, #0
MOV             R0, R0,ASR#3
MOV             R9, R5
RSB             R0, R0, R0,LSL#3
MOV             R10, R0,LSL#1
LDR             R0, [R4,#0x47C]
ADD             R1, R0, R10
LDR             R0, [SP,#0x60+var_48]
STR             R1, [R0]
LDRSB           R0, [R8,#0x1E]
CMP             R0, #0
BLE             loc_135164
LDR             R0, [R7]
LDR             R1, [SP,#0x60+var_5C]
BL              sub_13298C
LDR             R2, [R7]
RSB             R1, R5, R5,LSL#3
MOV             R0, #0
ADD             R1, R1, R5,LSL#4
STR             R0, [SP,#0x60+var_3C]
ADD             R3, R11, R1,LSL#1; int
ADD             R0, SP, #0x60+var_44
STR             R2, [SP,#0x60+var_48]
ADD             R1, R3, #0x22 ; '"'
STR             R5, [SP,#0x60+var_60]; float
STM             R0, {R1,R10}
ADD             R2, SP, #0x60+var_48; int
LDR             R0, [R6]; int
MOV             R1, R4; int
BL              sub_13FD88
LDR             R0, [R6]
NOP
LDR             R0, [R0]
MOV             R1, #1
ORR             R9, R9, R1,LSL R0
LDRSB           R0, [R8,#0x1E]
ADD             R5, R5, #1
ADD             R7, R7, #4
CMP             R0, R5
ADD             R6, R6, #4
BGT             loc_1350F0
LDR             R0, [R4]
MOV             R1, R9
BL              sub_133EE4
NOP
NOP
B               loc_1351F0
DCFS 2.0
DCFS 90.0
DCFS 1.0
DCFS 0.007874
ADD             R5, SP, #0x60+var_58
ADD             R6, SP, #0x60+var_48
STR             R7, [R4,#0xC]
LDR             R0, [R5]
CMP             R0, #0
BLNE            sub_1361A4
ADD             R5, R5, #4
CMP             R5, R6
BNE             loc_135198
MOV             R1, #0
MOV             R0, R4
BL              sub_13F3A4
LDR             R0, [R4,#0x18]
BIC             R1, R0, #2
STR             R1, [R4,#0x18]
B               loc_1351F0
MOV             R0, R9
BL              sub_1361A4
STR             R7, [R4,#0xC]
NOP
B               loc_1351F0
MOV             R0, R9
BL              sub_1361A4
MOV             R0, #0
STR             R0, [R4,#0xC]
MOV             R0, #0
STR             R0, [R4,#0x14]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8-D9}
POP             {R4-R11,PC}
