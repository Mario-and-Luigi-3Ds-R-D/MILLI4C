PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R6, R4, #0x19C000
MOV             R8, R1
LDR             R0, =0x19DF78
MOV             R7, R2
VPUSH           {D8}
VMOV.F32        S16, S0
VLDR            S0, =0.0
ADD             R6, R6, #0x1F40
ADD             R5, R4, R0
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1D2408
MOV             R0, R6
BL              sub_4E63E0
LDR             R0, [R8]
STR             R0, [R6,#4]
STR             R0, [R6]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [R7]
STR             R0, [R5,#4]
STR             R0, [R5]
B               loc_1D2480
LDR             R0, [R7]
MOV             R2, #0
LDR             R1, [R8]
BIC             R0, R0, #0xFF000000
MOV             R3, R2,LSL#24
BIC             R1, R1, #0xFF000000
ORR             R10, R0, R2,LSL#24
ORR             R9, R1, R3
MOV             R0, R6
BL              sub_4E63E0
STR             R9, [R6,#4]
MOV             R0, R5
STR             R9, [R6]
BL              sub_4E63E0
VMOV.F32        S0, S16
STR             R10, [R5,#4]
MOV             R1, R8
MOV             R0, R6
STR             R10, [R5]
BL              sub_4E665C
VMOV.F32        S0, S16
MOV             R1, R7
MOV             R0, R5
BL              sub_4E665C
VCVT.U32.F32    S0, S16
VMOV            R0, S0
UXTH            R1, R0
LDR             R0, =0xFFE683CC
SUB             R0, R4, R0
BL              sub_503664
LDR             R1, =off_6540C4
ADD             R2, R4, #0x1A0000
LDM             R1, {R0,R1}
STRD            R0, R1, [R2,#0x5C]
VPOP            {D8}
POP             {R4-R10,PC}
