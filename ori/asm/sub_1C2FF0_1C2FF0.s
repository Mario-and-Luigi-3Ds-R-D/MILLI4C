PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CDD80
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R0, [R5]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_5438BC
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#0xAC]
LDR             R2, =0x301FE
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #4
STRB            R0, [R4,#0xB0]
LDR             R0, [R5]
VLDR            S16, =0.0
MOV             R6, #0
MOV             R3, #0x100
VLDR            S0, [R0,#0x11C]
LDR             R0, [R4,#0xAC]
VLDR            S1, [R0,#0x24]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
MOVLE           R2, #1
STRBGT          R6, [R4,#0xB2]
STRBLE          R2, [R4,#0xB2]
MOVGT           R1, #6
MOVLE           R1, #3
MOV             R2, #0
BL              sub_14C430
STRB            R6, [R4,#0xB1]
LDR             R0, [R5]
LDR             R0, [R0,#8]
LDR             R1, [R0,#0x14C]
VMOV            S0, R1
STR             R1, [SP,#0x20+var_20]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1C30B8
ADD             SP, SP, #8
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_1C3128
LDR             R0, [R4,#0xAC]
ADD             R0, R0, #0x39C
VSTR            S16, [R0]
STR             R1, [R0,#4]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
