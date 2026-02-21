PUSH            {R3-R5,LR}
MOV             R4, R0
LDRB            R1, [R0,#0xC0]
LDRB            R0, [R0,#0xC1]
MOV             R5, #0
ADD             R1, R1, #1
AND             R1, R1, #0xFF
CMP             R1, R0,LSL#1
STRB            R1, [R4,#0xC0]
STRBCS          R5, [R4,#0xC0]
LDRB            R1, [R4,#0xC0]
VMOV            S0, R0
VLDR            S2, =180.0
VMOV            S1, R1
VCVT.F32.U32    S3, S0
VCVT.F32.U32    S0, S1
VMUL.F32        S1, S0, S2
VDIV.F32        S0, S1, S3
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VLDR            S2, =1.0
VLDR            S1, =0.5
LDRB            R0, [R4,#0xBF]
VADD.F32        S0, S0, S2
MOV             R2, SP
VMUL.F32        S1, S0, S1
VMOV            S0, R0
MOV             R0, #0xFFFFFFFF
REV             R0, R0
BIC             R1, R0, #0xFF0000
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S1, S0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R0, R0, #0xFF
MOV             R3, R0,LSL#16
AND             R12, R3, #0xFF0000
MOV             R3, R0,LSL#8
ORR             R1, R1, R12
AND             R3, R3, #0xFF00
BIC             R1, R1, #0xFF00
ORR             R1, R1, R3
BIC             R1, R1, #0xFF
ORR             R0, R0, R1
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R5,LSL#24
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4,#0xA4]
MOV             R1, #1
BL              sub_12C9C4
POP             {R3-R5,PC}
