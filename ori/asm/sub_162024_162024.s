PUSH            {R4-R8,LR}
MOV             R6, R0
BL              sub_2B5484
ADD             R0, R6, #0x14400
ADD             R0, R0, #0x174
BL              sub_50BF18
MOV             R4, #0
MOV             R7, R4
ADD             R5, R6, R4,LSL#2
ADD             R5, R5, #0x15000
ADD             R5, R5, #0x88
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_162064
BL              sub_110D10
STR             R7, [R5]
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_162044
POP             {R4-R8,PC}
