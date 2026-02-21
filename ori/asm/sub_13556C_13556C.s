PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R3
VLDR            S1, =2.0
MOV             R8, #0
VPUSH           {D8}
ADD             R5, SP, #0x20+arg_0
VLDR            S0, [SP,#0x20+arg_C]
LDM             R5, {R3,R6}
ADD             R5, R4, #0x28 ; '('
VCVT.F32.S32    S0, S0
LDR             R0, [SP,#0x20+arg_8]
STR             R1, [R4,#0xC]
STR             R2, [R4,#0x1C]
STR             R3, [R4,#0x40]
STR             R7, [R4,#8]
LDR             R3, [R4,#4]
MOV             R1, #1
MOV             R2, #0xFFFFFFFF
VMUL.F32        S0, S0, S1
STR             R6, [R3]
STR             R0, [R4,#0x20]
MOV             R3, R8
ADD             R0, R4, #0x2AC
VCVT.S32.F32    S0, S0
VSTR            S0, [R4,#0x24]
STR             R8, [R4,#0x10]
STM             R5, {R1,R8}
MOV             R1, #0
STR             R8, [R4,#0x21C]
STR             R8, [R4,#0x2C0]
STR             R8, [R4,#0x214]
STR             R2, [R4,#0x218]
MOV             R2, R8
BL              sub_140180
VLDR            S16, =1.0
ADDS            R0, R4, #0x280
VMOVNE.F32      S0, S16
BLNE            sub_13631C
MOV             R2, #0x28 ; '('
MOV             R1, #0
ADD             R0, R4, #0x220
BL              sub_12B588
MOV             R1, #0x78 ; 'x'
ADDS            R0, R4, #0x1BC
STR             R1, [R4,#0x30]
BLNE            sub_12B760
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #4
MOV             R1, #0x78 ; 'x'
BL              sub_13F890
LDR             R0, [R4,#4]
MOV             R1, #0x80
MOV             R2, #0
VLDR            S0, =90.0
STR             R8, [R0,#0x90]
LDR             R0, [R4,#4]
STR             R8, [R0,#0x8C]
LDR             R0, [R4,#4]
STR             R8, [R0,#0x88]
LDR             R0, [R4,#4]
STR             R1, [R0,#0x88]
LDR             R0, [R4,#4]
MOV             R1, R2
ADD             R0, R0, #0x48 ; 'H'
BL              sub_140098
LDR             R0, [R4,#4]
VMOV.F32        S0, S16
MOV             R2, #0
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
VMOV.F32        S0, S16
MOV             R2, #0
ADD             R0, R0, #0x5C ; '\'
MOV             R1, R2
BL              sub_140098
LDR             R0, [R4,#4]
STR             R8, [R0,#0x90]
LDR             R0, [R4,#4]
STR             R8, [R0,#0x94]
LDR             R0, [R4,#4]
STR             R8, [R0,#0x8C]
LDR             R0, [R4,#4]
ADDS            R0, R0, #0x74 ; 't'
BEQ             loc_1356F4
STR             R8, [R0]
STRH            R8, [R0,#4]
STRH            R8, [R0,#6]
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
BLT             loc_13575C
STR             R8, [R4,#0x250]
LDRB            R0, [R6]
CMP             R0, #0
BNE             loc_135794
LDR             R0, [R4,#0x10]
SUB             R0, R0, #1
STR             R0, [R4,#0x10]
LDR             R0, [R7,#0x10]
VLDR            S16, =0.007874
CMP             R0, #0x64 ; 'd'
BEQ             loc_1357B0
CMP             R0, #0xC8
BEQ             loc_135804
B               loc_135880
LDR             R5, [R4,#0x40]
LDRH            R0, [R5,#4]
STR             R0, [R4,#0x248]
BL              sub_140244
STR             R0, [R4,#0x24C]
NOP
BL              sub_140234
LDR             R2, [R4,#0x248]
MOV             R6, R0
MOV             R3, #1
MOV             R1, #0
BL              sub_1405C8
MOV             R1, R7
MOV             R0, R6
BL              sub_140548
LDRB            R0, [R5,#2]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S16
VSTR            S0, [R4,#0x3C]
B               loc_135880
LDR             R5, [R4,#0x40]
LDRH            R0, [R5,#2]
STR             R0, [R4,#0x248]
BL              sub_140244
STR             R0, [R4,#0x24C]
NOP
BL              sub_140234
LDR             R2, [R4,#0x248]
MOV             R6, R0
MOV             R3, #1
MOV             R1, #0
BL              sub_1405C8
MOV             R1, R7
MOV             R0, R6
BL              sub_140548
LDR             R0, [R4,#4]
MOV             R3, #0x30 ; '0'
LDRH            R1, [R0,#0x7A]
LDRH            R2, [R0,#0x78]
STRH            R3, [R0,#0x78]
SUB             R1, R1, R2
MOV             R2, #4
ADD             R1, R1, #0x30 ; '0'
STRH            R2, [R0,#0x7C]
STRH            R1, [R0,#0x7A]
STRH            R8, [R0,#0x7E]
LDRB            R0, [R5,#1]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S16
VSTR            S0, [R4,#0x3C]
MOV             R2, #0x9C
MOV             R1, #0
ADD             R0, R4, #0xE0
BL              sub_12B584
STR             R8, [R4,#0x14]
VPOP            {D8}
POP             {R4-R8,PC}
