CMP             R1, #0x1D
BEQ             loc_1BE884
CMP             R1, #0x8000
BNE             locret_1BE880
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #0x80
STRB            R1, [R0,#0x4B4]
BX              LR
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #2
B               loc_1BE87C
