PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_1905E4
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0xE0]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BNE             locret_190604
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DCF4
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
POP             {R4,PC}
