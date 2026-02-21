PUSH            {R4,LR}
LDR             R1, =0x16D
MOV             R4, R0
BL              sub_52F770
MOV             R1, #0x1B0
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x1AF
MOV             R0, R4
BL              sub_52F770
MOV             R1, #0x24 ; '$'
MOV             R0, R4
BL              sub_52F770
MOV             R0, R4
POP             {R4,LR}
MOV             R1, #0x20C
B               sub_52F770
