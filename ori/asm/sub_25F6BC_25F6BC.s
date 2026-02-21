PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, =0x2D9
BL              sub_52F770
LDR             R5, =0x2D2
MOV             R0, R4
MOV             R1, R5
BL              sub_52F770
ORR             R1, R5, R5,ASR#6
MOV             R0, R4
BL              sub_52F770
MOV             R1, #0x2D4
MOV             R0, R4
BL              sub_52F770
ADD             R1, R5, #0x19
MOV             R0, R4
BL              sub_52F770
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_52F770
