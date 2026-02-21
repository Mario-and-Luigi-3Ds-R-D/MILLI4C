PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, =0x5DA
BL              sub_52F770
LDR             R5, =0x5DB
MOV             R0, R4
MOV             R1, R5
BL              sub_52F770
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_52F770
