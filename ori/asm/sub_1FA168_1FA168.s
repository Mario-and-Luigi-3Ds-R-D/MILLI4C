PUSH            {R4-R8,LR}
MOV             R7, R0
LDR             R5, =off_6CDC90
VPUSH           {D8-D10}
SUB             SP, SP, #0x10
LDR             R0, [R5]
ADD             R1, R0, #0x10000
ADD             R1, R1, #0x2700
MOV             R2, R1
LDR             R1, [R1]
ADD             R0, R0, #0x10
LDR             R3, [R1,#0xC]
VMOV            S16, R3
STR             R3, [SP,#0x40+var_40]
LDR             R3, [R1,#0x14]
VMOV            S17, R3
STR             R3, [SP,#0x40+var_40]
LDR             R3, [R1,#8]
VMOV            S19, R3
STR             R3, [SP,#0x40+var_40]
LDR             R3, [R1,#0x10]
STR             R3, [SP,#0x40+var_40]
LDR             R1, [R1,#0x48]
VMOV            S18, R3
VMOV            S20, R1
STR             R1, [SP,#0x40+var_40]
LDRB            R1, [R2,#0x94]
CMP             R1, #0
BEQ             loc_1FA1E4
LDR             R0, [R0,#0x38]
B               loc_1FA1EC
NOP
LDR             R0, [R0,#0x28]
MOV             R1, R0
LDR             R0, [R5]
LDR             R6, =0x12794
ADD             R3, R7, #0x10
ADD             R4, R7, #0xC
MOV             R2, #0
LDRSB           R6, [R0,R6]
ADD             R0, R7, #0x24 ; '$'
VSTM            R3, {S16-S20}
BL              sub_14E6E0
MOV             R1, #2
ADD             R0, R4, #0x18
BL              sub_14C450
LDR             R8, =off_6CE970
VLDR            S0, [R4,#8]
VLDR            S16, =0.0
MOV             R1, SP
LDR             R0, [R8]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S1, [R0,#(loc_10C4EC - 0x10C400)]
VSTR            S16, [SP,#0x40+var_40]
VSTR            S16, [SP,#0x40+var_3C]
VMUL.F32        S0, S1, S0
ADD             R0, R4, #0x18
VSTR            S0, [SP,#0x40+var_38]
BL              sub_14E984
MOV             R0, #0xFFFFFF00
ADD             R5, R7, #0x350
REV             R0, R0
STR             R0, [SP,#0x40+var_34]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x40+var_34]
ADD             R1, SP, #0x40+var_34
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x40+var_34]
VLDR            S0, [R4,#4]
ADD             R0, R4, #0x344
BL              sub_4E665C
MOV             R2, #1
MOV             R1, R2
ADD             R0, R4, #0x18
BL              sub_14B798
MOV             R1, #0
ADD             R0, R4, #0x18
BL              sub_14C3E8
MOV             R1, #2
STRB            R1, [R4]
STRB            R6, [R7,#0x419]
LDR             R0, [R8]
LDR             R3, =0xFFE683CC
CMP             R6, #0
VMOV.F32        S0, S16
LDRNE           R1, =0x300B1
LDREQ           R1, =0x300B0
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
MOV             R0, #1
STRB            R0, [R7,#8]
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,PC}
