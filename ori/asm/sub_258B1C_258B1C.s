PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R0, #3
LDR             R6, =off_6CE098
MOV             R7, #0
VPUSH           {D8}
MOV             R8, #1
STRB            R0, [R4]
STR             R7, [R4,#0x80]
STRB            R8, [R4,#0xAF4]
LDR             R0, [R6]
ADD             R5, R4, #4
LDR             R0, [R0,#0x8C]
VLDR            S16, [R0,#0x264]
ADD             R0, R4, #0x38 ; '8'
BL              sub_5A18EC
VSTR            S16, [R5,#0x40]
VSTR            S16, [R5,#0x38]
LDR             R0, [R6]
VLDR            S0, =1.0
LDR             R0, [R0,#0x8C]
VLDR            S1, [R0,#0x254]
MOV             R0, R5
BL              sub_5A12F8
STRB            R8, [R5,#0x68]
LDR             R0, [R4,#0xB5C]
LDR             R1, =off_6CE970
VLDR            S0, =0.0
LDR             R2, =0x19DEE8
VSTR            S0, [R0,#0x38]
STRB            R8, [R0,#0x44]
LDR             R12, [R1]
LDR             R3, [R6]
VLDR            S2, =0.0039062
ADD             R2, R2, R12; loc_19DEE8
VLDR            S0, [R2]
LDR             R1, [R3,#0x8C]
VCVT.F32.S32    S0, S0
VLDR            S1, [R1,#0x1FC]
VMLA.F32        S1, S0, S2
VSTR            S1, [R0,#0x40]
LDR             R4, [R4,#0xB50]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_258C0C
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#4]
LDR             R2, =0x301D8
ADD             R5, R4, #8
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_258C30
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0x14]
CMP             R0, #0
STRNE           R7, [R0,#0x64]
STRNE           R7, [R4,#0x14]
VPOP            {D8}
POP             {R4-R8,PC}
