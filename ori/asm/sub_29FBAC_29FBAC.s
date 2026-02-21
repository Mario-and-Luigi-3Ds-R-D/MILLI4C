VLDR            S1, =0.0
PUSH            {R4-R6,LR}
MOV             R5, R1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_29FBE0
ADD             R4, R0, #0x130
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [R5]
STR             R0, [R4,#4]
STR             R0, [R4]
POP             {R4-R6,PC}
POP             {R4-R6,LR}
ADD             R0, R0, #0x130
B               sub_4E665C
