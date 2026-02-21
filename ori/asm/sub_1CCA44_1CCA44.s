PUSH            {R4-R6,LR}
MOV             R6, R1
LDR             R0, [R0]
LDRB            R1, [R0,#0xF3]
CMP             R1, #0
BEQ             locret_1CCAA0
ADD             R2, R0, #0x13800
ADD             R0, R0, #0x13C00
ADD             R2, R2, #0xCC
ADD             R0, R0, #0x1C
STR             R2, [R6,#0x34]
LDR             R4, [R0,#4]
MOV             R5, #0
CMP             R4, #0
BEQ             locret_1CCAA0
LDR             R1, [R4]
MOV             R0, R4
LDR             R2, [R1,#0x18]
MOV             R1, R6
BLX             R2
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1CCA80
POP             {R4-R6,PC}
