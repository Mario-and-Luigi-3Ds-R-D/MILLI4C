PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R4, R0
MOV             R1, R0
MOV             R0, R5
BL              sub_14CA14
LDR             R0, [R4,#0x50]
CMP             R0, R5
MOVEQ           R0, #0
STREQ           R0, [R4,#0x50]
POP             {R4-R6,PC}
