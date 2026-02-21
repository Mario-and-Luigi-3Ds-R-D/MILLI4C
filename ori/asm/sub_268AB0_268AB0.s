PUSH            {R4,LR}
LDR             R1, =0x2D7
MOV             R4, R0
BL              sub_52F770
MOV             R0, R4
LDR             R1, =0x2D5
POP             {R4,LR}
B               sub_52F770
