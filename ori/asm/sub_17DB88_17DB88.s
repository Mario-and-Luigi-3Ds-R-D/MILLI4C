PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R5, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
MOV             R4, R0
LDRD            R0, R1, [R5,#4]
ANDS            R0, R0, #0xFF
AND             R1, R1, #0xFF
BEQ             loc_17DBE0
CMP             R0, #1
BEQ             loc_17DBF4
CMP             R0, #2
BNE             loc_17DC38
B               loc_17DC28
LDR             R0, [R4]
LDR             R2, [R0,#0x3C]
MOV             R0, R4
BLX             R2
B               loc_17DC38
LDR             R0, [R4]
LDR             R2, [R0,#0x40]
MOV             R0, R4
BLX             R2
LDRB            R0, [R4,#0x2F7]
TST             R0, #2
BEQ             loc_17DC38
LDR             R0, [R4,#0xA4]
MOV             R1, #0
BL              sub_146E50
NOP
NOP
B               loc_17DC38
LDR             R0, [R4]
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
MOV             R0, #0
POP             {R4-R6,PC}
