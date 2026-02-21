PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
LDR             R1, [R0,#0xC]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0x1C]
STR             R0, [R4,#0x1C]
LDR             R0, [R4,#0x84]
TST             R0, #1
BEQ             locret_2A932C
LDR             R0, [R4]
LDR             R1, [R0,#0x2C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             locret_2A932C
MOV             R0, R4
POP             {R4,LR}
B               sub_2A8950
POP             {R4,PC}
