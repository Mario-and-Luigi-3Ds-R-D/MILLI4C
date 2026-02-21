PUSH            {R4-R8,LR}
MOV             R6, R3
MOV             R8, R2
LDR             R2, [R0]
MOV             R7, R1
LDR             R1, [R3,#8]
ADD             R4, R3, #8
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R1
MOV             R1, R8
BLX             R12
LDR             R1, [R0]
MOV             R5, #0
LDR             R1, [R1,#0x3C]
BLX             R1
ADD             R4, R4, #4
LDM             R4, {R1,R3}
ANDS            R2, R1, #0xFF
AND             R1, R3, #0xFF
BEQ             loc_17D0B8
CMP             R2, #1
BEQ             loc_17D0D0
CMP             R2, #2
BNE             loc_17D118
B               loc_17D104
LDR             R2, [R0]
LDR             R2, [R2,#0x48]
BLX             R2
CMP             R0, #0
BNE             loc_17D0E4
B               loc_17D118
LDR             R2, [R0]
LDR             R2, [R2,#0x4C]
BLX             R2
CMP             R0, #0
BEQ             loc_17D118
MOV             R5, #3
MOV             R2, R6
MOV             R1, R8
MOV             R0, R7
BL              sub_29D1B0
NOP
NOP
B               loc_17D118
LDR             R2, [R0]
LDR             R2, [R2,#0x50]
BLX             R2
CMP             R0, #0
BNE             loc_17D0E4
MOV             R0, R5
POP             {R4-R8,PC}
