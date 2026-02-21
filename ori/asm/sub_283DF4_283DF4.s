PUSH            {R4-R12,LR}
MOV             R6, R1
MOV             R4, R0
MOV             R11, R2
LDR             R9, =off_6CE970
LDR             R10, =0xFFE683CC
VPUSH           {D8}
VMOV.F32        S16, S0
LDRB            R1, [R0,#0x3F4]
MOV             R0, #1
STRB            R0, [R4,#0x454]
CMP             R1, #1
BNE             loc_283E78
LDR             R5, [R4,#0x468]
LDR             R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_283E70
LDR             R0, [R9]
LDR             R1, [R5]
LDR             R2, =0x30207
MOV             R3, #0
SUB             R0, R0, R10
BL              sub_503720
MOV             R7, R0
LDR             R0, [R5,#8]!
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R7, #0
STR             R7, [R5,#4]
STRNE           R5, [R7,#0x64]
MOV             R0, #7
STRB            R0, [R4,#0x3F4]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x58 ; 'X'
VLDR            S3, [R6,#8]
VLDR            S0, [R0]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x5C ; '\'
VMUL.F32        S0, S0, S0
VLDM            R0, {S1-S2}
ADD             R5, R4, #0x400
CMP             R11, #0
MOV             R3, #0x100
MOV             R2, #0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VLDR            S2, [R6]
VSQRT.F32       S1, S0
VADD.F32        S0, S1, S16
VLDR            S1, [R6,#4]
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VSTR            S2, [R5,#0x58]
VSTR            S1, [R5,#0x5C]
VSTR            S0, [R5,#0x60]
BEQ             loc_283EF4
MOV             R1, #0x16
MOV             R0, R4
BL              sub_14C430
NOP
NOP
B               loc_283F00
MOV             R1, #0x15
MOV             R0, R4
BL              sub_14C430
LDRB            R0, [R4,#0x3F4]
CMP             R0, #7
LDREQ           R8, =0x301FA
BEQ             loc_283F28
CMP             R0, #8
BNE             loc_283F28
LDR             R0, [R4,#0x464]
LDR             R8, =0x301FB
LDR             R0, [R0,#0x7C]
STR             R0, [R5,#0x50]
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R8
MOV             R1, R4
SUB             R0, R0, R10
BL              sub_503720
MOV             R0, R4
NOP
BL              sub_2835A8
MOV             R0, #0
STR             R0, [R4,#0x444]
VPOP            {D8}
POP             {R4-R12,PC}
