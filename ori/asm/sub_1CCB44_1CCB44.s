PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #0
STR             R0, [R4]
MOV             R5, R1
MOV             R2, R0
LDR             R1, [R1,#0xD0]
LDR             R0, =0x4BC6C
MOV             R3, #0x10000
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R5
BLNE            sub_4DE9D0
STR             R0, [R4]
MOV             R0, R4
POP             {R4-R6,PC}
