PUSH            {R4,LR}
LDR             R1, =0x2DF
MOV             R4, R0
BL              sub_52F770
LDR             R1, =0x2ED
MOV             R0, R4
BL              sub_52F770
MOV             R0, R4
POP             {R4,LR}
MOV             R1, #0x5E0
B               sub_52F770
