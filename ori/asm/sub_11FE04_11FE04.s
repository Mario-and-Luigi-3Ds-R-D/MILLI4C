PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R4, [R5,#8]
LDR             R6, =off_6D242C
LDR             R0, =0x2010000
LDR             R7, =0x102
LDR             R1, [R4,#0x18]
LDR             R12, [R6]
CMP             R1, R0
SUB             R0, R1, R0
BEQ             loc_11FEA0
BGT             loc_11FE50
ADD             R0, R1, #0xFF000000
SUBS            R0, R0, #0x10000
BEQ             loc_11FE7C
CMP             R0, #0x10000
CMPNE           R0, #0x20000
BEQ             loc_11FEB0
B               loc_11FEA0
CMP             R0, #0x10000
CMPNE           R0, #0x20000
BNE             loc_11FEA0
LDR             R3, [R4]
CMP             R3, #0
CMPNE           R12, #0
BEQ             loc_11FEA0
LDR             R2, [R5]
LDR             R0, [R4,#0x14]
MOV             R1, R7
B               loc_11FE9C
LDR             R3, [R4,#4]
CMP             R3, #0
BEQ             loc_11FEA0
CMP             R12, #0
BEQ             loc_11FEA0
LDR             R2, [R5]
MOV             R1, R7
MOV             R0, #0x10000
BLX             R12
MOV             R0, #0
STR             R0, [R4]
STR             R0, [R4,#4]
POP             {R4-R8,PC}
LDR             R3, [R4]
CMP             R3, #0
CMPNE           R12, #0
BEQ             loc_11FED0
LDR             R2, [R5]
LDR             R0, [R4,#0x14]
MOV             R1, R7
BLX             R12
LDR             R3, [R4,#4]
CMP             R3, #0
LDRNE           R12, [R6]
CMPNE           R12, #0
BEQ             loc_11FEA0
B               loc_11FE90
