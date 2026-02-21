PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R0, #0x400
LDRB            R0, [R0,#0x4B5]
ADD             R5, R5, #0xB5
TST             R0, #3
BEQ             locret_175EE8
MOV             R0, R4
BL              sub_23038C
LDRB            R0, [R4,#0x4B5]
TST             R0, #3
BNE             locret_175EE8
MOVS            R0, R0,LSR#4
BEQ             loc_175EDC
CMP             R0, #1
BNE             loc_175EDC
LDR             R0, [R4]
LDR             R1, [R0,#0x2C]
MOV             R0, R4
BLX             R1
LDRB            R0, [R4,#0x4B5]
BIC             R0, R0, #0xF0
STRB            R0, [R5]
POP             {R4-R6,PC}
