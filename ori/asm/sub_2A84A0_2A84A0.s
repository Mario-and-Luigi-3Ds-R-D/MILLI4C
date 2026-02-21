PUSH            {R4-R6,LR}
MOV             R5, #0
MOV             R4, R0
ADD             R1, R0, #0x88
STR             R5, [R0,#0x80]
LDR             R0, =0x207
BL              sub_10B948
LDR             R0, [R4,#0x84]
BL              sub_10AEA0
BL              sub_612240
LDR             R0, [R4,#0x88]
BL              sub_10AEA0
STR             R5, [R4,#0x88]
POP             {R4-R6,PC}
