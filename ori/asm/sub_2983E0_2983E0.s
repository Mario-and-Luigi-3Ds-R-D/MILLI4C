PUSH            {R4-R6,LR}
ADD             R6, R0, #0x12400
ADD             R6, R6, #0x2B8
LDRB            R1, [R6]
CMP             R1, #1
BNE             locret_298448
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2C4
LDR             R1, [R0]
LDRB            R2, [R1,#0xC]
CMP             R2, #0
BEQ             locret_298448
LDR             R2, [R0,#8]
ADD             R3, R0, #4
MOV             R4, R0
CMP             R2, R3
MOV             R5, #0
BNE             loc_29844C
MOVS            R0, R1
BEQ             loc_29843C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #2
STR             R5, [R4]
STRB            R0, [R6]
POP             {R4-R6,PC}
LDR             R1, [R4,#4]
ADD             R0, R4, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_29843C
