PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14F198
LDR             R6, =off_6CDA80
SUB             R4, R0, #0x3F4
MOV             R1, #0
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R5, [R0]
ADD             R0, R4, #0x3F4
BL              sub_14C3E8
LDR             R0, [R6]
MOV             R2, #0
LDR             R1, [R0,#0x4C]
ADD             R0, R4, #0x3F4
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
ADD             R0, R4, #0x3F4
BL              sub_14C548
MOV             R1, #1
ADD             R0, R4, #0x3F4
BL              sub_14C450
MOV             R7, #4
STRB            R7, [R4,#0x4E5]
BL              sub_4635D8
MOV             R1, R0
ADD             R0, R4, #0x3F4
BL              sub_14E984
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x28+var_1C
REV             R0, R0
STR             R0, [SP,#0x28+var_1C]
ADD             R0, R4, #0x3F4
BL              sub_14D778
VLDR            S2, [R5,#0x3CC]
VLDR            S1, =1.0
ADD             R5, R5, #0x3C4
ADD             R2, SP, #0x28+var_24
VDIV.F32        S0, S1, S2
VLDM            R5, {S2-S3}
MOV             R1, SP
ADD             R0, R4, #0x3F4
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S2, [SP,#0x28+var_28]
VSTM            R2, {S0-S1}
BL              sub_14EA04
LDR             R0, =0xFF000001
MOV             R1, #0
STR             R0, [R4,#0x434]
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, [R6]
MOV             R2, #0
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C548
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
STRB            R7, [R4,#0xF1]
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R4
BL              sub_14E984
VLDR            S1, =90.0
VLDR            S0, =0.0
VSTR            S1, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
MOV             R1, SP
VSTR            S0, [SP,#0x28+var_20]
MOV             R0, R4
BL              sub_14E9C8
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0x32C
REV             R6, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R6, [R5,#4]
STR             R6, [R5]
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R7,PC}
