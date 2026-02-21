PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R3, #0
MOV             R2, R3
LDR             R7, =off_6CE970
VPUSH           {D8}
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x163F0
BL              sub_10A358
CMP             R0, #0
BEQ             loc_147510
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
LDR             R1, =off_6B66D8
MOV             R9, #0
STR             R1, [R0]
STRB            R9, [R0,#0x18]
STR             R4, [R0,#0x1C]!
ADD             R0, R0, #4
BL              sub_14CB8C
LDR             R1, =off_6B5E8C
REV             R2, R9
VLDR            S16, =0.0
STR             R1, [R0]
STR             R2, [R0,#0x100]
STR             R2, [R0,#0x104]
STR             R2, [R0,#0x108]
ADD             R0, R0, #0x10C
VSTR            S16, [R0]
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
ADD             R0, R0, #0x10
BL              sub_5A2F28
LDR             R1, =nullsub_1087
MOV             R3, #4
MOV             R2, #0xC
ADD             R0, R0, #0x1C
BLX             sub_1002F4
SUB             R4, R0, #0x138
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
VLDR            S0, =360.0
VSTR            S16, [R4,#0x24]
VSTR            S16, [R4,#0x28]
LDR             R1, =unk_6C3DAC
VSTR            S0, [R4,#0x2C]
MOV             R2, #0x30 ; '0'
ADD             R0, R4, #0x138
BL              sub_1103A4
ADD             R0, R4, #0x168
BL              sub_14CB8C
LDR             R1, =off_6B5418
STR             R1, [R0]
STRB            R9, [R0,#0xFD]
STRB            R9, [R0,#0xFE]
ADD             R1, R0, #0x100
STRB            R9, [R0,#0xFF]
STR             R1, [R0,#0x10C]!
STR             R1, [R0,#4]
SUB             R1, R0, #0x10C
LDR             R0, =dword_67316C
LDR             R2, [R0]
VSTR            S16, [R1,#0x114]
ADD             R0, R1, #0x11C
STR             R2, [R1,#0x118]
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
REV             R1, R9
MOV             R8, #1
STRB            R8, [R0,#0x2C]
REV             R2, R9
STR             R1, [R0,#0x58]!
STR             R2, [R0,#4]
REV             R2, R9
STR             R2, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
VSTR            S16, [R0,#0x14]
VSTR            S16, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
ADD             R0, R0, #0x1C
BL              sub_5931A8
ADD             R0, R0, #0x104
BL              sub_5931A8
ADD             R0, R0, #0x104
BL              sub_2C2000
SUB             R4, R0, #0x3B4
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x2D8
ADD             R5, R4, #0x174
STR             R9, [R0]
LDR             R0, =byte_6CEBE0
LDR             R6, [R0,#(dword_6CEBE4 - 0x6CEBE0)]
MOV             R0, R5
BL              sub_4E63E0
STR             R6, [R5,#4]
STR             R6, [R5]
MOV             R1, #2
MOV             R0, R4
STR             R6, [R4,#0x9C]
BL              sub_14C450
VLDR            S0, =358.0
VSTR            S16, [R4,#0x24]
VSTR            S16, [R4,#0x28]
VSTR            S0, [R4,#0x2C]
ADD             R0, R4, #0x3B4
BL              sub_2C0EF0
LDR             R0, =off_6CFA08
ADD             R1, R4, #0x5800
LDR             R0, [R0]; dword_6581A8
LDR             R0, [R0]
STR             R0, [R1,#0x3CC]
STR             R0, [R1,#0x3D0]
LDR             R0, [R7]
BL              sub_5EE4D4
CMP             R0, #0
LDR             R0, [R4,#0x110]
LDR             R3, [R4,#0x10C]
LDR             R2, =dword_6C3DA0
LDR             R1, =dword_6C3DA4
SUB             R3, R0, R3
ADD             R3, R8, R3,ASR#2
BEQ             loc_147370
CMP             R3, #3
BHI             loc_1473EC
CMP             R0, #0
LDRNE           R2, [R2]
STRNE           R2, [R0]
LDR             R0, [R4,#0x110]
ADD             R0, R0, #4
STR             R0, [R4,#0x110]
LDR             R2, [R4,#0x10C]
SUB             R2, R0, R2
ADD             R2, R8, R2,ASR#2
CMP             R2, #3
BHI             loc_1473EC
CMP             R0, #0
BEQ             loc_1473E0
LDR             R1, [R1]
STR             R1, [R0]
B               loc_1473E0
CMP             R3, #3
BHI             loc_1473EC
CMP             R0, #0
LDRNE           R2, [R2]
STRNE           R2, [R0]
LDR             R0, [R4,#0x110]
ADD             R0, R0, #4
STR             R0, [R4,#0x110]
LDR             R2, [R4,#0x10C]
SUB             R2, R0, R2
ADD             R2, R8, R2,ASR#2
CMP             R2, #3
BHI             loc_1473EC
CMP             R0, #0
BEQ             loc_1473B8
LDR             R2, =dword_6C3DA8
LDR             R2, [R2]
STR             R2, [R0]
LDR             R0, [R4,#0x110]
ADD             R0, R0, #4
STR             R0, [R4,#0x110]
LDR             R2, [R4,#0x10C]
SUB             R2, R0, R2
ADD             R2, R8, R2,ASR#2
CMP             R2, #3
BHI             loc_1473EC
CMP             R0, #0
BNE             loc_147364
LDR             R0, [R4,#0x110]
ADD             R0, R0, #4
STR             R0, [R4,#0x110]
ADD             R0, R4, #0x7000
ADD             R0, R0, #0x690
BL              sub_2C729C
ADD             R0, R0, #0xE800
ADD             R0, R0, #0x1CC
BL              sub_14CB8C
LDR             R1, =off_6B5354
STR             R1, [R0],#0x100
BL              sub_5931A8
LDR             R1, =off_6B2A84
SUB             R4, R0, #0x100
ADD             R0, R0, #0x104
STM             R0, {R1,R9}
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
SUB             R4, R4, #0x16000
SUB             R4, R4, #0x1E4
MOV             R1, #0
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C3E8
LDR             R1, =0xC004
LDR             R0, [R7]
BL              sub_52FACC
LDR             R1, =0xC2071
MOV             R5, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R6, =sub_10640C
LDR             R0, [R7]
MOV             R1, R5
ADD             R0, R0, R6; sub_10640C
BL              sub_1CF9FC
LDR             R1, =0x5E7
LDR             R0, [R7]
BL              sub_52F770
LDR             R0, [R7]
NOP
BL              sub_5EE4D4
CMP             R0, #0
NOP
BNE             loc_1474F8
LDR             R1, =0xC005
LDR             R0, [R7]
BL              sub_52FACC
LDR             R1, =0xC2080
MOV             R5, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R7]
MOV             R1, R5
ADD             R0, R0, R6; sub_10640C
BL              sub_1CF9FC
LDR             R1, =0xC006
LDR             R0, [R7]
BL              sub_52FACC
LDR             R1, =0xC2007
MOV             R5, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R7]
MOV             R1, R5
ADD             R0, R0, R6; sub_10640C
BL              sub_1CF9FC
LDR             R1, =byte_6CEBE0
VLDR            S0, =60.0
ADD             R0, R4, #0x120
BL              sub_4E665C
MOV             R0, R4
STRB            R8, [R4,#0x18]
VPOP            {D8}
POP             {R4-R10,PC}
