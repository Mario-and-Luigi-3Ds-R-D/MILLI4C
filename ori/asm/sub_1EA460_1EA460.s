PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R2
MOV             R3, R2
LDR             R0, =0x87C
MOV             R6, R1
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
BLNE            sub_53D188
STR             R0, [R4,#4]
LDR             R1, [R0]
MOV             R2, R5
LDR             R3, [R1,#4]
MOV             R1, R6
POP             {R4-R6,LR}
BX              R3
