PUSH            {R4-R6,LR}
LDR             R5, =dword_6D4598
LDR             R4, [R5]
CMP             R4, #0
BEQ             locret_112B54
LDR             R0, [R4,#0xC]
CMP             R0, #0
BLNE            sub_1361A4
LDR             R0, [R4,#0x10]
CMP             R0, #0
BLNE            sub_1361A4
MOV             R0, #0
STR             R0, [R5]
POP             {R4-R6,PC}
