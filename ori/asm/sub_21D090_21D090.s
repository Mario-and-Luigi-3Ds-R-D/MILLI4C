LDR             R2, [R0],#8
MOV             R3, R1
LDR             R1, [R0],#0x18
LDR             R2, [R2,#8]
NOP
PUSH            {R3-R5,LR}
MOV             R5, R1
MOV             R4, R2
MOV             R1, R3
STR             R2, [SP,#0x10+var_10]
LDR             R2, =0x101
MOV             R3, #0
BL              sub_585958
MOV             R1, R0
MOV             R2, R4
MOV             R0, R5
POP             {R3-R5,LR}
B               sub_11644C
