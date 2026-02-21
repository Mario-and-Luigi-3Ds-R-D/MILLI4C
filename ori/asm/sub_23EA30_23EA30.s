CMP             R1, #0x1B
BEQ             loc_23EA60
CMP             R1, #0x1C
BNE             locret_23EA5C
LDR             R1, [R0,#8]
LDRB            R2, [R1,#0x4B4]
ORR             R2, R2, #0x10
STRB            R2, [R1,#0x4B4]
LDR             R0, [R0,#8]
ORR             R1, R2, #8
STRB            R1, [R0,#0x4B4]
BX              LR
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #2
B               loc_23EA58
