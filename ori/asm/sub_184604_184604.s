PUSH            {R4-R9,LR}
MOV             R6, R3
ADD             R4, R3, #0x68 ; 'h'
ADD             R5, R3, #8
LDR             R3, [R0]
MOV             R8, R1
LDR             R1, [R5]
MOV             R9, R2
LDR             R12, [R3,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R1
SUB             SP, SP, #0x1C
MOV             R1, R9
BLX             R12
LDRH            R1, [R6]
MOV             R7, #0
CMP             R1, #0xA4
BEQ             loc_184668
CMP             R1, #0xA5
BEQ             loc_1846C0
CMP             R1, #0xA6
BEQ             loc_184768
CMP             R1, #0xA7
BNE             loc_1847A4
B               loc_184790
ADD             R1, R4, #8
ADD             R6, SP, #0x38+var_34
LDM             R1, {R1-R3}
ADD             R4, R4, #0x14
VLDR            S0, =2.0
STM             R6, {R1-R3}
ADD             R1, SP, #0x38+var_28
ADD             R2, R0, #0x3F8
VLDM            R4, {S1-S3}
ADD             R3, SP, #0x38+var_28
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x38+var_20]
VSTM            R1, {S1-S2}
LDR             R1, [R5,#4]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R0]
AND             R1, R1, #0xFF
LDR             R12, [R2,#0x170]
ADD             R2, SP, #0x38+var_34
B               loc_184760
ADD             R4, R4, #8
ADD             R6, SP, #0x38+var_2C
LDM             R4, {R1-R3}
VLDR            S1, =0.5
VLDR            S2, =1.0
STM             R6, {R1-R3}
LDR             R2, [R5,#0x14]
LDR             R1, [R5,#4]
BIC             R3, R2, #1
VMOV            S0, R3
TST             R2, #1
LDR             R2, [R5,#0x18]
AND             R1, R1, #0xFF
BIC             R12, R2, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S2
TST             R2, #1
LDR             R2, [R5,#0x1C]
VCVT.S32.F32    S0, S0
VMOV            R3, S0
VMOV            S0, R12
BIC             R12, R2, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S2
TST             R2, #1
ADD             R2, R0, #0x3F8
VCVT.S32.F32    S3, S0
VMOV            S0, R12
VCVT.F32.U32    S0, S0
VSTR            S3, [SP,#0x38+var_38]
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S2
VCVT.S32.F32    S0, S0
VSTR            S0, [SP,#0x38+var_34]
STR             R2, [SP,#0x38+var_30]
LDR             R2, [R0]
LDR             R12, [R2,#0x174]
ADD             R2, SP, #0x38+var_2C
BLX             R12
B               loc_1847A4
LDRB            R0, [R0,#0x3F8]
TST             R0, #7
BEQ             loc_1847A4
MOV             R2, R6
MOV             R1, R9
MOV             R0, R8
BL              sub_29D1B0
MOV             R7, #3
NOP
B               loc_1847A4
LDR             R1, [R0]
ADD             R2, R0, #0x3F8
LDR             R3, [R1,#0x178]
MOV             R1, #0
BLX             R3
ADD             SP, SP, #0x1C
MOV             R0, R7
POP             {R4-R9,PC}
