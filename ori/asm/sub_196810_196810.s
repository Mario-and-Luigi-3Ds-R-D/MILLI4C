PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0xDC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             locret_196898
LDR             R0, [R4,#0x120]
TST             R0, #0x10
BNE             locret_196898
LDRB            R0, [R4,#0x254]
ADD             R5, R4, #0x220
LDRB            R0, [R0,R5]
CMP             R0, #2
BCC             locret_196898
LDR             R0, [R4]
LDR             R1, [R0,#0x60]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             locret_196898
LDRB            R0, [R4,#0x254]
LDRB            R0, [R0,R5]
CMP             R0, #2
BEQ             loc_19688C
LDR             R0, [R4]
LDR             R1, [R0,#0x68]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R1
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_197B90
POP             {R4-R6,PC}
