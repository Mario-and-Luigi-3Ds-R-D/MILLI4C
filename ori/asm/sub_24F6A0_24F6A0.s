PUSH            {R4-R11,LR}
ADD             R2, R0, #0xC00
MOV             R8, R0
ADD             R2, R2, #0x188
ADD             R9, R8, #0x1800
LDR             R1, =0x2AAAAAAB
ADD             R9, R9, #0x13C
VPUSH           {D8-D9}
SUB             SP, SP, #0x94
MOV             R6, #0
VLDR            S17, [R0,#0x24]
VLDR            S18, [R0,#0x2C]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x184
STR             R0, [SP,#0xC8+var_50]
LDR             R2, [R2]
LDR             R0, [R0]
VLDR            S16, =0.0
SUB             R0, R2, R0
SMULL           R2, R0, R1, R0
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
SUB             R0, R0, #1
STR             R0, [SP,#0xC8+var_54]
LDR             R0, [R9]
LDR             R0, [R0,#0x1F4]
CMP             R0, #0
BLS             loc_24FAA4
LDR             R0, =off_6B9ECC
ADD             R11, R8, #0xC00
ADD             R11, R11, #0x18C
STR             R0, [SP,#0xC8+var_70]
LDR             R0, =off_6B9EDC
ADD             R7, R8, #0x1800
STR             R0, [SP,#0xC8+var_B0]
ADD             R0, R8, #0x1800
ADD             R0, R0, #0x144
STR             R0, [SP,#0xC8+var_4C]
ADD             R0, R8, #0x1000
ADD             R0, R0, #0x8D0
STR             R0, [SP,#0xC8+var_48]
ADD             R0, R8, #0x1800
ADD             R0, R0, #0xCC
STR             R0, [SP,#0xC8+var_44]
ADD             R0, SP, #0xC8+var_BC
STR             R0, [SP,#0xC8+var_A8]
LDR             R0, =off_6B7C1C
STR             R0, [SP,#0xC8+var_A4]
LDR             R2, =dword_6D1F40
LDR             R1, [SP,#0xC8+var_54]
MOV             R0, #0
BL              sub_47EADC
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R10, SP, #0xC8+var_C0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x18C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_24F8F0
MOV             R5, R0
LDR             R0, [SP,#0xC8+var_50]
ADD             R1, R4, R4,LSL#1
ADD             R12, R5, #0x14
LDR             R0, [R0]
LDR             R4, [R0,R1,LSL#2]
ADD             R0, R5, #0x20 ; ' '
ADD             R1, R4, #0x14
VLDM            R4, {S0-S4}
VSTM            R5, {S0-S3}
VSTR            S4, [R5,#0x10]
LDM             R1, {R1-R3}
STM             R12, {R1-R3}
ADD             R1, R4, #0x20 ; ' '
VLDM            R1, {S0-S7}
ADD             R1, R4, #0x40 ; '@'
VSTM            R0, {S0-S6}
ADD             R0, R5, #0x40 ; '@'
VSTR            S7, [R5,#0x3C]
BL              sub_1169CC
ADD             R0, R5, #0x70 ; 'p'
ADD             R1, R4, #0x70 ; 'p'
BL              sub_1169CC
LDRB            R1, [R4,#0xA0]
ADD             R0, R5, #0xA4
STRB            R1, [R5,#0xA0]
LDR             R2, [SP,#0xC8+var_70]
ADD             R1, R4, #0xA4
STR             R2, [R5,#0xA4]
ADD             R2, R4, #0xA8
ADD             R5, R5, #0xA8
LDM             R2, {R2,R3,R12}
STM             R5, {R2,R3,R12}
ADD             R2, R4, #0xB4
ADD             R5, R0, #0x10
LDM             R2, {R2,R3,R12}
STM             R5, {R2,R3,R12}
ADD             R2, R4, #0xC0
ADD             R5, R0, #0x1C
LDM             R2, {R2,R3,R12}
STM             R5, {R2,R3,R12}
LDR             R2, [R4,#0xCC]
STR             R2, [R0,#0x28]
LDRB            R2, [R1,#0x2C]
ADD             R1, R1, #0x30 ; '0'
STRB            R2, [R0,#0x2C]
LDR             R3, [SP,#0xC8+var_A4]
LDR             R2, =sub_5A3974
STR             R3, [R0],#0x30
STR             R2, [SP,#0xC8+var_C8]
MOV             R3, #3
MOV             R2, #0x28 ; '('
BLX             sub_1036B4
LDR             R3, [R4,#0x14C]
SUB             R0, R0, #0xD4
ADD             R1, R4, #0x14C
STR             R3, [R0,#0x14C]
LDR             R3, [R4,#0x150]
ADD             R2, R0, #0x14C
STR             R3, [R0,#0x150]
LDR             R3, [R4,#0x154]
STR             R3, [R0,#0x154]
ADD             R3, R4, #0x158
VLDM            R3, {S0-S3}
ADD             R3, R0, #0x158
VSTM            R3, {S0-S3}
LDR             R3, [SP,#0xC8+var_B0]
STR             R3, [R0,#0x168]
LDR             R3, [R4,#0x16C]
STR             R3, [R0,#0x16C]
LDRB            R3, [R4,#0x170]
STRB            R3, [R0,#0x170]
LDR             R3, [R1,#0x28]
STR             R3, [R2,#0x28]
LDR             R3, [R1,#0x2C]
STR             R3, [R2,#0x2C]
LDR             R3, [R1,#0x30]
STR             R3, [R2,#0x30]
LDR             R1, [R1,#0x34]
STR             R1, [R2,#0x34]
LDR             R1, [R4,#0x184]
STR             R1, [R0,#0x184]
LDR             R1, [R4,#0x188]
STR             R1, [R0,#0x188]
STR             R0, [SP,#0xC8+var_C0]
LDR             R1, [SP,#0xC8+var_C0]
ADD             R0, R10, #4
STR             R0, [SP,#0xC8+var_B8]
STR             R0, [SP,#0xC8+var_BC]
ADD             R0, SP, #0xC8+var_A0
ADD             R1, R1, #0x40 ; '@'
BL              sub_1169CC
LDR             R0, [SP,#0xC8+var_C0]
ADD             R2, SP, #0xC8+var_A0
VSTR            S17, [R0,#0x14]
VSTR            S16, [R0,#0x18]
VSTR            S18, [R0,#0x1C]
LDR             R0, [SP,#0xC8+var_C0]
VLDR            S0, [R7,#0xE4]
VLDR            S1, [R0,#0x48]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0xC8+var_94]
VLDR            S0, [R7,#0xE4]
VLDR            S1, [R0,#0x58]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0xC8+var_84]
VLDR            S0, [R7,#0xE4]
VLDR            S1, [R0,#0x68]
MOV             R0, R2
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0xC8+var_74]
LDR             R1, [SP,#0xC8+var_4C]
BL              sub_141F30
VLDR            S1, [R8,#0x28]
VLDR            S0, [SP,#0xC8+var_84]
ADD             R1, SP, #0xC8+var_A0
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xC8+var_84]
LDR             R0, [SP,#0xC8+var_C0]
LDR             R2, [R9]
BL              sub_24CD40
ADD             R2, SP, #0xC8+var_48
LDR             R1, =0x2AAAAAAB
LDM             R2, {R0,R12}
LDR             R0, [R0]
LDR             R2, [R12]
SUB             R2, R0, R2
SMULL           R2, R1, R1, R2
MOV             R2, R1,ASR#1
SUB             R1, R2, R1,ASR#31
ADD             R1, R1, #1
CMP             R1, #0xF0
BHI             loc_24F9EC
CMP             R0, #0
ADD             R1, R11, #0xB40
BEQ             loc_24F9E0
LDR             R2, [SP,#0xC8+var_C0]
ADD             R12, SP, #0xC8+var_BC
STM             R0, {R2,R12}
ADD             R0, R0, #4
LDR             R12, [SP,#0xC8+var_B8]
STR             R12, [R0,#4]
STR             R0, [R12]
STR             R0, [SP,#0xC8+var_B8]
LDR             R0, [R1,#4]
ADD             R0, R0, #0xC
STR             R0, [R1,#4]
LDR             R0, [SP,#0xC8+var_B8]
LDR             R1, [SP,#0xC8+var_A8]
CMP             R0, R1
BNE             loc_24FA5C
LDR             R0, [SP,#0xC8+var_C0]
CMP             R0, #0
BEQ             loc_24FA5C
ADD             R0, R0, #0x168
NOP
VLDR            S0, [SP,#0xC8+var_A4]
SUB             R4, R0, #0xC4
VSTR            S0, [R0,#-0xC4]
LDR             R1, =sub_5A2F60
MOV             R3, #3
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x94
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0xA4
SUB             R12, R0, #0x84
SUB             R1, R0, #0x78 ; 'x'
MOV             R0, #0
STRH            R0, [R1,#8]
STRH            R0, [R12,#8]
MOV             R0, R4
BL              sub_300FD4
LDRD            R0, R1, [SP,#0xC8+var_BC]
B               loc_24FA88
DCFS 0.0
DCD 0x2AAAAAAB
DCD off_6B9ECC
DCD off_6B9EDC
DCD off_6B7C1C
DCD dword_6D1F40
DCD off_6CE970
DCD sub_5A3974
DCD sub_5A2F60
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R9]
ADD             R6, R6, #1
LDR             R0, [R0,#0x1F4]
CMP             R0, R6
BHI             loc_24F760
ADD             SP, SP, #0x94
VPOP            {D8-D9}
POP             {R4-R11,PC}
