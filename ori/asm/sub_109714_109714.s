MOV             R12, R0
PUSH            {R3-R5,LR}
MOV             R4, R1
CMP             R12, #0x10000
MOV             R1, R12
LDR             R12, =off_6CED48
MOV             R5, R2
MOV             R0, R3
MOV             R2, R4
LDR             R12, [R12]
MOV             R3, R5
BEQ             loc_10976C
CMP             R1, #0x20000
BEQ             loc_109774
CMP             R1, #0x30000
BNE             locret_109768
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R12,#0x134]
LDR             R12, [R0]
LDR             R12, [R12,#4]
BLX             R12
POP             {R3-R5,PC}
POP             {R3-R5,LR}
B               sub_110D10
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R12,#0x130]
LDR             R12, [R0]
LDR             R12, [R12,#4]
BLX             R12
POP             {R3-R5,PC}
