ADD             R0, R0, #0x1940
PUSH            {R4-R6,LR}
LDR             R4, [R0]
MOV             R0, #0
STRB            R0, [R4],#4
MOV             R0, #0xFF
REV             R5, R0
MOV             R0, R4
BL              sub_4E63E0
STR             R5, [R4,#4]
STR             R5, [R4]
POP             {R4-R6,PC}
