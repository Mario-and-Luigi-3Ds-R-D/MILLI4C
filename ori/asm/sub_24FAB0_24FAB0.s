LDRB            R2, [R0,#0xF2]
CMP             R2, #0
BEQ             locret_24FAC8
MOV             R3, #1
MOV             R2, R3
B               sub_14B490
BX              LR
