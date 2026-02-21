CMP             R1, #0
MOV             R3, R0
MOVEQ           R0, #0
BEQ             locret_1CF440
LDRB            R2, [R2,#0xC]
MOV             R0, R1
CMP             R2, #1
BNE             locret_1CF440
MOV             R2, #0
MOV             R0, R3
B               sub_10D1D0
BX              LR
