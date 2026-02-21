PUSH            {R4,LR}
MOV             R1, R2
LDR             R2, [R0]
ADD             R4, R3, #8
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
LDR             R2, [R4,#4]!
ADD             R4, R4, #4
ANDS            R3, R2, #0xFF
LDREQ           R3, [R0]
LDM             R4, {R1,R12}
LDREQ           R3, [R3,#0xCC]
AND             R2, R1, #0xFF
SXTH            R1, R12
BEQ             loc_17F164
CMP             R3, #1
LDREQ           R3, [R0]
LDREQ           R3, [R3,#0xD0]
BEQ             loc_17F164
CMP             R3, #2
BEQ             loc_17F16C
B               loc_17F178
BLX             R3
B               loc_17F178
LDR             R3, [R0]
LDR             R3, [R3,#0xD4]
BLX             R3
MOV             R0, #0
POP             {R4,PC}
