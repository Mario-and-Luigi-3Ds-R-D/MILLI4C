PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_1EA45C
LDR             R1, [R0]
LDR             R1, [R1]
BLX             R1
LDR             R0, [R4,#4]
BL              sub_300FD4
MOV             R0, #0
STR             R0, [R4,#4]
POP             {R4,PC}
