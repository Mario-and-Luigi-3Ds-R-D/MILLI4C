PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R6, R1
MOV             R7, R2
LDR             R0, [R1]
LDR             R1, [R4,#0xA8]
MOV             R8, R3
CMP             R0, R1
BEQ             locret_1E9498
LDR             R5, [R4,#0xA4]
MOV             R9, #0
CMP             R5, #0
BEQ             loc_1E941C
LDR             R0, [R5]
LDR             R1, [R0]
MOV             R0, R5
BLX             R1
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, R5
BLX             R2
STR             R9, [R4,#0xA4]
STR             R9, [R4,#0xAC]
STR             R9, [R4,#0xBC]
STR             R9, [R4,#0xCC]
STR             R9, [R4,#0xDC]
STR             R9, [R4,#0xEC]
STR             R9, [R4,#0xFC]
STR             R9, [R4,#0x10C]
STR             R9, [R4,#0x11C]
STR             R9, [R4,#0x12C]
STR             R9, [R4,#0x13C]
STR             R9, [R4,#0x14C]
STR             R9, [R4,#0x15C]
LDR             R1, [R6]
MOV             R2, R8
MOV             R0, R7
STR             R1, [R4,#0xA8]
BL              sub_59C240
LDR             R6, =dword_6D21A0
MOVS            R5, R0
BEQ             loc_1E9490
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, R6
BEQ             loc_1E9494
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1E947C
MOV             R5, R9
STR             R5, [R4,#0xA4]
POP             {R4-R10,PC}
