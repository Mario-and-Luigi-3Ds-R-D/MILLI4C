PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #0x8000000
MOV             R6, R0
BL              sub_10754C
MOV             R5, R0
BL              sub_10745C
MOV             R2, R0
LDR             R0, =dword_6ED9B8
MOV             R1, R5
BL              sub_108CA0
MOV             R2, R4
MOV             R1, R6
POP             {R4-R6,LR}
LDR             R0, =dword_6EF03C
B               sub_108CA0
