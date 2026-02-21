VDIV.F32        S2, S1, S0
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x4EC]
ADD             R6, R4, #0x400
ADD             R2, R4, #0x2400
BIC             R1, R0, #4
ORR             R1, R1, #1
STR             R1, [R4,#0x4EC]
VSTR            S2, [R6,#0xC4]
LDR             R0, [R2,#0x298]
STR             R0, [R2,#0x29C]
VDIV.F32        S0, S1, S2
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
LDR             R0, =0x26B4
MOV             R1, #1
STRB            R1, [R0,R4]
POP             {R4-R6,PC}
