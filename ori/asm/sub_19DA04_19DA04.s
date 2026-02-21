PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R7, R2
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_19DA3C
LDR             R1, [R0]
MOV             R2, R7
LDR             R3, [R1,#0x34]
MOV             R1, R6
BLX             R3
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_19DA18
CMP             R6, #3
BNE             locret_19DA64
LDR             R0, [R5,#0x94]
CMP             R0, #0
BEQ             locret_19DA64
POP             {R4-R8,LR}
B               sub_2350B8
POP             {R4-R8,PC}
