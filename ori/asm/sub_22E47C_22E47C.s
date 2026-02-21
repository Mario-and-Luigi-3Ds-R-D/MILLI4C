PUSH            {R4-R8,LR}
MOV             R6, R1
VPUSH           {D8}
LDRB            R1, [R1]
TST             R1, #1
BEQ             loc_22E51C
TST             R1, #2
BNE             loc_22E51C
TST             R1, #8
BEQ             loc_22E510
TST             R1, #4
VLDR            S16, =1.0
BEQ             loc_22E524
VLDR            S0, [R6,#4]
VLDR            S1, [R6,#0x1F8]
VCVT.F32.S32    S0, S0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_22E510
ADD             R5, R6, #0x10
ADD             R7, R0, #0x108
MOV             R4, #0
VMOV.F32        S0, S16
ADD             R3, R5, R4,LSL#2
LDR             R2, [R5,#0x14]
LDR             R1, [R3,#8]
LDRB            R0, [R5,#1]
LDR             R3, [R3,#0x18]
BL              sub_1CB1F8
ADD             R0, R7, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, #3
VSTR            S0, [R0]
BLT             loc_22E4D4
LDRB            R0, [R6]
BIC             R0, R0, #1
STRB            R0, [R6]
LDR             R0, [R6,#4]
ADD             R0, R0, #1
STR             R0, [R6,#4]
VPOP            {D8}
POP             {R4-R8,PC}
VLDR            S4, [R6,#8]
VMOV            R2, S4
CMP             R2, #0x3F800000
BLT             loc_22E574
ADD             R5, R6, #0x10
ADD             R7, R0, #0x108
MOV             R4, #0
VMOV.F32        S0, S16
ADD             R3, R5, R4,LSL#2
LDR             R2, [R5,#0x14]
LDR             R1, [R3,#8]
LDRB            R0, [R5,#1]
LDR             R3, [R3,#0x18]
BL              sub_1CB1F8
ADD             R0, R7, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, #3
VSTR            S0, [R0]
BLT             loc_22E540
B               loc_22E504
VLDR            S0, [R6,#0x200]
VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S2, S1
VLDRCC          S3, [R6,#0x1F4]
BCS             loc_22E510
VADD.F32        S3, S0, S3
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
VADD.F32        S1, S1, S3
BGT             loc_22E590
VSUB.F32        S0, S16, S4
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ORRLS           R0, R1, #0x10
BICHI           R0, R1, #0x10
STRB            R0, [R6]
B               loc_22E510
