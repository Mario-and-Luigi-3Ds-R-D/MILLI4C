LDR             R2, [R0]
SUB             R1, R1, #4
MOV             R0, #0
STRB            R0, [R2,R1]
BX              LR
