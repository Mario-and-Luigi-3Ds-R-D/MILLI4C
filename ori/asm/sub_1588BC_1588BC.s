PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R1, R2
MOV             R5, R0
MOV             R2, R0
LDR             R0, =dword_6E9820
BL              sub_485878
STRB            R4, [R5,#0x1C]
POP             {R4-R6,PC}
