LDR             R2, [R0,#0x9C]
MOVS            R2, R2,LSR#24
BEQ             locret_2A73BC
ADD             R2, R1, #0x118
STR             R2, [R0,#0x3FC]
MOV             R3, #5
MOV             R2, #1
B               sub_14B490
BX              LR
