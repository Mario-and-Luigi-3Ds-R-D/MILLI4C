PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xF0]
MOV             R5, R1
CMP             R0, R5
BEQ             loc_14C4A8
CMP             R5, #2
BNE             loc_14C4A8
LDR             R0, [R4]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_14C4A8
LDR             R0, [R4]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
MOV             R1, #3
STRB            R1, [R0,#0x6F]
MOV             R0, #0
STRB            R0, [R4,#0xF1]
STRB            R5, [R4,#0xF0]
POP             {R4-R6,PC}
