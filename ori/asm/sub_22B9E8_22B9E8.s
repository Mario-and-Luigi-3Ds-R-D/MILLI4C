PUSH            {R4-R9,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
MOV             R0, #3
STRB            R0, [R6,#0x45C]
MOV             R0, #0x18C0
LDR             R0, [R0,R6]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R9, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x300F3
MOV             R3, #0
LDR             R12, [R9]
MOV             R1, R6
SUB             R0, R12, R0
BL              sub_503720
LDR             R7, =off_6CDA80
MOV             R4, #0
MOV             R8, R4
MOV             R2, #0
LDR             R0, [R7]
LDR             R1, [R0,#0x3C]
ADD             R0, R4, R4,LSL#1
RSB             R0, R0, R4,LSL#8
ADD             R5, R6, R0,LSL#2
ADD             R0, R5, #0x4E0
BL              sub_14E6E0
ADD             R0, R5, #0x4E0
MOV             R1, #0
BL              sub_14C3E8
ADD             R4, R4, #1
CMP             R4, #3
STRB            R8, [R5,#0x5D2]
BCC             loc_22BA3C
LDR             R0, [R6,#0x4DC]
CMP             R0, #0
BEQ             loc_22BA8C
BL              sub_533330
STR             R8, [R6,#0x4DC]
STRB            R8, [R6,#0xF2]
LDR             R4, [R9]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R6
MOV             R1, #0x79 ; 'y'
MOV             R0, R4
STR             R8, [SP,#0x28+var_28]
BL              sub_52AE88
ADD             R4, R6, #0x400
ADD             R4, R4, #0xD8
ADD             R2, R6, #0x4E0
MOV             R1, #1
STR             R0, [R6,#0x4D8]
BL              sub_1497F8
ADD             R2, R6, #0x800
LDR             R0, [R4]
ADD             R2, R2, #0xD4
MOV             R1, #2
BL              sub_1497F8
ADD             R2, R6, #0xC00
LDR             R0, [R4]
ADD             R2, R2, #0xC8
MOV             R1, #3
BL              sub_1497F8
MOV             R0, #0xFFFFFF00
ADD             R4, R6, #0x1000
REV             R0, R0
ADD             R4, R4, #0xD4
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R7]
MOV             R1, SP
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R6, #0x1400
ADD             R0, R0, #0x3F4
BL              sub_4E665C
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x28+var_24
REV             R0, R0
STR             R0, [SP,#0x28+var_24]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R4, #0x32C
BL              sub_4E665C
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
