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
ADD             R4, R4, #4
LDM             R4, {R1,R2}
ANDS            R1, R1, #0xFF
AND             R2, R2, #0xFF
BEQ             loc_1799F8
CMP             R1, #1
BEQ             loc_179A0C
CMP             R1, #2
BNE             loc_179A30
B               loc_179A20
LDR             R1, [R0]
LDR             R3, [R1,#0xF0]
MOV             R1, #1
BLX             R3
B               loc_179A30
LDR             R1, [R0]
LDR             R3, [R1,#0xF4]
MOV             R1, #1
BLX             R3
B               loc_179A30
LDR             R1, [R0]
LDR             R3, [R1,#0xF8]
MOV             R1, #1
BLX             R3
MOV             R0, #0
POP             {R4,PC}
