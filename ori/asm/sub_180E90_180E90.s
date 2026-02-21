PUSH            {R4-R6,LR}
ADD             R4, R3, #8
LDR             R1, [R0,#4]
LDR             R2, [R3,#8]
ADD             R5, R3, #0x68 ; 'h'
ADD             R1, R1, #0x15000
AND             R2, R2, #0xFF
LDR             R1, [R1,#0x18]
MOV             R3, #0
BL              sub_17EEC8
ADD             R4, R4, #4
VLDR            S0, [R5,#0xC]
VLDR            S1, =2.0
LDM             R4, {R1,R3}
VMUL.F32        S0, S0, S1
ANDS            R2, R1, #0xFF
LDREQ           R2, [R0]
AND             R1, R3, #0xFF
LDREQ           R2, [R2,#0xD8]
BEQ             loc_180EFC
CMP             R2, #1
LDREQ           R2, [R0]
LDREQ           R2, [R2,#0xDC]
BEQ             loc_180EFC
CMP             R2, #2
BEQ             loc_180F04
B               loc_180F10
BLX             R2
B               loc_180F10
LDR             R2, [R0]
LDR             R2, [R2,#0xE0]
BLX             R2
MOV             R0, #0
POP             {R4-R6,PC}
