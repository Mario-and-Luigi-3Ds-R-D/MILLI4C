LDR             R1, =off_6B2C44
PUSH            {R4-R6,LR}
MOV             R4, R0
STR             R1, [R0]
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_502348
MOV             R0, R5
BL              sub_501804
LDR             R2, [R4,#8]
MOV             R1, #0
MOV             R0, R4
STRB            R1, [R2,#0x489]
POP             {R4-R6,LR}
B               sub_300FD4
