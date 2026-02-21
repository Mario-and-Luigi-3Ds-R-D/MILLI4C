LDR             R1, =0x2686
LDRB            R1, [R1,R0]
CMP             R1, #1
BEQ             loc_171330
CMP             R1, #4
BNE             loc_17133C
LDR             R1, =0x276F
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_171314
LDR             R1, [R0]
LDR             R1, [R1,#0x40C]
BX              R1
LDR             R1, =0x2698
LDRB            R1, [R1,R0]
TST             R1, #0xC
BEQ             loc_17133C
LDR             R1, [R0]
LDR             R1, [R1,#0x410]
BX              R1
LDR             R1, [R0]
LDR             R1, [R1,#0x408]
BX              R1
NOP
B               sub_5806E0
