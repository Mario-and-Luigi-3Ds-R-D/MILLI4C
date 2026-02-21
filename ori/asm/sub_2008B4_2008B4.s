PUSH            {R4,LR}
LDR             R1, =0xFFFF
MOV             R4, R0
MOV             R2, #4
BL              sub_110BE4
MOV             R0, R4
POP             {R4,PC}
