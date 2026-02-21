CMP             R1, #0x21 ; '!'
BEQ             loc_23EA0C
CMP             R1, #0x22 ; '"'
BEQ             loc_23EA20
SUB             R1, R1, #0x8000
SUBS            R1, R1, #1
BNE             locret_23EA08
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #0x80
STRB            R1, [R0,#0x4B4]
BX              LR
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #1
STRB            R1, [R0,#0x4B4]
BX              LR
LDR             R0, [R0,#8]
LDRB            R1, [R0,#0x4B4]
ORR             R1, R1, #4
B               loc_23EA04
