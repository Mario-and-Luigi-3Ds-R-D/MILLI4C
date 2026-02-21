PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R3, #0
LDR             R1, =dword_6ED9B8
LDR             R0, =0x1472C
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
BLNE            sub_2D40C0
MOV             R2, R5
STR             R0, [R4,#0xA0]
POP             {R4-R6,LR}
LDR             R1, =dword_6ED9B8
B               sub_2D3590
