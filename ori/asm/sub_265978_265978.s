PUSH            {R4-R8,LR}
MOV             R6, R0
LDR             R7, =off_6CDE08
VPUSH           {D8-D10}
SUB             SP, SP, #0x10
LDR             R1, [R7]
LDR             R0, [R1,#8]
VLDR            S17, [R0,#0xEC]
VLDR            S18, [R0,#0xF4]
VLDR            S19, [R0,#0xE8]
VLDR            S20, [R0,#0xF0]
VLDR            S16, [R0,#0x128]
MOV             R0, R1
BL              sub_5CBE84
CMP             R0, #0
LDR             R0, [R7]
ADD             R0, R0, #0x98
BEQ             loc_2659C8
LDR             R0, [R0,#0x30]
B               loc_2659D0
NOP
LDR             R0, [R0,#0x18]
MOV             R5, R0
LDR             R0, [R7]
ADD             R4, R6, #0xA0
BL              sub_5CBE84
VSTR            S20, [R4,#0xC]
VSTR            S19, [R4,#0x10]
VSTR            S16, [R4,#0x14]
ADD             R3, R4, #4
MOV             R7, R0
MOV             R2, #0
MOV             R1, R5
ADD             R0, R4, #0x18
VSTM            R3, {S17-S18}
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
ADD             R5, R6, #0x3E4
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
STRB            R7, [R6,#0x4AD]
LDR             R0, [R8]
LDR             R3, =0xFFE683CC
CMP             R7, #0
VMOV.F32        S0, S16
LDRNE           R1, =0x300B1
LDREQ           R1, =0x300B0
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
MOV             R0, #8
STRB            R0, [R6,#0x70]
LDR             R0, [R6,#0x58]
CMP             R0, #0
BEQ             loc_265AFC
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,LR}
B               sub_268B2C
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,PC}
