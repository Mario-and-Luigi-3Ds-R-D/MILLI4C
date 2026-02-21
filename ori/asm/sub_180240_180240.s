PUSH            {R4,LR}
LDR             R12, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
MOV             R1, R2
LDR             R12, [R12,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R1, [R4,#4]
CMP             R1, #0
BEQ             loc_18028C
LDR             R0, [R0,#0xA4]
MOV             R1, #0
STRB            R1, [R0,#0x68]
B               loc_1802A4
LDR             R0, [R0,#0xA4]
MOV             R3, #1
MOV             R2, #5
MOV             R1, #0
STRB            R3, [R0,#0x68]
STRB            R2, [R0,#0x6A]
STRB            R1, [R0,#0x69]
MOV             R0, #0
POP             {R4,PC}
