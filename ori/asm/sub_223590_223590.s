PUSH            {R3-R7,LR}
MOV             R5, R1
MOV             R6, #0
LDR             R1, =off_6BB8C0
STRB            R6, [R0,#0x1C]
STRB            R6, [R0,#0x1D]
STR             R1, [R0],#0x20
BL              sub_14F198
LDR             R7, =off_6CDA80
SUB             R4, R0, #0x20 ; ' '
STRB            R6, [R0,#0x3F4]
MOV             R2, #0
LDR             R0, [R7]
LDR             R1, [R0,#0x40]
ADD             R0, R4, #0x20 ; ' '
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C548
MOV             R1, #1
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0x111]
MOV             R1, R5
ADD             R0, R4, #0x20 ; ' '
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C3E8
MOV             R0, #8
STRB            R0, [R4,#0x116]
MOV             R0, #0xFFFFFF00
ADD             R6, R4, #0x34C
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
MOV             R0, R6
BL              sub_4E63E0
LDR             R0, [SP,#0x18+var_18]
MOV             R1, SP
STR             R0, [R6,#4]
STR             R0, [R6]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3E8]
ADD             R0, R4, #0x34C
BL              sub_4E665C
LDR             R0, [R7]
ADD             R1, R4, #0x10
VLDM            R5, {S3-S5}
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x370]
VLDR            S2, [R0,#0x374]
VLDR            S1, [R0,#0x378]
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VADD.F32        S1, S1, S5
VSTR            S0, [R4,#4]
VSTR            S2, [R4,#8]
VSTR            S1, [R4,#0xC]
VLDR            S0, [R0,#0x37C]
ADD             R0, R0, #0x380
VLDM            R5!, {S5}
VLDM            R0, {S1-S2}
MOV             R0, R4
VADD.F32        S0, S0, S5
VLDM            R5, {S3-S4}
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VSTM            R1, {S0-S2}
POP             {R3-R7,PC}
