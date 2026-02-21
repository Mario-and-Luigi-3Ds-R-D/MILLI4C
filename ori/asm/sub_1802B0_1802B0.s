PUSH            {R4-R8,LR}
MOV             R12, R0
MOV             R6, R1
LDR             R0, [R0,#4]
LDR             R1, =0x15018
MOV             R7, R2
MOV             R5, R3
ADD             R4, R3, #8
LDR             R1, [R1,R0]
LDR             R0, [R3,#8]
MOV             R3, #0
AND             R2, R0, #0xFF
MOV             R0, R12
BL              sub_17EEC8
ADD             R4, R4, #4
LDM             R4, {R1,R2}
MOV             R4, #0
ANDS            R1, R1, #0xFF
AND             R3, R2, #0xFF
BEQ             loc_180314
CMP             R1, #1
BEQ             loc_180330
CMP             R1, #2
BNE             loc_180380
B               loc_180368
LDR             R1, [R0]
LDR             R2, [R1,#0x48]
MOV             R1, R3
BLX             R2
CMP             R0, #0
BNE             loc_180348
B               loc_180380
LDR             R1, [R0]
LDR             R2, [R1,#0x4C]
MOV             R1, R3
BLX             R2
CMP             R0, #0
BEQ             loc_180380
MOV             R4, #3
MOV             R2, R5
MOV             R1, R7
MOV             R0, R6
BL              sub_29D1B0
NOP
NOP
B               loc_180380
LDR             R1, [R0]
LDR             R2, [R1,#0x50]
MOV             R1, R3
BLX             R2
CMP             R0, #0
BNE             loc_180348
MOV             R0, R4
POP             {R4-R8,PC}
