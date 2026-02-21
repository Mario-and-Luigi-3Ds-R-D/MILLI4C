PUSH            {R3-R7,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R4, R2
VLDR            S0, [R2,#0x68]
MOV             R0, SP
BL              sub_5F6640
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
VLDR            S0, [SP,#0x18+var_18]
BL              sub_145730
MOV             R0, #0
POP             {R3-R7,PC}
