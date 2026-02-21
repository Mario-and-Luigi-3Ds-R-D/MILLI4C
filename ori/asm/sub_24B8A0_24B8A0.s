PUSH            {R4-R7,LR}
MOV             R4, R0
VLDR            S1, =0.71111
VPUSH           {D8}
SUB             SP, SP, #0xC
VLDR            S0, [R4,#0x20]
LDR             R0, [R0,#4]
VMUL.F32        S0, S0, S1
VLDR            S17, [R0,#0x54]
BL              sub_464380
VLDR            S1, [R4,#0x18]
VLDR            S2, [R4,#0xC]
ADD             R0, R4, #0x10
VMUL.F32        S16, S0, S1
VLDM            R0, {S0-S1}
ADD             R0, SP, #0x28+var_24
MOV             R1, SP
VADD.F32        S2, S2, S16
VSTR            S2, [SP,#0x28+var_28]
VSTM            R0, {S0-S1}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x30 ; '0'
BL              sub_14E984
LDRB            R0, [R4,#8]
LDR             R6, =0x300BF
LDR             R5, =0xFFE683CC
LDR             R7, =off_6CE970
CMP             R0, #0
BEQ             loc_24B958
CMP             R0, #1
BNE             loc_24BAB8
LDR             R0, [R4,#4]
MOV             R1, R0
ADD             R0, R0, #0x3CC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_24BAB8
MOV             R0, R1
BL              sub_5CAF40
CMP             R0, #0
BEQ             loc_24BB04
LDR             R0, [R4,#0x30]
CMP             R0, #0
BNE             loc_24BB04
B               loc_24BAC4
LDR             R0, [R4,#4]
BL              sub_5CAF40
CMP             R0, #0
NOP
BEQ             loc_24B9B8
LDR             R0, [R4,#0x30]
CMP             R0, #0
BNE             loc_24B9B8
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R6
ADD             R1, R0, #0x30 ; '0'
LDR             R0, [R7]
SUB             R0, R0, R5
BL              sub_503720
MOV             R6, R0
LDR             R0, [R4,#0x2C]
ADD             R5, R4, #0x2C ; ','
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
VLDR            S0, [SP,#0x28+var_28]
LDR             R0, [R4,#4]
MOV             R3, #0x100
VCMPE.F32       S0, S17
ADD             R0, R0, #0x30 ; '0'
MOV             R2, #0
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #2
MOVLE           R1, #3
BL              sub_14C430
VLDR            S0, [R4,#0x24]
VLDR            S17, =0.0
VSUB.F32        S0, S16, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R4,#0x28]
VNEGCC.F32      S0, S0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_24BA84
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R5, =off_6CE098
MOV             R1, #0x65 ; 'e'
MUL             R0, R0, R1
LDR             R1, [R5]
MOV             R0, R0,LSR#16
LDR             R1, [R1,#0x8C]
LDR             R1, [R1,#0x4BC]
VSTR            S16, [R4,#0x24]
CMP             R1, R0
BHI             loc_24BA84
LDR             R0, [R4,#0x30]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
MOV             R0, #1
STRB            R0, [R4,#8]
LDR             R1, [R5]
LDR             R0, [R4,#4]
MOV             R2, #0
MOV             R3, #0x100
LDR             R1, [R1,#0x8C]
ADD             R0, R0, #0x3CC
LDR             R1, [R1,#0x4C0]
VSTR            S17, [R0]
STR             R1, [R0,#4]
LDR             R0, [R4,#4]
MOV             R1, R2
ADD             R0, R0, #0x30 ; '0'
BL              sub_14C430
LDR             R0, [R7]
VLDR            S0, [R4,#0x1C]
VLDR            S2, =0.0039062
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VLDR            S1, [R4,#0x20]
VMUL.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x20]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R6
ADD             R1, R0, #0x30 ; '0'
LDR             R0, [R7]
SUB             R0, R0, R5
BL              sub_503720
MOV             R6, R0
LDR             R0, [R4,#0x2C]
ADD             R5, R4, #0x2C ; ','
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x64]
MOV             R0, #0
STRB            R0, [R4,#8]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
