PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
LDR             R2, =0x19B0B4
LDR             R1, =0xC03
LDR             R0, [R0]
LDR             R2, [R2,R0]
TST             R1, R2
BEQ             locret_1DB6E8
LDR             R3, =0xFFE683CC
LDR             R1, =0x10016
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
ADD             R0, R4, #0x10C00
ADD             R0, R0, #0x254
BL              sub_2C723C
MOV             R0, R4
POP             {R4,LR}
B               sub_1DE480
POP             {R4,PC}
