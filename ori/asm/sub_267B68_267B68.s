PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R0, [R0,#8]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #6
BL              sub_14C548
CMP             R5, #2
BEQ             loc_267BB0
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#8]
LDR             R2, =0x30166
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#4]
MOV             R1, #6
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x468]
VMOV            S0, R0
LDR             R0, [R4,#8]
ADD             R5, R0, #0x39C
VCVT.F32.U32    S0, S0
VCVT.S32.F32    S0, S0
VMOV            R2, S0
BL              sub_5C55C8
VMOV            S0, R0
VLDR            S1, =0.0
MOV             R0, #0xF
VSTR            S1, [R5]
VCVT.F32.S32    S0, S0
VSTR            S0, [R5,#4]
STRB            R0, [R4,#0xC]
POP             {R4-R6,PC}
