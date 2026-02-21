PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R2, #0
LDR             R0, =0xE00F
MOV             R1, R2
BL              sub_116B34
VMOV.F32        S1, S0
VLDR            S2, =0.0
VLDR            S0, =72.0
LDR             R0, [R4,#4]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_24106C
MOV             R1, R5
POP             {R4-R6,LR}
VLDR            S1, =121.0
B               sub_3594AC
MOV             R1, R5
POP             {R4-R6,LR}
VLDR            S1, =248.0
B               sub_3594AC
