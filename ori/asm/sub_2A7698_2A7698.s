MOV             R1, R0
LDR             R0, =off_6CE970
LDR             R3, =0xFFE683CC
MOV             R2, #0
VLDR            S0, =0.0
LDR             R0, [R0]
SUB             R0, R0, R3
B               sub_503414
