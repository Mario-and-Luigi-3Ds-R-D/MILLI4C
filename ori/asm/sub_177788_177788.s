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
SUB             SP, SP, #0x24
MOV             R1, R9
BLX             R12
LDRH            R1, [R6]
VLDR            S0, =0.017453
MOV             R7, #0
CMP             R1, #0xA8
BEQ             loc_1777F0
CMP             R1, #0xA9
BEQ             loc_177868
CMP             R1, #0xAA
BEQ             loc_177934
CMP             R1, #0xAB
BNE             loc_177974
B               loc_17795C
ADD             R1, R4, #8
ADD             R4, R4, #0x14
VLDM            R1, {S1-S3}
ADD             R1, SP, #0x40+var_38
ADD             R3, R0, #0x400
ADD             R3, R3, #0x28 ; '('
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x40+var_30]
VLDR            S0, =0.034907
VSTM            R1, {S1-S2}
ADD             R1, SP, #0x40+var_2C
VLDM            R4, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x40+var_24]
VSTM            R1, {S1-S2}
LDR             R1, [R5,#4]!
LDR             R2, [R5,#0x1C]
AND             R1, R1, #0xFF
CMP             R2, #0
MOVNE           R2, #1
STRD            R2, R3, [SP,#0x40+var_40]
LDR             R2, [R0]
ADD             R3, SP, #0x40+var_2C
LDR             R12, [R2,#0x18C]
ADD             R2, SP, #0x40+var_38
B               loc_17792C
ADD             R4, R4, #8
ADD             R1, SP, #0x40+var_30
VLDM            R4, {S1-S3}
ADD             R4, SP, #0x40+var_38
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VSTR            S0, [SP,#0x40+var_28]
VSTM            R1, {S1-S2}
LDR             R2, [R5,#0x14]
VLDR            S1, =0.5
VLDR            S2, =1.0
BIC             R3, R2, #1
VMOV            S0, R3
TST             R2, #1
LDR             R2, [R5,#0x18]
LDR             R1, [R5,#4]
BIC             R12, R2, #1
VCVT.F32.U32    S0, S0
AND             R1, R1, #0xFF
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
LDR             R2, [R5,#0x20]
VCVT.S32.F32    S3, S0
VMOV            S0, R12
ADD             R12, R0, #0x400
ADD             R12, R12, #0x28 ; '('
VCVT.F32.U32    S0, S0
VSTR            S3, [SP,#0x40+var_40]
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S2
CMP             R2, #0
MOVNE           R2, #1
VCVT.S32.F32    S0, S0
VSTR            S0, [SP,#0x40+var_3C]
STM             R4, {R2,R12}
LDR             R2, [R0]
LDR             R12, [R2,#0x190]
ADD             R2, SP, #0x40+var_30
BLX             R12
B               loc_177974
LDRB            R0, [R0,#0x428]
TST             R0, #7
BEQ             loc_177974
MOV             R2, R6
MOV             R1, R9
MOV             R0, R8
BL              sub_29D1B0
MOV             R7, #3
NOP
B               loc_177974
LDR             R1, [R0]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x28 ; '('
LDR             R3, [R1,#0x194]
MOV             R1, #0
BLX             R3
ADD             SP, SP, #0x24 ; '$'
MOV             R0, R7
POP             {R4-R9,PC}
