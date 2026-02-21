PUSH            {R4-R10,LR}
ADD             R5, SP, #0x20+arg_0
AND             R8, R1, #3
MOV             R7, #3
LDM             R5, {R9,LR}
ADD             R12, R0, #0x400
LDRB            R5, [R0,#0x4B5]
LDR             R10, [SP,#0x20+arg_8]
LDR             R4, [SP,#0x20+arg_C]
BIC             R5, R5, #3
ORR             R5, R5, R8
BICS            R7, R7, R5
ADD             R7, R0, #0x400
ADD             R7, R7, #0x9C
STRB            R5, [R0,#0x4B5]
STR             R10, [R0,#0x4A4]
STM             R7, {R9,LR}
ADD             R1, R0, #0x400
VLDR            S1, =1.0
VLDR            S0, =0.5
ADD             R12, R12, #0xB5
ADD             R1, R1, #0xAC
STR             R4, [R0,#0x4A8]
BEQ             loc_22D1D0
CMP             R2, #0
LDREQ           R2, =unk_67388D
MOVEQ           R3, #0x1A
ADD             R3, R3, R2
SUB             R3, R3, #2
STR             R2, [R0,#0x4B0]
SUB             R2, R3, #1
STR             R2, [R1]
LDRSB           R1, [R3]
ORR             R3, R5, #4
BIC             R2, R1, #1
VMOV            S2, R2
TST             R1, #1
ADD             R1, R0, LR,ASR#1
VCVT.F32.U32    S2, S2
VMUL.F32        S0, S2, S0
VADDNE.F32      S0, S0, S1
TST             LR, #1
VCVT.S32.F32    S0, S0
VMOV            R2, S0
STRB            R2, [R0,#0x4B4]
STRB            R3, [R12]
BEQ             loc_22D1C0
LDR             R0, [R1]
LDR             R9, [R0,R9]
MOV             R0, R1
MOV             R12, R9
POP             {R4-R10,LR}
BX              R12
CMP             R2, #0
LDREQ           R2, =unk_67388D
BIC             LR, R5, #4
ADD             R3, R2, #1
STR             R2, [R0,#0x4B0]
ADD             R2, R2, #2
STR             R3, [R0,#0x4AC]
STR             R2, [R1]
LDRSB           R1, [R3]
BIC             R2, R1, #1
VMOV            S2, R2
TST             R1, #1
ADD             R2, R0, R4,ASR#1
VCVT.F32.U32    S2, S2
VMUL.F32        S0, S2, S0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R3, S0
STRB            R3, [R0,#0x4B4]
STRB            LR, [R12]
LDR             R0, [R0,#0x4A8]
TST             R0, #1
BEQ             loc_22D234
LDR             R0, [R2]
LDR             R10, [R0,R10]
MOV             R0, R2
MOV             R12, R10
POP             {R4-R10,LR}
BX              R12
