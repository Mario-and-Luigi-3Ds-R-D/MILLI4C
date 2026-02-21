ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
NOP
PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R7, =off_6CDA80
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R0, [R7]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_22B4B8
LDR             R8, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R2, =0x300EA
MOV             R3, #0
LDR             R12, [R8]
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #8
MOV             R0, R4
BL              sub_14C548
LDR             R0, [R7]
VLDR            S16, =255.0
MOV             R6, #0xFF
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
ADD             R5, R4, #0x1000
LDR             R2, [R0]
ADD             R5, R5, #0xD4
MOV             R1, SP
VLDR            S0, [R2,#0x3B8]
STRB            R6, [SP,#0x28+var_28]
STRB            R6, [SP,#0x28+var_28+1]
VMUL.F32        S0, S0, S16
STRB            R6, [SP,#0x28+var_28+2]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [SP,#0x28+var_28+3]
ADD             R0, R4, #0x1400
VLDR            S0, [R2,#0x3D0]
ADD             R0, R0, #0x3F4
BL              sub_4E665C
LDR             R0, [R7]
MOV             R1, SP
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R2, [R0]
VLDR            S0, [R2,#0x3BC]
STRB            R6, [SP,#0x28+var_28]
STRB            R6, [SP,#0x28+var_28+1]
VMUL.F32        S0, S0, S16
STRB            R6, [SP,#0x28+var_28+2]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [SP,#0x28+var_28+3]
VLDR            S0, [R2,#0x3D0]
ADD             R0, R5, #0x32C
BL              sub_4E6784
MOV             R1, #0
STRB            R1, [R4,#0x45C]
LDR             R2, [R4,#0x4A0]
LDR             R0, [R8]
STR             R1, [SP,#0x28+var_28]
ADD             R2, R2, #0x2C ; ','
MOV             R3, #1
MOV             R1, #0x85
BL              sub_52AEA8
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
ADD             SP, SP, #8
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,LR}
B               sub_22B9E8
