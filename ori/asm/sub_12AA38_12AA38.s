CMP             R2, #0
BXEQ            LR
PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R1
MOV             R6, R2
MOV             R8, #0
LDR             R1, [R4,#0x44]
ADD             R0, R4, #4
RSB             R5, R1, #0x40 ; '@'
CMP             R5, R6
MOVHI           R5, R6
ADD             R0, R0, R1
MOV             R2, R5
MOV             R1, R7
BL              sub_1273D0
LDR             R0, [R4,#0x44]
ADD             R7, R7, R5
SUB             R6, R6, R5
ADD             R0, R0, R5
CMP             R0, #0x40 ; '@'
STR             R0, [R4,#0x44]
BCC             loc_12AAC4
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
BLX             R1
STR             R8, [R4,#0x44]
LDR             R0, [R4,#0x48]
ADDS            R0, R0, #1
STR             R0, [R4,#0x48]
BNE             loc_12AAC4
LDR             R0, [R4,#0x4C]
ADD             R0, R0, #1
STR             R0, [R4,#0x4C]
CMP             R6, #0
BNE             loc_12AA54
POP             {R4-R8,PC}
