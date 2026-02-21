PUSH            {R3-R7,LR}
MOV             R5, R2
MOV             R6, #0
LDR             R4, =off_6CE970
MOV             R2, R1
LDR             R1, =0x1AF
MOV             R3, #1
LDR             R0, [R4]
STR             R6, [SP,#0x18+var_18]
BL              sub_52AEA8
LDR             R4, [R4]
BL              sub_4635D8
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x1B0
MOV             R0, R4
STR             R6, [SP,#0x18+var_18]
BL              sub_52B72C
POP             {R3-R7,PC}
