PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x3AC]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_14D578
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4,#0x3AC]
LDR             R0, [R4,#0x3B0]
CMP             R0, #0
BEQ             loc_14D598
BL              sub_4FE6E4
NOP
NOP
BL              sub_300FD4
STR             R5, [R4,#0x3B0]
STR             R5, [R4,#0x3B4]
POP             {R4-R6,PC}
