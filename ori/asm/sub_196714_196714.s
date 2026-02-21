PUSH            {R4-R8,LR}
MOV             R4, R2
VPUSH           {D8}
LDR             R2, [R0,#0x120]
TST             R2, #1
BEQ             loc_1967FC
LDR             R2, [R0,#0x3D0]
AND             R3, R2, #1
CMP             R3, R1
BEQ             loc_1967FC
VMOV            S1, R4
VLDR            S0, =15.0
MOV             R3, #2
LDR             R8, =off_6D1648
BIC             R2, R2, #0x3E ; '>'
AND             R3, R3, R1,LSL#1
VCVT.F32.U32    S1, S1
ORR             R2, R2, #8
ORR             R2, R2, R3
CMP             R1, #1
ADD             R5, R0, #0x300
STR             R2, [R0,#0x3D0]
LDR             R0, [R8]
VLDR            S16, =40.0
MOVEQ           R6, #0x14
MOVNE           R7, #0x14
VADD.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BEQ             loc_1967E0
SXTH            R6, R1
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x174
MOV             R2, R7
MOV             R1, R6
BL              sub_505D14
VMOV            S0, R4
VCVT.F32.U32    S0, S0
VADD.F32        S0, S16, S0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R5,#0xCE]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
VPOP            {D8}
ADD             R0, R0, #0x15000
POP             {R4-R8,LR}
ADD             R0, R0, #0x13C
MOV             R1, #0
B               sub_19C4B4
SXTH            R7, R1
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x174
MOV             R2, R6
MOV             R1, R7
B               loc_1967A4
VPOP            {D8}
POP             {R4-R8,PC}
