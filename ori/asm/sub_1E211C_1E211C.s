PUSH            {R3-R11,LR}
MOV             R8, R0
LDR             R0, [R0,#8]
LDR             R1, [R8,#8]
LDR             R0, [R0,#4]
CMP             R0, R1
MOVSNE          R7, R0
BEQ             locret_1E2430
LDR             R11, =unk_6EA3D0
LDR             R10, =unk_6C3D70
MOV             R9, #0
ADD             R6, R11, #0x1000
LDR             R4, [R7,#8]
LDRB            R0, [R4,#0xD2]
CMP             R0, #0
BEQ             loc_1E241C
LDR             R5, [R4,#0xA8]
STR             R11, [R6,#(dword_6EB548 - 0x6EB3D0)]
ADD             R1, R10, #0x20 ; ' '
VLDM            R10, {S0-S7}
ADD             LR, R11, #0x20 ; ' '
MOV             R0, R11
VSTM            R11, {S0-S7}
LDM             R1, {R1-R3,R12}
STM             LR, {R1-R3,R12}
BL              sub_4E7B98
CMP             R0, #0
LDR             R0, [R6,#(dword_6EB548 - 0x6EB3D0)]
ADDEQ           R0, R0, #0x68 ; 'h'
STREQ           R0, [R6,#(dword_6EB548 - 0x6EB3D0)]
BL              sub_1425A8
VLDM            R10, {S0-S7}
ADD             R0, R5, #0x64 ; 'd'
ADD             R1, R10, #0x20 ; ' '
VSTM            R0, {S0-S7}
ADD             R0, R5, #0x84
LDM             R1, {R1-R3,R12}
STM             R0, {R1-R3,R12}
ADD             R1, R4, #0xA0
LDR             R2, =word_6CF870
LDRH            R0, [R4,#0xCA]
STRH            R0, [R2]
LDR             R0, [R4,#0xA4]
STR             R0, [R5,#4]
LDR             R0, [R4,#0xA4]
STR             R0, [R5,#0x54]
STR             R1, [R5,#0x60]
LDR             R0, [R8,#0x24]
LDRB            R0, [R0,#1]
CMP             R0, #0
BNE             loc_1E2204
LDR             R0, [R4,#0xAC]
CMP             R0, #0
BEQ             loc_1E2210
LDRH            R0, [R0,#0xE]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BEQ             loc_1E2210
STR             R9, [R5,#0x18]
STR             R9, [R5,#0x1C]
B               loc_1E2240
LDR             R0, [R5,#0x94]
LDR             R1, [R4,#0xC0]
ADD             R0, R0, #0x100
LDRSH           R0, [R0,#0x18]
MUL             R0, R1, R0
MOV             R0, R0,ASR#8
STR             R0, [R5,#0x18]
LDR             R1, [R4,#0xC0]
STR             R1, [R5,#0x1C]
LDR             R1, [R4,#0xC4]
ADD             R0, R0, R1
STR             R0, [R4,#0xC4]
LDRB            R1, [R4,#0xCF]
ADD             LR, R5, #0x40 ; '@'
ADD             R0, R4, #0xB0
STRB            R1, [R5,#0x50]
ADD             R1, R4, #0x70 ; 'p'
VLDM            R1, {S0-S7}
ADD             R1, R5, #0x20 ; ' '
VSTM            R1, {S0-S7}
ADD             R1, R4, #0x90
LDM             R1, {R1-R3,R12}
STM             LR, {R1-R3,R12}
LDR             R1, [R4,#0xAC]
STR             R0, [R5,#0x5C]
STR             R1, [R5,#0x58]
LDR             R0, [R4,#0xAC]
CMP             R0, #0
STREQ           R9, [R5,#0xC]
BEQ             loc_1E22A8
ADD             R0, R0, #0x10
STR             R0, [R5,#0xC]
LDR             R0, [R4,#0xAC]
LDRB            R0, [R0,#0x16E]
STRB            R0, [R5,#0x51]
LDR             R0, [R4,#0xAC]
ADD             R0, R0, #0x134
STR             R0, [R5,#0x14]
ADD             R1, R4, #8
LDR             R0, [R6,#(dword_6EB548 - 0x6EB3D0)]
LDM             R1, {R3,R12}
ADD             R1, R4, #0x10
ADD             R2, R4, #0x50 ; 'P'
VLDM            R1, {S0-S6}
ADD             R1, R0, #8
STM             R0, {R3,R12}
VSTM            R1, {S0-S6}
LDR             R3, [R4,#0x2C]
LDR             R1, [R4,#0x34]
LDR             R12, [R4,#0x4C]
VLDR            S3, [R4,#0x30]
VLDR            S1, [R4,#0x38]
VLDR            S0, [R4,#0x3C]
VLDR            S2, [R4,#0x40]
VLDR            S5, [R4,#0x44]
VLDR            S4, [R4,#0x48]
STR             R3, [R0,#0x24]!
VSTR            S3, [R0,#4]
STR             R1, [R0,#8]
VSTR            S1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VSTR            S2, [R0,#0x14]
VSTR            S5, [R0,#0x18]
VSTR            S4, [R0,#0x1C]
STR             R12, [R0,#0x20]!
ADD             R0, R0, #4
VLDM            R2, {S0-S7}
VSTM            R0, {S0-S7}
LDRSH           R1, [R4,#0xC8]
LDR             R0, [R4,#0xC4]
CMP             R0, R1,LSL#8
BLT             loc_1E244C
LDRH            R0, [R4,#0xCC]
SUB             R0, R0, #1
SXTH            R1, R0
CMP             R1, #0
STRH            R1, [R4,#0xCC]
BGT             loc_1E2434
LDR             R0, [R5,#0x94]
ADD             R1, R4, #0xA0
LDR             R0, [R0,#0x28]
BL              sub_22174C
MOVS            R4, R7
MOV             R5, R8
LDR             R7, [R4]
BEQ             loc_1E241C
LDRB            R0, [R5,#0x20]
CMP             R0, #0
BEQ             loc_1E23F0
LDR             R0, [R4,#8]
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R0,#0xA8]
CMP             R0, #0
BEQ             loc_1E239C
LDR             R0, [R0,#0x94]
LDR             R1, [SP,#0x28+var_28]
LDR             R0, [R0,#0x28]
ADD             R1, R1, #0xA0
BL              sub_22174C
LDR             R0, [SP,#0x28+var_28]
LDR             R0, [R0,#0xAC]
CMP             R0, #0
BEQ             loc_1E23E8
LDR             R0, [SP,#0x28+var_28]
LDRB            R0, [R0,#0xD1]
CMP             R0, #0
BEQ             loc_1E23E8
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R0, [R0,#4]
STR             R1, [R0]
LDR             R0, [SP,#0x28+var_28]
LDRD            R0, R1, [R0]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x28+var_28]
STR             R9, [R0]
LDR             R0, [SP,#0x28+var_28]
STR             R9, [R0,#4]
LDR             R0, [SP,#0x28+var_28]
STR             R9, [R0,#0xAC]
LDRD            R0, R1, [R4]
STR             R0, [R1]
LDRD            R0, R1, [R4]
STR             R1, [R0,#4]
LDR             R0, [R5,#4]
LDR             R1, [R0]
STR             R1, [R4]
LDR             R1, [R0]
STR             R4, [R1,#4]
STR             R0, [R4,#4]
STR             R4, [R0]
LDR             R1, [R8,#8]
LDR             R0, [R7,#4]
CMP             R0, R1
MOVSNE          R7, R0
BNE             loc_1E214C
POP             {R3-R11,PC}
LDR             R0, =dword_6CF7E0
BL              sub_546DB0
RSB             R0, R0, R0,LSL#12
MOV             R0, R0,LSR#16
STRH            R0, [R4,#0xCA]
STR             R9, [R4,#0xC4]
LDRSB           R2, [R4,#0xCE]
LDR             R1, [R4,#0xC4]
MOV             R0, R5
BL              sub_4E76E4
NOP
NOP
B               loc_1E241C
