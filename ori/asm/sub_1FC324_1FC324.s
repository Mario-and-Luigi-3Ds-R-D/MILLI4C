PUSH            {R4-R11,LR}
CMP             R1, #0
SUB             SP, SP, #0x14
MOV             R4, R0
MOV             R7, #3
LDR             R10, =0x5DE
LDR             R8, =0x300BE
LDR             R6, =0xFFE683CC
LDR             R9, =off_6CE970
MOV             R11, #0
BEQ             loc_1FC41C
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
STR             R11, [R4,#0x3F4]
BL              sub_14C548
LDR             R5, [R9]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R4
MOV             R1, #0x3B ; ';'
MOV             R0, R5
STR             R11, [SP,#0x38+var_38]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
MOV             R3, #1
ADD             R2, R4, #0x24 ; '$'
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
LDR             R0, [R9]
MOV             R1, #0x3A ; ':'
STR             R11, [SP,#0x38+var_38]
BL              sub_52AEA8
MOV             R2, #0
ADD             R1, SP, #0x38+var_34
MOV             R0, R4
BL              sub_5C48B8
LDR             R0, [R9]
MOV             R3, #1
ADD             R2, SP, #0x38+var_34
MOV             R1, R10
STR             R11, [SP,#0x38+var_38]
BL              sub_52AEA8
MOV             R5, R0
BL              sub_4635D8
MOV             R3, R0
MOV             R2, #0x10000
MOV             R1, R4
MOV             R0, R5
BL              sub_14C8F8
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R8
MOV             R1, R4
SUB             R0, R0, R6
BL              sub_503720
LDR             R0, [R5,#0x19C]
ORR             R1, R0, #0x100000
STR             R1, [R5,#0x19C]
STRB            R7, [R4,#0x3F8]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
LDR             R0, [R4,#0x3F4]
MOV             R3, #0x100
MOV             R2, #0
SUB             R0, R0, #1
STR             R0, [R4,#0x3F4]
MOV             R1, #1
MOV             R0, R4
BL              sub_14C548
LDR             R5, [R9]
NOP
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R4
MOV             R1, #0x39 ; '9'
MOV             R0, R5
STR             R11, [SP,#0x38+var_38]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
MOV             R3, #1
ADD             R2, R4, #0x24 ; '$'
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
LDR             R0, [R4,#0x3F4]
MOV             R1, #0x1A8
CMP             R0, #0
LDR             R0, [R9]
STR             R11, [SP,#0x38+var_38]
BEQ             loc_1FC4CC
BL              sub_52AEA8
LDR             R0, =off_6CDC90
VLDR            S0, =0.0
LDR             R0, [R0]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x2700
LDR             R0, [R0]
LDR             R0, [R0,#0x44]
VSTR            S0, [R4,#0x39C]
VMOV            S0, R0
MOV             R0, #1
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x3A0]
STRB            R0, [R4,#0x3F8]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
NOP
BL              sub_52AEA8
MOV             R2, #0
ADD             R1, SP, #0x38+var_34
MOV             R0, R4
BL              sub_5C48B8
LDR             R0, [R9]
MOV             R3, #1
ADD             R2, SP, #0x38+var_34
MOV             R1, R10
STR             R11, [SP,#0x38+var_38]
BL              sub_52AEA8
MOV             R5, R0
NOP
BL              sub_4635D8
MOV             R3, R0
MOV             R2, #0x10000
MOV             R1, R4
MOV             R0, R5
BL              sub_14C8F8
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R8
MOV             R1, R4
SUB             R0, R0, R6
BL              sub_503720
LDR             R0, [R5,#0x19C]
ORR             R1, R0, #0x100000
STR             R1, [R5,#0x19C]
STRB            R7, [R4,#0x3F8]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
