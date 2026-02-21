CMP             R1, #0x24 ; '$'
BEQ             loc_1B2204
SUB             R1, R1, #0x8000
SUBS            R1, R1, #1
BNE             locret_1B2200
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #0x80
STRB            R1, [R0,#0x4B4]
BX              LR
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #1
B               loc_1B21FC
