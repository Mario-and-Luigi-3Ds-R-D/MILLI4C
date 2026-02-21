PUSH            {R4-R6,LR}
MOV             R6, R0
BL              sub_121320
MOVS            R5, R0
BEQ             locret_118D68
LDR             R4, [R5,#0x88]
CMP             R4, #0
BEQ             loc_118D38
LDR             R0, [R6]
MOV             R1, R4
LDR             R2, [R0]
MOV             R0, R6
BLX             R2
CMP             R0, #0
BEQ             locret_118D68
LDR             R4, [R4,#0x88]
CMP             R4, #0
BNE             loc_118D10
LDR             R4, [R5,#0x8C]
CMP             R4, #0
BEQ             locret_118D68
LDR             R0, [R6]
MOV             R1, R4
LDR             R2, [R0]
MOV             R0, R6
BLX             R2
CMP             R0, #0
LDRNE           R4, [R4,#0x88]
CMPNE           R4, #0
BNE             loc_118D44
POP             {R4-R6,PC}
