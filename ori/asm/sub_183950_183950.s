PUSH            {R4,R5,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
SUB             SP, SP, #0x24
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
VLDR            S2, [R4,#8]
VLDR            S1, [R4,#0xC]
VLDR            S0, [R4,#0x10]
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
MOV             R5, R0
VSTR            S2, [SP,#0x30+var_1C]
VSTR            S1, [SP,#0x30+var_18]
VSTR            S0, [SP,#0x30+var_14]
LDR             R0, [R4,#0x14]
VLDR            S1, =0.5
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VSTR            S0, [R4,#0x14]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
LDR             R2, [R4,#4]
LDR             R1, [R4,#0x20]
LDR             R3, [R4,#0x14]
CMP             R0, #4
MOV             R0, R5
AND             R5, R2, #0xFF
BEQ             loc_183A48
CMP             R1, #0
ADD             R1, R4, #0x18
MOVEQ           R2, #0
VLDM            R1, {S0-S1}
MOVNE           R2, #1
LDR             R1, [R4,#0x24]
ADD             R4, SP, #0x30+var_24
VSTR            S1, [SP,#0x30+var_2C]
CMP             R1, #0
MOVNE           R1, #1
ADD             R12, R0, #0x164
STR             R2, [SP,#0x30+var_28]
STM             R4, {R1,R12}
ADD             R2, SP, #0x30+var_1C
VSTR            S0, [SP,#0x30+var_30]
LDR             R1, [R0]
LDR             R12, [R1,#0x1E8]
MOV             R1, R5
BLX             R12
B               loc_183A84
CMP             R1, #0
LDR             R1, [R4,#0x24]
MOVNE           R2, #1
MOVEQ           R2, #0
CMP             R1, #0
ADD             R4, SP, #0x30+var_2C
MOVNE           R1, #1
ADD             R12, R0, #0x164
STR             R2, [SP,#0x30+var_30]
STM             R4, {R1,R12}
ADD             R2, SP, #0x30+var_1C
LDR             R1, [R0]
LDR             R12, [R1,#0xE4]
MOV             R1, R5
BLX             R12
ADD             SP, SP, #0x24 ; '$'
MOV             R0, #0
POP             {R4,R5,PC}
