PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_4635D8
ADD             R1, R4, #0x400
ADD             R1, R1, #0x58 ; 'X'
MOV             R2, R0
MOV             R5, R1
MOV             R0, R5
BL              sub_4632FC
LDR             R0, [R4,#0x464]
VLDR            S0, [R0,#0x3C]
VLDR            S1, [R0,#0xF0]
ADD             R0, R4, #0x400
VLDR            S2, [R0,#0x50]
VMUL.F32        S1, S1, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VLDR            S1, [R5]
VMUL.F32        S1, S1, S0
VSTR            S1, [R5]
VLDR            S1, [R5,#4]
VMUL.F32        S1, S1, S0
VSTR            S1, [R5,#4]
VLDR            S1, [R5,#8]
VMUL.F32        S0, S1, S0
VSTR            S0, [R5,#8]
POP             {R4-R6,PC}
