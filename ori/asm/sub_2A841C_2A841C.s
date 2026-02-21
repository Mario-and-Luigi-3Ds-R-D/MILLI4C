PUSH            {R4-R6,LR}
MOV             R5, R1
MOV             R4, R0
ADD             R1, R0, #0x84
MOV             R6, R2
MOV             R0, #1
BL              sub_10B6DC
LDR             R0, =0x207
ADD             R1, R4, #0x88
BL              sub_10B948
LDR             R0, [R4,#0x84]
BL              sub_10AEA0
MOV             R1, R6
MOV             R0, R5
BL              sub_10B110
LDR             R0, [R4,#0x88]
BL              sub_10AEA0
MOV             R0, #0
STR             R0, [R4,#0x88]
POP             {R4-R6,PC}
