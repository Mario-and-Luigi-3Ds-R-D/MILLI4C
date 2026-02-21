MOV             R2, R1
LDR             R1, =byte_6D4B28
LDRB            R3, [R1]
CMP             R3, #0
BNE             locret_10DD48
MOV             R3, #1
STRB            R3, [R1]
MOV             R1, R0
LDR             R0, =unk_70E630
B               sub_116704
BX              LR
