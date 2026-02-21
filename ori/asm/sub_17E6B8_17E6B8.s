PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
ADD             R5, R3, #0x68 ; 'h'
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
LDR             R2, [R4,#4]!
VLDR            S0, [R5,#0xC]
LDR             R1, [R4,#4]
ANDS            R2, R2, #0xFF
LDREQ           R2, [R0]
AND             R1, R1, #0xFF
LDREQ           R2, [R2,#0xB4]
BEQ             loc_17E728
CMP             R2, #1
LDREQ           R2, [R0]
LDREQ           R2, [R2,#0xB8]
BEQ             loc_17E728
CMP             R2, #2
BEQ             loc_17E730
B               loc_17E73C
BLX             R2
B               loc_17E73C
LDR             R2, [R0]
LDR             R2, [R2,#0xBC]
BLX             R2
MOV             R0, #0
POP             {R4-R6,PC}
