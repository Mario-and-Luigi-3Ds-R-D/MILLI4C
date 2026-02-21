PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, [R0,#0x4E0]
MOV             R6, #0
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_28EB98
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#8]
CMP             R0, #0
STRNE           R6, [R0,#0x64]
STRNE           R6, [R5,#8]
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#0xC]
LDR             R2, =0x301FE
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #3
STRB            R0, [R4,#0xA0]
LDR             R0, [R4,#0x4D8]
MOV             R3, #0x100
MOV             R2, #0
LDRB            R0, [R0,#0x10]
CMP             R0, #0
MOVNE           R0, #1
STRBNE          R0, [R4,#0xA2]
STRBEQ          R6, [R4,#0xA2]
LDR             R0, [R4,#0xC]
MOVNE           R1, #3
MOVEQ           R1, #6
BL              sub_14C430
STRB            R6, [R4,#0xA1]
LDR             R0, [R4,#0x4D8]
VLDR            S1, =0.0
VLDR            S0, [R0,#0x20]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_28EC18
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_28ED1C
LDR             R0, [R4,#0xC]
ADD             R0, R0, #0x39C
VSTR            S1, [R0]
VSTR            S0, [R0,#4]
POP             {R4-R6,PC}
