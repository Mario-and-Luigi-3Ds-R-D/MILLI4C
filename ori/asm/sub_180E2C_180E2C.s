PUSH            {R4-R6,LR}
ADD             R4, R3, #8
LDR             R12, [R0]
LDR             R3, [R3,#8]
MOV             R1, R2
LDR             R2, [R0,#4]
LDR             R12, [R12,#0x9C]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
MOV             R5, R0
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R1, [R4,#4]
CMP             R1, #0
LDR             R1, [R0]
BEQ             loc_180E7C
LDR             R1, [R1,#0x68]
BLX             R1
B               loc_180E88
LDR             R2, [R1,#0x64]
MOV             R1, R5
BLX             R2
MOV             R0, #0
POP             {R4-R6,PC}
