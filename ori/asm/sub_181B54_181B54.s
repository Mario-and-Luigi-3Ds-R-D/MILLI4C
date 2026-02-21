LDR             R0, [R3,#8]
LDR             R1, [R2]
ADD             R0, R0, R1
STR             R0, [R2]
MOV             R0, #0
BX              LR
