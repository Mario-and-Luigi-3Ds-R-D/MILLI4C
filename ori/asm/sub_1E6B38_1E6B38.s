PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xAA8]
CMP             R0, #0
BEQ             loc_1E6B58
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
MOV             R0, R4
POP             {R4,LR}
NOP
