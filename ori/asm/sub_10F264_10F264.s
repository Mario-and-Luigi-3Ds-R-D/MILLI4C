CMP             R0, #0
LDR             R0, =byte_6D2498
MOV             R1, #1
STRB            R1, [R0]
BEQ             locret_10F27C
B               sub_11B1B8
BX              LR
