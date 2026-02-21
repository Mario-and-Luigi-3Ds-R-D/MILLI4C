PUSH            {R4,LR}
LDR             R1, [R0,#4]
LDR             R2, [R3,#8]
ADD             R4, R3, #8
ADD             R1, R1, #0x15000
AND             R2, R2, #0xFF
LDR             R1, [R1,#0x18]
MOV             R3, #0
BL              sub_17EEC8
LDR             R2, [R4,#4]!
ADD             R4, R4, #4
ANDS            R3, R2, #0xFF
LDREQ           R3, [R0]
LDM             R4, {R1,R12}
LDREQ           R3, [R3,#0xCC]
AND             R2, R1, #0xFF
SXTH            R1, R12
BEQ             loc_180F88
CMP             R3, #1
LDREQ           R3, [R0]
LDREQ           R3, [R3,#0xD0]
BEQ             loc_180F88
CMP             R3, #2
BEQ             loc_180F90
B               loc_180F9C
BLX             R3
B               loc_180F9C
LDR             R3, [R0]
LDR             R3, [R3,#0xD4]
BLX             R3
MOV             R0, #0
POP             {R4,PC}
