PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xDE]
MOV             R5, R1
BIC             R0, R0, #1
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
LDR             R1, [R0,#0x24]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x80]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             locret_175FB0
CMP             R5, #0
BEQ             loc_175F98
MOV             R0, #0
STR             R0, [R4,#0x648]
LDR             R2, [R4,#0x464]
MOV             R1, #0x14
BIC             R2, R2, #0x700
STR             R2, [R4,#0x464]
STRB            R1, [R4,#0x75D]
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x84]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R2
POP             {R4-R6,PC}
