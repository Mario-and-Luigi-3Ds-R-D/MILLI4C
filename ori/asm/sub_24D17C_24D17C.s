PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R0, #0
LDR             R5, =off_6CE098
VPUSH           {D8-D10}
SUB             SP, SP, #0x10
STRB            R0, [R4,#8]
LDR             R0, [R5]
VLDR            S16, =0.1
LDR             R1, [R0,#0x8C]
ADD             R2, R1, #0x334
VLDR            S19, [R1,#0x330]
VLDR            S20, [R1,#0x370]
LDRB            R1, [R0,#0x1A]
ADD             R0, R0, #0x90
VLDM            R2, {S17-S18}
CMP             R1, #0
BEQ             loc_24D1CC
LDR             R0, [R0,#0x44]
B               loc_24D1D4
NOP
LDR             R0, [R0,#0x30]
MOV             R1, R0
LDR             R0, [R5]
MOV             R7, R4
ADD             R4, R4, #0xC
ADD             R3, R4, #0xC
LDRSB           R6, [R0,#0x1A]
VSTR            S17, [R4,#4]
VSTR            S16, [R4,#8]
MOV             R2, #0
ADD             R0, R4, #0x18
VSTM            R3, {S18-S20}
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
MOV             R0, #2
STRB            R0, [R4]
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
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,PC}
