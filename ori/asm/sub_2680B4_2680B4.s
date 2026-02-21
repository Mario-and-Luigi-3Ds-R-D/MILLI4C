PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
MOV             R6, R1
LDM             R1, {R1-R3}
ADD             R12, R4, #0x44 ; 'D'
LDR             R5, [R0,#8]
STM             R12, {R1-R3}
LDR             R0, [R0,#0xC]
BL              sub_5CBE24
VLDR            S1, [R5,#0x3E8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVHI           R0, #4
BHI             loc_268108
LDR             R0, [R4,#8]
VLDR            S0, [R5,#0x3EC]
MOV             R1, R6
ADD             R0, R0, #0x1DC
BL              sub_5A1FC8
MOV             R0, #5
STRB            R0, [R4,#0xC]
POP             {R4-R6,PC}
