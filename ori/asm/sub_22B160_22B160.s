PUSH            {R4-R7,LR}
MOV             R5, R1
MOV             R7, #0
LDR             R1, =off_6BBA08
VPUSH           {D8}
SUB             SP, SP, #0xC
VMOV.F32        S16, S0
STRB            R7, [R0,#0x1C]
STRB            R7, [R0,#0x1D]
STR             R1, [R0],#0x20
BL              sub_14F198
VSTR            S16, [R0,#0x3F4]
STRB            R7, [R0,#0x3F8]
LDR             R7, =off_6CDA80
SUB             R4, R0, #0x20 ; ' '
MOV             R2, #0
LDR             R0, [R7]
LDR             R1, [R0,#0x44]
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
VCVT.U32.F32    S0, S16
MOV             R1, #8
STRB            R1, [R4,#0x116]
VMOV            R0, S0
CMP             R0, #3
BEQ             loc_22B21C
CMP             R0, #5
BEQ             loc_22B240
CMP             R0, #7
BNE             loc_22B280
B               loc_22B264
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x28+var_24
REV             R0, R0
STR             R0, [SP,#0x28+var_24]
ADD             R0, R4, #0x20 ; ' '
BL              sub_14D778
MOV             R6, #0
NOP
B               loc_22B280
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x28+var_24
REV             R0, R0
STR             R0, [SP,#0x28+var_24]
ADD             R0, R4, #0x20 ; ' '
BL              sub_14D778
MOV             R6, #1
NOP
B               loc_22B280
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x28+var_24
REV             R0, R0
STR             R0, [SP,#0x28+var_24]
ADD             R0, R4, #0x20 ; ' '
BL              sub_14D778
MOV             R6, #2
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
ADD             R0, R4, #0x20 ; ' '
BL              sub_14C548
LDR             R0, [R4,#0xBC]
MOV             R1, SP
REV             R0, R0
ORR             R0, R0, #0xFF
REV             R0, R0
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3E8]
ADD             R0, R4, #0x34C
BL              sub_4E665C
LDR             R0, [R7]
VLDM            R5, {S3-S5}
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
ADD             R1, R0, #0x35C
VLDR            S2, [R0,#0x358]
VLDM            R1, {S0-S1}
VADD.F32        S2, S2, S3
ADD             R1, R4, #8
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S5
VSTR            S2, [R4,#4]
VSTM            R1, {S0-S1}
VLDR            S2, [R0,#0x364]
ADD             R0, R0, #0x368
VLDM            R5!, {S5}
VLDM            R0, {S0-S1}
ADD             R0, R4, #0x14
VADD.F32        S2, S2, S5
VLDM            R5, {S3-S4}
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTR            S2, [R4,#0x10]
VSTM            R0, {S0-S1}
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,PC}
