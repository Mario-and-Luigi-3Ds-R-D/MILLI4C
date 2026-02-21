PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B2C44
STR             R0, [R4]
LDR             R0, [R4,#8]
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_502348
MOV             R0, R5
BL              sub_501804
LDR             R1, [R4,#8]
MOV             R0, #0
STRB            R0, [R1,#0x489]
MOV             R0, R4
POP             {R4-R6,PC}
