PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
MOV             R4, R0
ADD             R5, R0, #0x400
LDR             R0, [R0,#0x464]
ADD             R5, R5, #0x64 ; 'd'
TST             R0, #0x4000
BEQ             loc_17CF4C
LDR             R1, [R4]
MOV             R0, R0,LSL#18
LDR             R2, [R1,#0x70]
MOV             R1, R0,LSR#29
MOV             R0, R4
BLX             R2
LDR             R0, [R5]
BIC             R0, R0, #0x4000
STR             R0, [R5]
B               loc_17CFA0
LDR             R0, [R4]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_17CFA0
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R1, [R0,#0xA4]
LDRH            R2, [R1,#0x16]
CMP             R2, #0
BEQ             loc_17CFA0
ADD             R2, R1, #0x10
MOV             R1, #0
STRH            R1, [R2,#6]
LDR             R0, [R0,#0xA4]
LDRH            R1, [R0,#0x1A]
BIC             R1, R1, #2
STRH            R1, [R0,#0x1A]
MOV             R0, #0
POP             {R4-R6,PC}
