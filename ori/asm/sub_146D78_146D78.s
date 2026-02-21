PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R4, R0
MOV             R0, #0x810000
MOV             R6, R0
MOV             R0, R4
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R6
MOV             R2, #0
MOV             R0, #0x38 ; '8'
BL              sub_10A358
CMP             R0, #0
BEQ             locret_146DC0
MOV             R2, R5
MOV             R1, R4
POP             {R4-R6,LR}
B               sub_2EA1F8
POP             {R4-R6,PC}
