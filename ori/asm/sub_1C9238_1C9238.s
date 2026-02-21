PUSH            {R4-R6,LR}
ADD             R4, R0, #0x100
MOV             R5, R0
MOV             R2, #0
LDRH            R0, [R4,#0x8C]
MOV             R1, R2
BL              sub_116B34
VLDR            S1, =0.0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             locret_1C9288
MOV             R1, #0
MOV             R0, R5
BL              sub_1E8FFC
LDRH            R0, [R4,#0x8C]
POP             {R4-R6,LR}
MOV             R2, #0
MOV             R1, R2
VLDR            S0, =1.0
B               sub_145730
POP             {R4-R6,PC}
