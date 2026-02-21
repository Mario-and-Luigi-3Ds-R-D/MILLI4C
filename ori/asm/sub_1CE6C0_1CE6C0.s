PUSH            {R4,LR}
MOV             R4, R0
LDR             R1, =sub_1CE3EC
MOV             R3, #4
MOV             R2, #0x3C ; '<'
ADD             R0, R0, #4
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,PC}
