LDR             R2, [R0,#0x9C]
MOVS            R2, R2,LSR#24
BEQ             locret_2A319C
MOV             R3, #1
MOV             R2, R3
B               sub_14B490
BX              LR
