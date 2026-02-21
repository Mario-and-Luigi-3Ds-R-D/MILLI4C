PUSH            {R0-R11,LR}
MOV             R8, R0
MOV             R7, R1
MOV             R9, R2
MOV             R10, #0
VPUSH           {D8}
SUB             SP, SP, #0x44
LDR             R6, [R0,#0xD84]!
LDR             R5, [R0,#4]
LDR             R0, =off_6B7C1C
CMP             R6, R5
STR             R0, [SP,#0x80+var_7C]
BEQ             loc_24E1CC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_24E1B8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_24E1B8
ADD             R0, R0, #0x168
NOP
SUB             R11, R0, #0x168
LDR             R0, [SP,#0x80+var_7C]
LDR             R1, =sub_5A2F60
MOV             R3, #3
STR             R0, [R11,#0xA4]!
MOV             R2, #0x28 ; '('
ADD             R0, R11, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R11
NOP
NOP
SUB             R0, R0, #0xA4
STRH            R10, [R0,#0x34]
STRH            R10, [R0,#0x28]
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_24E150
LDR             R0, [R8,#0xD84]
CMP             R9, #0
MOV             R6, #0
STR             R0, [R8,#0xD88]
ADD             R0, R8, #0x1800
ADD             R0, R0, #0xDC
STR             R0, [SP,#0x80+var_74]
BLS             loc_24E4E8
ADD             R0, R8, #0xC00
ADD             R0, R0, #0x188
STR             R0, [SP,#0x80+var_54]
ADD             R0, R8, #0xC00
ADD             R0, R0, #0x184
STR             R0, [SP,#0x80+var_50]
VLDR            S16, =0.0
VLDR            S17, =0.000015259
ADD             R11, R8, #0x400
ADD             R0, SP, #0x80+var_64
ADD             R11, R11, #0x24 ; '$'
STR             R0, [SP,#0x80+var_4C]
MOV             R3, #0
LDR             R1, [SP,#0x80+var_28]
ADD             R5, SP, #0x80+var_68
MOV             R2, R3
MOV             R0, #0x18C
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_24E338
STR             R10, [R0,#0x28]
STR             R10, [R0,#0x34]
STR             R10, [R0,#0x38]
STRH            R10, [R0,#0x3C]
ADD             R0, R0, #0xA4
BL              sub_5A2BD0
LDR             R1, [SP,#0x80+var_7C]
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
STR             R2, [R0,#0x28]
REV             R2, R10
MOV             R1, #3
STRB            R1, [R0,#0x2C]
STR             R2, [R0,#0xA8]!
REV             R2, R10
STR             R2, [R0,#4]
REV             R2, R10
STR             R2, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
VSTR            S16, [R0,#0x14]
VSTR            S16, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
LDR             R1, =dword_6E1330
SUB             R4, R0, #0x168
LDR             R1, [R1]
TST             R1, #1
BNE             loc_24E2F8
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_24E2F8
VMOV.F32        S0, S16
LDR             R0, =flt_711FE4
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [R4,#0x1C]
ADD             R0, R4, #0x14
STM             R0, {R1,R2}
VSTR            S16, [R4]
VSTR            S16, [R4,#4]
LDR             R0, =dword_6D1F40
VSTR            S16, [R4,#8]
BL              sub_546DB0
AND             R0, R0, #1
STRB            R0, [R4,#0x10]
MOV             R0, R4
STR             R10, [R4,#0xC]
BL              sub_24CC2C
ADD             R0, R5, #4
STR             R0, [SP,#0x80+var_60]
STR             R0, [SP,#0x80+var_64]
MOV             R0, #0xFFFFFFFF
ADD             R5, R4, #0x14C
REV             R8, R0
MOV             R0, R5
STR             R4, [SP,#0x80+var_68]
BL              sub_4E63E0
STR             R8, [R5,#4]
STR             R8, [R5]
LDR             R0, [SP,#0x80+var_74]
LDR             R2, =dword_6D1F40
MOV             R1, #0x22 ; '"'
STR             R0, [R4,#0x38]
MOV             R0, #0x1D
BL              sub_47EADC
AND             R1, R0, #0xFF
STRB            R1, [SP,#0x80+var_44]
STRB            R10, [SP,#0x80+var_44+1]
LDR             R0, [R4,#0x38]
ADD             R5, R4, #0x20 ; ' '
BL              sub_5D1DE4
MOV             R1, R0
MOV             R0, R5
BL              sub_123C70
STRH            R10, [R5,#6]
LDRH            R0, [SP,#0x80+var_44]
STRH            R0, [R5,#0x1C]
LDRSH           R0, [R4,#0x28]
MOV             R5, R0,ASR#8
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VMOV            S1, R5
VCVT.F32.U32    S0, S0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
MOV             R1, R0,LSL#8
ADD             R0, R4, #0x20 ; ' '
BL              sub_485780
STRB            R10, [R4,#0xA0]
VSTR            S16, [R4,#0x184]
LDM             R7, {R1-R4,R12}
LDR             R0, [SP,#0x80+var_68]
STM             R0, {R1-R4,R12}
BL              sub_24CC2C
ADD             R1, SP, #0x80+var_54
LDM             R1, {R0,R2}
LDR             R1, [R0]
LDR             R2, [R2]
LDR             R0, =0x2AAAAAAB
SUB             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
ADD             R0, R0, #1
CMP             R0, #0xC8
BHI             loc_24E46C
LDR             R0, [R11,#0x964]
ADD             R1, R11, #0x960
CMP             R0, #0
BEQ             loc_24E460
LDR             R3, [SP,#0x80+var_68]
ADD             R2, SP, #0x80+var_64
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x80+var_60]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x80+var_60]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R1,#4]
LDR             R0, [SP,#0x80+var_4C]
LDR             R1, [SP,#0x80+var_60]
ADD             R7, R7, #0x14
CMP             R1, R0
BNE             loc_24E4D0
LDR             R0, [SP,#0x80+var_68]
CMP             R0, #0
BEQ             loc_24E4D0
ADD             R0, R0, #0x168
NOP
SUB             R4, R0, #0x168
LDR             R0, [SP,#0x80+var_7C]
LDR             R1, =sub_5A2F60
MOV             R3, #3
STR             R0, [R4,#0xA4]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0xA4
STRH            R10, [R0,#0x34]
STRH            R10, [R0,#0x28]
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x80+var_64]
ADD             R6, R6, #1
CMP             R6, R9
STR             R1, [R0,#4]
STR             R0, [R1]
BCC             loc_24E21C
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
