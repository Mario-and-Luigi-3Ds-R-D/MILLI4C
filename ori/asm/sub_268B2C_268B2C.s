LDR             R0, [R0]
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             locret_268B44
MOV             R1, #0
B               sub_1586A8
BX              LR
