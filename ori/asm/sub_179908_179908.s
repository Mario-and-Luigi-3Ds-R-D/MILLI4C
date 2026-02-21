PUSH            {R4-R6,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
MOV             R5, R0
LDR             R1, [R1,#0x3C]
BLX             R1
LDR             R3, [R4,#4]
ADD             R4, R4, #8
LDR             R2, [R5,#4]
ANDS            R12, R3, #0xFF
LDREQ           R12, [R0]
LDM             R4, {R1,R4}
ADD             R2, R2, #0xCC
LDREQ           R12, [R12,#0x150]
AND             R3, R1, #0xFF
AND             R1, R4, #0xFF
BEQ             loc_179984
CMP             R12, #1
LDREQ           R12, [R0]
LDREQ           R12, [R12,#0x154]
BEQ             loc_179984
CMP             R12, #2
BEQ             loc_17998C
B               loc_179998
BLX             R12
B               loc_179998
LDR             R12, [R0]
LDR             R12, [R12,#0x158]
BLX             R12
MOV             R0, #0
POP             {R4-R6,PC}
