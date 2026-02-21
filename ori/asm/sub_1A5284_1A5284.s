CMP             R0, #0
BEQ             locret_1A52A8
LDR             R12, =off_6CE970
MOV             R3, R2
MOV             R2, R0
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
SUB             R0, R12, R0
B               sub_503720
BX              LR
