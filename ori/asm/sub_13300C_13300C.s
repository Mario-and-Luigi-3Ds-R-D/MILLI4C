PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
ADD             R0, R0, #0x1400
ADD             R0, R0, #0x1DC
LDR             R0, [R0]
LDR             R0, [R0,#0x68]
BL              sub_13F13C
ADD             R4, R4, #1
CMP             R4, #0x18
BLT             loc_133018
POP             {R4-R6,PC}
