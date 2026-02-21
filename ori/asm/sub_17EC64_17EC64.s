ADD             R1, R3, #0x10
PUSH            {R4,R5,LR}
ADD             R0, R3, #8
LDM             R1, {R1-R3,R12}
SUB             SP, SP, #0x24
ADD             LR, SP, #0x30+var_20
STRB            R1, [SP,#0x30+var_14]
STRB            R2, [SP,#0x30+var_13]
STRB            R3, [SP,#0x30+var_12]
STRB            R12, [SP,#0x30+var_11]
LDR             R3, [R0,#0x18]
VLDR            S0, =0.5
VLDR            S4, =1.0
BIC             R12, R3, #1
TST             R3, #1
VMOV            S1, R12
LDR             R3, [R0,#0x1C]
LDR             R1, =off_6D1648
MOV             R4, #1
BIC             R12, R3, #1
VMOV            S2, R12
VCVT.F32.U32    S1, S1
LDR             R2, [R1]
LDR             R1, [R0,#4]
VCVT.F32.U32    S2, S2
LDR             R2, [R2,#0xA4]
AND             R1, R1, #0xFF
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VADDNE.F32      S1, S1, S4
TST             R3, #1
LDR             R3, [R0,#0x20]
VADDNE.F32      S2, S2, S4
TST             R3, #1
BIC             R12, R3, #1
LDR             R3, [R0,#0x24]
VMOV            S3, R12
LDR             R0, [R0]
BIC             R12, R3, #1
VMOV            S5, R12
LDR             R12, =0x1D07
VCVT.S32.F32    S1, S1
VCVT.F32.U32    S3, S3
VCVT.S32.F32    S2, S2
MUL             R12, R0, R12
VCVT.F32.U32    S5, S5
RSB             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R12, R2, R12,LSL#2
ADD             R0, R2, R0,LSL#3
VMUL.F32        S3, S3, S0
ADD             R12, R12, #0x27400
ADD             R0, R0, #0x40000
ADD             R12, R12, #0x1D8
VMUL.F32        S0, S5, S0
ADD             R0, R0, #0xA400
ADD             R2, R12, #0x5800
STR             R12, [R0,#0xA4]
LDR             R2, [R2,#8]
ADD             R12, R0, #0xC
VADDNE.F32      S3, S3, S4
TST             R3, #1
STR             R2, [R0,#4]
ADD             R5, R0, #4
VADDNE.F32      S0, S0, S4
ADD             R3, SP, #0x30+var_14
VCVT.S32.F32    S3, S3
VCVT.S32.F32    S0, S0
VSTR            S0, [SP,#0x30+var_24]
STM             LR, {R4,R5,R12}
VSTMEA          SP, {S1-S3}
LDR             R2, [R0]
LDR             R12, [R2,#0xC]
ADD             R2, R0, #4
BLX             R12
ADD             SP, SP, #0x24 ; '$'
MOV             R0, #0
POP             {R4,R5,PC}
