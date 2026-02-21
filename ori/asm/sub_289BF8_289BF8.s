PUSH            {R4,LR}
MOV             R4, R0
MOV             R1, #0x1AC
BL              sub_52F770
LDR             R1, =0x1AB
MOV             R0, R4
BL              sub_52F770
MOV             R0, R4
LDR             R1, =0x1AE
POP             {R4,LR}
B               sub_52F770
