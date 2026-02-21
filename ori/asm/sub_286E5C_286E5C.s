PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_286E98
MOV             R4, R0
LDR             R1, =sub_622A88
ADD             R0, R0, #8
MOV             R3, #4
MOV             R2, #8
BLX             sub_1009D8
MOV             R0, R4
BL              sub_300FD4
MOV             R0, #0
STR             R0, [R5]
MOV             R0, R5
POP             {R4-R6,PC}
