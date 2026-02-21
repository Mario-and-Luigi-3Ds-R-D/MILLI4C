PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
LDR             R1, [SP,#0x20+arg_0]
LDR             R8, =dword_6D22F0
MOV             R9, #0
ADD             R0, R0, R1,LSL#4
LDR             R4, [R0,#0xAC]
CMP             R4, #0
BEQ             loc_1E91D4
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, R8
BEQ             loc_1E91D8
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1E91C0
MOV             R4, R9
CMN             R5, #1
BEQ             loc_1E91F0
CMP             R5, #0
MOVNE           R0, #1
MOVEQ           R0, #0
STRB            R0, [R4,#0x5B]
CMN             R6, #1
BEQ             loc_1E9208
CMP             R6, #0
MOVNE           R0, #1
MOVEQ           R0, #0
STRB            R0, [R4,#0x5C]
CMN             R7, #1
BEQ             locret_1E9220
CMP             R7, #0
MOVNE           R0, #1
MOVEQ           R0, #0
STRB            R0, [R4,#0x5D]
POP             {R4-R10,PC}
