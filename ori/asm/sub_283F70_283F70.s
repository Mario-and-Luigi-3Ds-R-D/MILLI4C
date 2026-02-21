PUSH            {R4,LR}
LDR             R1, =0x16E
MOV             R4, R0
BL              sub_52F770
LDR             R1, =0x1AA
MOV             R0, R4
BL              sub_52F770
MOV             R1, #0x16C
MOV             R0, R4
BL              sub_52F770
MOV             R1, #0
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x1A9
MOV             R0, R4
BL              sub_52F770
MOV             R0, R4
LDR             R1, =0x1B1
POP             {R4,LR}
B               sub_52F770
