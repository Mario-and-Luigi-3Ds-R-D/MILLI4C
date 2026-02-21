PUSH            {R4-R6,LR}
MOV             R5, R0
LDRH            R0, [R2,#2]
MOV             R4, R2
MOV             R6, R1
MOV             R2, R1
MOV             R1, R5
BL              sub_116B34
VLDR            S1, =1.0
LDRH            R0, [R4,#2]
MOV             R2, R6
VADD.F32        S0, S0, S1
MOV             R1, R5
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
