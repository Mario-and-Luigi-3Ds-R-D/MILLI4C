PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R2
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0,#0x444]
SUB             SP, SP, #0x20
CMP             R0, R1
BEQ             loc_2837E0
MOV             R0, #0
VLDR            S0, =1.0
ADD             R2, R4, #0x400
ADD             R2, R2, #0x58 ; 'X'
VMOV.F32        S1, S0
STRB            R0, [R4,#0x454]
MOV             R6, R2
VLDR            S2, =0.0
MOV             R0, R6
STR             R1, [R4,#0x444]
BL              sub_28E0A4
BL              sub_4635D8
MOV             R2, R0
MOV             R1, R6
MOV             R0, SP
BL              sub_4632FC
VLDR            S1, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
VLDR            S2, [SP,#0x38+var_30]
VMUL.F32        S1, S1, S16
VMUL.F32        S0, S0, S16
VMUL.F32        S2, S2, S16
VLDM            R5, {S3-S5}
ADD             R1, SP, #0x38+var_28
MOV             R0, R4
VADD.F32        S1, S3, S1
VADD.F32        S0, S4, S0
VADD.F32        S2, S5, S2
VSTR            S1, [SP,#0x38+var_28]
VSTR            S0, [SP,#0x38+var_24]
VSTR            S2, [SP,#0x38+var_20]
BL              sub_14E984
ADD             R1, R4, #0x24 ; '$'
ADD             R0, R4, #0x3F8
BL              sub_28BF30
ADD             SP, SP, #0x20 ; ' '
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_2835A8
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8}
POP             {R4-R6,PC}
