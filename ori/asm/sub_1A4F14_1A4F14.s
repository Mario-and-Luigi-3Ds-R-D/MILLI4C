PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x94]
LDRB            R0, [R0,#0x1D9]
LDR             R12, =0xFFE683CC
MOV             R3, #0
AND             R0, R0, #2
MOVS            R1, R0,LSR#1
LDR             R0, =off_6CE970
LDR             R1, [R4,#8]
BEQ             loc_1A4F80
LDR             R0, [R0]
LDR             R2, =0x3074E
SUB             R0, R0, R12
BL              sub_503720
MOV             R5, R0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R5, #0
STR             R5, [R4,#4]
BEQ             locret_1A4F7C
STR             R4, [R5,#0x64]
POP             {R4-R6,PC}
LDR             R0, [R0]
LDR             R2, =0x3075B
SUB             R0, R0, R12
BL              sub_503720
MOV             R5, R0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R5, #0
STR             R5, [R4,#4]
BNE             loc_1A4F78
POP             {R4-R6,PC}
