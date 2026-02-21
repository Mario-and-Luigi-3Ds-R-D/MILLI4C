PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0xFC]
TST             R0, #0x10
BEQ             locret_15A4E8
LDR             R0, [R4]
LDR             R1, [R0,#0x2C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             locret_15A4E8
MOV             R0, R4
POP             {R4,LR}
B               sub_159550
POP             {R4,PC}
