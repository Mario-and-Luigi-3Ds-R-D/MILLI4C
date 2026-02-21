PUSH            {R4,LR}
MOV             R3, R0
LDRH            R0, [R2,#2]
VLDR            S0, [R2,#0x68]
MOV             R2, R1
MOV             R1, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
