PUSH            {R4-R10,LR}
MOV             R8, R0
MOV             R9, #0
LDR             R4, [R0,#0xA4]
CMP             R4, #0
BEQ             loc_1E94E0
LDR             R0, [R4]
LDR             R1, [R0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R4
BLX             R2
STR             R9, [R8,#0xA4]
MOV             R0, #0
MOV             R4, R0
STR             R0, [R8,#0xA8]
ADD             R5, R8, R4,LSL#4
ADD             R6, R5, #0xAC
LDR             R7, [R5,#0xAC]
CMP             R7, #0
BEQ             loc_1E9528
LDR             R0, [R7]
LDR             R1, [R0]
MOV             R0, R7
BLX             R1
LDR             R0, [R7,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R7
BLX             R2
STR             R9, [R6]
LDR             R7, [R5,#0xEC]
ADD             R6, R5, #0xEC
CMP             R7, #0
BEQ             loc_1E9560
LDR             R0, [R7]
LDR             R1, [R0]
MOV             R0, R7
BLX             R1
LDR             R0, [R7,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R7
BLX             R2
STR             R9, [R6]
LDR             R6, [R5,#0x12C]!
CMP             R6, #0
BEQ             loc_1E9594
LDR             R0, [R6]
LDR             R1, [R0]
MOV             R0, R6
BLX             R1
LDR             R0, [R6,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R6
BLX             R2
STR             R9, [R5]
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_1E94EC
POP             {R4-R10,PC}
