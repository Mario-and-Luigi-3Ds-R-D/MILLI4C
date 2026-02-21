PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
LDR             R1, =sub_10DFC0
MOV             R0, #0
NOP
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_10D084
