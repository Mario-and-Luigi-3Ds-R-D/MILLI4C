PUSH            {R4,LR}
MOV             R4, R0
MOV             R1, #0x2D8
BL              sub_52F770
LDR             R1, =0x2D3
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x2EB
MOV             R0, R4
BL              sub_52F770
MOV             R0, R4
LDR             R1, =0x2D6
POP             {R4,LR}
B               sub_52F770
