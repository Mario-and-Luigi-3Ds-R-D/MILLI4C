PUSH            {R4-R6,LR}
MOV             R5, R0
VLDR            S0, [R2,#0x68]
VLDR            S1, =0.71111
MOV             R6, R1
MOV             R4, R2
VMUL.F32        S0, S0, S1
BL              sub_464318
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
