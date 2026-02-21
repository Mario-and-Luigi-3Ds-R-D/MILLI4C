PUSH            {R4-R8,LR}
MOV             R4, #0
MOV             R6, R0
MOV             R7, R4
ADD             R5, R6, R4,LSL#5
LDR             R0, [R5,#0x10]!
CMP             R0, #0
BEQ             loc_1CF2D0
BL              sub_110D10
STR             R7, [R5]
ADD             R4, R4, #1
CMP             R4, #0x14
BLT             loc_1CF2B8
POP             {R4-R8,PC}
