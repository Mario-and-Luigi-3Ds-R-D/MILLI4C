PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R7, R1
LDR             R0, [R0,#0xC]
MOV             R4, #0
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x108
LDR             R0, [R0]
LDR             R0, [R0,#0xA4]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0xBC]
SUB             R0, R0, #1
ADD             R0, R0, R0,LSR#31
MOV             R5, R0,ASR#1
CMP             R5, #0
BLE             locret_2AAE78
MOV             R2, R7
MOV             R1, R4
MOV             R0, R6
BL              sub_2AC378
ADD             R4, R4, #1
CMP             R5, R4
BGT             loc_2AAE5C
POP             {R4-R8,PC}
