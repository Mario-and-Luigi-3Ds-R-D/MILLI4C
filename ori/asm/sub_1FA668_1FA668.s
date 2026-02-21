PUSH            {R4-R8,LR}
MOV             R6, R0
ADD             R0, R0, #0x12400
ADD             R5, R6, #0x12400
ADD             R0, R0, #0x314
ADD             R5, R5, #0x318
MOV             R8, R1
LDR             R1, [R5]
LDR             R4, [R0]
MOV             R7, #0
CMP             R1, R4
BEQ             loc_1FA73C
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
CMP             R0, #0
BEQ             loc_1FA72C
LDR             R0, [R4]
LDRB            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_1FA6D4
LDR             R1, [R0,#0x14]
LDR             R1, [R1,#0x3F4]
CMP             R1, #1
MOVEQ           R7, #1
MOVNE           R7, #0
LDR             R1, [R0]
LDR             R2, [R1,#0x10]
MOV             R1, R8
BLX             R2
CMP             R8, #0
BEQ             loc_1FA73C
LDR             R4, =off_6CDC90
LDR             R0, [R4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2D8
LDR             R0, [R0]
BL              sub_1FEAF8
LDR             R0, [R4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2DC
LDR             R0, [R0]
BL              sub_1FEAF8
ADD             R6, R6, #0x12400
ADD             R6, R6, #0x394
MOV             R0, #1
STRB            R0, [R6]
B               loc_1FA73C
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_1FA698
MOV             R0, R7
POP             {R4-R8,PC}
