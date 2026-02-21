CMP             R1, #0x1E
BEQ             loc_1B2240
CMP             R1, #0x1F
BEQ             loc_1B2254
CMP             R1, #0x8000
BNE             locret_1B223C
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #0x80
STRB            R1, [R0,#0x4B4]
BX              LR
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #2
STRB            R1, [R0,#0x4B4]
BX              LR
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #4
B               loc_1B2238
