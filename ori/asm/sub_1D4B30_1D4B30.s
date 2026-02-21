PUSH            {R3-R11,LR}
MOV             R5, R0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
MOV             R6, R1
LDR             R1, [R0,#0x3BC]
MOV             R7, R2
MOV             R3, #0
MOV             R2, R3
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1D4C4C
ADD             R8, R5, #0x1A0000
ADD             R8, R8, #0x88
MOV             R2, R8
MOV             R1, #0
BL              sub_1DFBC4
MOV             R4, R0
LDR             R0, =off_6544A4
MOV             R9, #0
STR             R0, [R4]
STR             R5, [R4,#0x18]
STRB            R6, [R4,#0x1C]
REV             R0, R9
ADD             R6, R5, #0x19C000
STRB            R9, [R4,#0x1D]
ADD             R6, R6, #0x1F40
STR             R0, [SP,#0x28+var_28]
MOV             R0, R6
BL              sub_4E63E0
LDR             R0, [SP,#0x28+var_28]
LDR             R10, =0x19DF78
STR             R0, [R6,#4]
STR             R0, [R6]
LDR             R0, [R4,#0x18]
ADD             R6, R0, R10
REV             R0, R9
STR             R0, [SP,#0x28+var_28]
MOV             R0, R6
BL              sub_4E63E0
LDR             R0, [SP,#0x28+var_28]
VMOV            S0, R7
MOV             R1, SP
STR             R0, [R6,#4]
STR             R0, [R6]
MOV             R0, #0xFF
REV             R0, R0
VCVT.F32.U32    S0, S0
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x18]
ADD             R0, R0, #0x19C000
ADD             R0, R0, #0x1F40
BL              sub_4E665C
VMOV            S0, R7
MOV             R0, #0xFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x28+var_28]
VCVT.F32.U32    S0, S0
LDR             R0, [R4,#0x18]
ADD             R0, R0, R10
BL              sub_4E665C
LDR             R0, [R4,#0x18]
LDR             R1, =0xFFE683CC
SUB             R0, R0, R1
MOV             R1, R7
BL              sub_503664
MOV             R1, #1
MOV             R0, R4
STRB            R1, [R8,#4]
MOV             R1, R0
LDR             R0, =0x1064D8
ADD             R0, R0, R5
POP             {R3-R11,LR}
B               sub_1DFCE0
