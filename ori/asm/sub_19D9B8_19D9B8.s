PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_19D9E0
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_19D9C4
LDR             R0, [R5,#0xAC]
CMP             R0, #0
BEQ             locret_19DA00
POP             {R4-R6,LR}
B               sub_1E1F04
POP             {R4-R6,PC}
