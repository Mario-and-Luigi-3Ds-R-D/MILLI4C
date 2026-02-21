NOP
LDR             R0, =byte_6D4A60
LDRB            R0, [R0]
CMP             R0, #0
BEQ             locret_10F244
LDR             R0, =dword_6D4A74
MOV             R1, #0
B               sub_11A038
BX              LR
