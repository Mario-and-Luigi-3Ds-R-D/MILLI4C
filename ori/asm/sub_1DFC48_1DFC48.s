PUSH            {R4-R8,LR}
MOV             R6, #0
MOV             R7, R1
LDR             R4, [R0,#4]
CMP             R4, #0
LDRNE           R5, [R4,#8]
MOVEQ           R5, #0
BEQ             locret_1DFCDC
LDRB            R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_1DFC7C
CMP             R7, #0
BEQ             loc_1DFCC8
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #1
BNE             loc_1DFCC8
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_1DFCB0
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R4
BLX             R2
CMP             R4, #0
BEQ             loc_1DFCC8
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#4]
BLX             R1
MOVS            R4, R5
MOVEQ           R5, #0
LDRNE           R5, [R4,#8]
CMP             R4, R6
BNE             loc_1DFC68
POP             {R4-R8,PC}
