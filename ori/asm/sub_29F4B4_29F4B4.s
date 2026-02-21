PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_29F4E0
BL              sub_533330
LDR             R0, [R4,#8]
CMP             R0, #0
STRNE           R5, [R0,#0x184]
STRNE           R5, [R4,#8]
LDR             R1, =off_6C075C
MOV             R0, R4
STR             R1, [R4,#4]
STR             R5, [R4]
POP             {R4-R6,PC}
