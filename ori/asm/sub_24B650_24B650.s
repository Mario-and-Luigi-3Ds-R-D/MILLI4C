PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S1, =0.71111
VPUSH           {D8}
SUB             SP, SP, #0x10
VLDR            S0, [R4,#0x1C]
LDR             R0, [R0,#4]
VMUL.F32        S0, S0, S1
VLDR            S16, [R0,#0x54]
BL              sub_464380
VLDR            S2, [R4,#0x14]
VLDR            S1, [R4,#8]
MOV             R1, SP
VMLA.F32        S1, S0, S2
VLDR            S0, [R4,#0xC]
VLDR            S2, [R4,#0x10]
VSTR            S1, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
VSTR            S2, [SP,#0x28+var_20]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x30 ; '0'
BL              sub_14E984
VLDR            S0, [SP,#0x28+var_28]
LDR             R0, [R4,#4]
MOV             R3, #0x100
VCMPE.F32       S0, S16
ADD             R0, R0, #0x30 ; '0'
MOV             R2, #0
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #2
MOVLE           R1, #3
BL              sub_14C430
LDR             R5, =off_6CE970
VLDR            S0, [R4,#0x18]
VLDR            S2, =0.0039062
LDR             R0, [R5]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VLDR            S1, [R4,#0x1C]
VMUL.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x1C]
LDRB            R0, [R4,#0x28]
CMP             R0, #0
BNE             loc_24B770
LDR             R0, [R4,#4]
BL              sub_5CAF40
CMP             R0, #0
BEQ             loc_24B770
LDR             R0, [R4,#4]
LDR             R12, [R5]
LDR             R2, =0x300BF
ADD             R1, R0, #0x30 ; '0'
LDR             R0, =0xFFE683CC
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R4,#0x20]
ADD             R5, R4, #0x20 ; ' '
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
MOV             R0, #1
STRNE           R5, [R6,#0x64]
STRB            R0, [R4,#0x28]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
