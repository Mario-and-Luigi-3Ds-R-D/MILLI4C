PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
MOV             R1, R1,LSL#16
MOV             R5, R1,LSR#30
CMP             R5, #3
BNE             loc_1EA4D4
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x7C]
BLX             R1
CMP             R5, #0
BEQ             locret_1EA500
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x88]
POP             {R4-R6,LR}
BX              R1
POP             {R4-R6,PC}
