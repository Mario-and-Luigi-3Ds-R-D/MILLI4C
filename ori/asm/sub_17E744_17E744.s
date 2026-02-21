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
VLDR            S0, [R5,#0xC]
VLDR            S1, =2.0
LDR             R2, [R4,#4]!
VMUL.F32        S0, S0, S1
ANDS            R2, R2, #0xFF
LDREQ           R2, [R0]
LDR             R1, [R4,#4]
LDREQ           R2, [R2,#0xD8]
AND             R1, R1, #0xFF
BEQ             loc_17E7BC
CMP             R2, #1
LDREQ           R2, [R0]
LDREQ           R2, [R2,#0xDC]
BEQ             loc_17E7BC
CMP             R2, #2
BEQ             loc_17E7C4
B               loc_17E7D0
BLX             R2
B               loc_17E7D0
LDR             R2, [R0]
LDR             R2, [R2,#0xE0]
BLX             R2
MOV             R0, #0
POP             {R4-R6,PC}
