MOV             R1, #0
STR             R1, [R0,#0xB68]
NOP
PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R9, #1
MOV             R10, #0
LDR             R8, =off_6CE970
VPUSH           {D8}
SUB             SP, SP, #0x14
STRB            R9, [R0]
STRB            R10, [R0,#0xAF5]
LDR             R5, [R0,#0xB50]
LDR             R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_2590E0
LDR             R0, =0xFFE683CC
LDR             R12, [R8]
LDR             R1, [R5,#4]
LDR             R2, =0x301D8
ADD             R6, R5, #8
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R7, R0
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R7, #0
STR             R7, [R6,#4]
STRNE           R6, [R7,#0x64]
LDR             R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_259104
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#0x14]
CMP             R0, #0
STRNE           R10, [R0,#0x64]
STRNE           R10, [R5,#0x14]
ADD             R5, R4, #4
ADD             R0, R4, #0x38 ; '8'
BL              sub_5A18EC
VLDR            S16, =0.0
MOV             R0, R5
VSTR            S16, [R5,#0x40]
VSTR            S16, [R5,#0x38]
BL              sub_5A18EC
LDR             R7, =off_6CE098
VSTR            S16, [R5,#0xC]
MOV             R6, #0
VSTR            S16, [R5,#4]
STRB            R6, [R5,#0x68]
LDR             R0, [R7]
ADD             R5, R4, #4
LDR             R0, [R0,#0x8C]
LDR             R10, [R0,#0x264]
ADD             R0, R4, #0x38 ; '8'
BL              sub_5A18EC
STR             R10, [R5,#0x40]
STR             R10, [R5,#0x38]
LDR             R0, [R7]
VLDR            S0, =1.0
LDR             R0, [R0,#0x8C]
VLDR            S1, [R0,#0x254]
MOV             R0, R5
BL              sub_5A12F8
STRB            R9, [R5,#0x68]
NOP
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x78]
ADD             R0, R4, #0x70 ; 'p'
STM             R0, {R1,R2}
LDR             R5, [R4,#0xB5C]
STRB            R6, [R5,#0x44]
LDR             R0, [R5]
LDR             R6, [R0,#0x1CC]
ADD             R0, R5, #4
BL              sub_5A18EC
LDR             R0, =off_6CE970
STR             R6, [R5,#0x10]
STR             R6, [R5,#8]
VSTR            S16, [R5,#0x38]
LDR             R1, =0x19DEE8
LDR             R0, [R0]
VLDR            S0, =0.0039062
ADD             R0, R0, R1; loc_19DEE8
VLDR            S1, [R0]
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [R5,#0x3C]
VLDR            S1, [R0]
MOV             R0, R4
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VSTR            S0, [R5,#0x40]
BL              sub_258628
LDR             R0, [R4,#0xB5C]
LDR             R2, [R7]
ADD             R5, R4, #0x800
ADD             R5, R5, #0x274
LDR             R1, [R0,#8]
LDR             R0, =0x129EC
LDR             R0, [R0,R2]
LDR             R2, [R2,#0x8C]
LDR             R0, [R0]
VLDR            S0, [R2,#0x188]
VLDR            S1, [R0,#0x90]
VSTR            S16, [SP,#0x40+var_38]
STR             R1, [SP,#0x40+var_34]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x40+var_30]
LDR             R0, [R4,#0xA74]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x40+var_38
BLX             R2
BL              sub_464168
LDM             R0, {R1-R3,R7,R8,R10-R12}
ADD             LR, R4, #0x800
ADD             LR, LR, #0x2C4
ADD             R6, R4, #0x800
STM             LR, {R1-R3,R7,R8,R10-R12}
ADD             R1, R0, #0x20 ; ' '
LDR             R0, [R0,#0x2C]
LDM             R1, {R1-R3}
STR             R0, [R4,#0xAF0]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2E4
LDR             R7, =0x11F
STM             R0, {R1-R3}
LDR             R0, [R5]
STRB            R9, [R0,#0xF2]
LDR             R0, [R4,#0xA70]
CMP             R0, #0
BEQ             loc_259298
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0xA70]
LDR             R0, =off_6CE970
LDR             R5, [R0]
BL              sub_4635D8
MOV             R8, #0
MOV             R1, #7
MOV             R3, R0
STMEA           SP, {R1,R8}
ADD             R2, R4, #0x84
MOV             R1, R7
MOV             R0, R5
BL              sub_52C764
STR             R0, [R4,#0xA70]
STRH            R8, [R0,#0xA]
LDR             R0, =off_6CE098
LDR             R2, =0x51EB851F
LDR             R0, [R0]
LDR             R1, [R0,#0x5C]
LDR             R0, [R0,#0x8C]
LDR             R1, [R1]
UMULL           R2, R1, R2, R1
MOV             R1, R1,LSR#5
VMOV            S0, R1
ADD             R1, R0, #0x27C
VLDM            R1, {S1-S2}
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S2
VADD.F32        S0, S1, S0
VLDR            S1, [R0,#0x284]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R6,#0x36C]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
