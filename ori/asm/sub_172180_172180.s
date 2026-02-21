VDIV.F32        S2, S1, S0
PUSH            {R4-R6,LR}
ADD             R1, R0, #0x400
LDR             R2, [R0,#0x4EC]
ADD             R1, R1, #0xEC
MOV             R4, R0
BIC             R2, R2, #4
ADD             R6, R0, #0x400
ORR             R2, R2, #1
ADD             R0, R0, #0x2400
STR             R2, [R1]
VSTR            S0, [R6,#0xC4]
LDR             R1, [R0,#0x298]
VMOV.F32        S0, S2
STR             R1, [R0,#0x29C]
BL              sub_5F6308
VCVT.U32.F32    S0, S0
ADD             R5, R4, #0x2600
MOV             R3, #0
MOV             R2, R3
MOV             R1, #1
VMOV            R0, S0
STRH            R0, [R5,#0xB6]
LDR             R0, [R4]
LDR             R12, [R0,#0x34C]
MOV             R0, R4
BLX             R12
LDR             R1, [R4,#0x7FC]
MOV             R0, #0
VLDR            S0, =0.0
MOV             R2, #0
STRH            R0, [R1,#0x16]
MOV             R1, #0x10
STRH            R1, [R6,#0x68]
MOV             R0, #0xC8
VMOV.F32        S1, S0
STRH            R0, [R5,#0x84]
LDR             R0, =0x208D8
MOV             R1, R4
BL              sub_1459F8
ADD             R4, R4, #0x2400
ADD             R4, R4, #0x2B4
MOV             R0, #1
STRB            R0, [R4]
POP             {R4-R6,PC}
