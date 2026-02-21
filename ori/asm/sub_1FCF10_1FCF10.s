PUSH            {R4-R9,LR}
MOV             R6, R2
MOV             R8, #0
MOV             R7, R1
VPUSH           {D8-D9}
SUB             SP, SP, #4
STR             R8, [R0],#4
BL              sub_14F198
LDR             R9, =off_6CDC90
STR             R8, [R0,#0x414]
STR             R8, [R0,#0x418]
STR             R8, [R0,#0x41C]
SUB             R4, R0, #4
STRB            R8, [R0,#0x420]
LDR             R0, [R9]
LDR             R1, =0x12700
MOV             R2, #0
LDR             R5, [R1,R0]
LDR             R1, [R0,#0x24]
ADD             R0, R4, #4
BL              sub_14E6E0
LDR             R0, [R5,#0x29C]
MOV             R2, #0xFFFFFFFF
MOV             R1, #2
VMOV            S16, R0
STR             R0, [SP,#0x30+var_30]
ADD             R0, R4, #4
BL              sub_5C55C8
VMOV            S0, R0
LDR             R0, [R5,#0x290]
MOV             R1, #2
STR             R0, [SP,#0x30+var_30]
LDR             R2, [R5,#0x298]
VCVT.F32.S32    S0, S0
VMUL.F32        S17, S0, S16
VMOV            S0, R0
ADD             R0, R4, #4
VMUL.F32        S18, S0, S16
BL              sub_5C55C8
VMOV            S0, R0
ADD             R0, R4, #0x400
MOV             R1, #1
VSTR            S17, [R0]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VSUB.F32        S0, S0, S17
VSTR            S0, [R4,#0x3FC]
VSTR            S18, [R0,#4]
ADD             R0, R4, #4
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF5]
LDR             R0, [R9]
MOV             R2, #0
LDR             R1, [R0,#0x28]
ADD             R0, R4, #4
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14C548
MOV             R1, R7
ADD             R0, R4, #4
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
STRB            R8, [R4,#0x3F8]
STRB            R8, [R4,#0x425]
STR             R6, [R4,#0x428]
ADD             SP, SP, #4
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4-R9,PC}
