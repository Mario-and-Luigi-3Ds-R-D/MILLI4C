PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0x1C
LDRB            R2, [R0,#0x3F4]
MOV             R0, #1
STRB            R0, [R4,#0x454]
CMP             R2, #1
MOV             R7, #0
MOVEQ           R0, #2
STRB            R7, [R4,#0x415]
ADD             R5, R4, #0x400
STRBEQ          R0, [R4,#0x3F4]
ADD             R5, R5, #0x1C
ADD             R6, R4, #0x400
VLDR            S1, [R1]
VLDR            S4, [R5]
VLDR            S0, [R6,#0x20]
VLDR            S2, [R1,#8]
VLDR            S3, [R5,#8]
VSUB.F32        S1, S1, S4
VSUB.F32        S0, S0, S0
VSUB.F32        S2, S2, S3
VSTR            S1, [SP,#0x30+var_2C]
VSTR            S0, [SP,#0x30+var_28]
VSTR            S2, [SP,#0x30+var_24]
BL              sub_4635D8
MOV             R2, R0
ADD             R1, SP, #0x30+var_2C
MOV             R0, R1
BL              sub_4632FC
VLDR            S0, [R6,#0x28]
VLDR            S1, [SP,#0x30+var_2C]
LDR             R0, =off_6CE970
ADD             R2, SP, #0x30+var_20
VMUL.F32        S3, S1, S0
MOV             R3, #1
ADD             R1, R3, #0x1A8
VSTR            S3, [SP,#0x30+var_2C]
VLDR            S1, [SP,#0x30+var_28]
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x30+var_28]
VLDR            S2, [SP,#0x30+var_24]
VMUL.F32        S2, S2, S0
VSTR            S2, [SP,#0x30+var_24]
VLDR            S4, [R5,#8]
VLDR            S0, [R5]
LDR             R12, [R0]
VLDR            S5, [R5,#4]
LDR             R0, [R4,#0x464]
VADD.F32        S2, S4, S2
VADD.F32        S0, S0, S3
VADD.F32        S1, S5, S1
ADD             R0, R0, #0x60 ; '`'
VLDM            R0, {S3-S5}
MOV             R0, R12
VADD.F32        S2, S2, S5
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTM            R2, {S0-S2}
STR             R7, [SP,#0x30+var_30]
BL              sub_52AEA8
STR             R7, [R4,#0x444]
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
