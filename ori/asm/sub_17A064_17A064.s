PUSH            {R4-R6,LR}
MOV             R6, R2
MOV             R2, R3
LDRH            R3, [R3]
MOV             R12, R0
MOV             R5, R1
VLDR            S0, =0.017453
SUB             R3, R3, #0x100
SUBS            R3, R3, #0x12
SUB             SP, SP, #0x38
ADD             R0, R2, #8
ADD             R1, R2, #0x68 ; 'h'
MOV             R4, #0
BEQ             loc_17A0B8
CMP             R3, #1
BEQ             loc_17A144
CMP             R3, #2
BEQ             loc_17A21C
CMP             R3, #3
BNE             loc_17A264
B               loc_17A248
ADD             R2, R1, #8
ADD             R1, R1, #0x14
VLDM            R2, {S1-S3}
ADD             R2, SP, #0x48+var_20
ADD             R6, SP, #0x48+var_44
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x48+var_18]
VLDR            S0, =0.034907
VSTM            R2, {S1-S2}
ADD             R2, SP, #0x48+var_38
VLDM            R1, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x48+var_30]
VSTM            R2, {S1-S2}
LDR             R3, [R0,#0x20]
LDM             R0, {R1,R2}
LDR             R0, [R12,#4]
CMP             R3, #0
ADD             R12, SP, #0x48+var_38
ADD             R5, R0, #0x14000
MOVNE           R3, #1
ADD             R5, R5, #0x39C
STR             R12, [SP,#0x48+var_48]
STM             R6, {R3,R5}
AND             R1, R1, #0xFF
LDR             R3, [R0]
AND             R2, R2, #0xFF
LDR             R12, [R3,#0x240]
ADD             R3, SP, #0x48+var_20
BLX             R12
B               loc_17A264
ADD             R1, R1, #8
ADD             R2, SP, #0x48+var_20
VLDM            R1, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x48+var_18]
VSTM            R2, {S1-S2}
LDR             R3, [R0,#0x14]
VLDR            S1, =0.5
VLDR            S2, =1.0
BIC             R5, R3, #1
VMOV            S0, R5
TST             R3, #1
LDR             R3, [R0,#0x18]
LDM             R0, {R1,R2}
LDR             R12, [R12,#4]
BIC             R5, R3, #1
VCVT.F32.U32    S0, S0
AND             R1, R1, #0xFF
AND             R2, R2, #0xFF
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S2
TST             R3, #1
LDR             R3, [R0,#0x1C]
LDR             R0, [R0,#0x20]
VCVT.S32.F32    S3, S0
VMOV            S0, R5
BIC             R5, R3, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S2
TST             R3, #1
ADD             R3, R12, #0x14000
ADD             R3, R3, #0x39C
VCVT.S32.F32    S4, S0
VMOV            S0, R5
ADD             R5, SP, #0x48+var_3C
VCVT.F32.U32    S0, S0
VSTR            S4, [SP,#0x48+var_44]
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S2
CMP             R0, #0
MOVNE           R0, #1
VCVT.S32.F32    S0, S0
VSTR            S0, [SP,#0x48+var_40]
STM             R5, {R0,R3}
ADD             R3, SP, #0x48+var_20
VSTR            S3, [SP,#0x48+var_48]
LDR             R0, [R12]
LDR             R5, [R0,#0x244]
MOV             R0, R12
BLX             R5
B               loc_17A264
LDR             R0, [R12,#4]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x39C]
TST             R0, #7
BEQ             loc_17A264
MOV             R1, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R4, #3
NOP
B               loc_17A264
LDR             R0, [R12,#4]
ADD             R2, R0, #0x14000
LDR             R1, [R0]
ADD             R2, R2, #0x39C
LDR             R3, [R1,#0x248]
MOV             R1, #0
BLX             R3
ADD             SP, SP, #0x38 ; '8'
MOV             R0, R4
POP             {R4-R6,PC}
