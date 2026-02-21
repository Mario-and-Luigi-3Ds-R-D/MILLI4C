PUSH            {R4-R6,LR}
CMP             R0, #0
BEQ             loc_116730
MOV             R12, #0
STR             R12, [R0,#8]
STR             R12, [R0,#0xC]
MOV             R4, #0xFFFFFFFF
STR             R4, [R0,#0x14]
STR             R12, [R0,#0x10]
STR             R12, [R0,#4]
STR             R12, [R0]
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, R1
MOV             R6, R2
CMP             R0, #0
LDREQ           R0, [R4,#4]
CMPEQ           R0, #0
BNE             locret_116764
ADD             R0, R4, #0xC
BL              sub_118AE8
ADD             R0, R5, R6
STR             R0, [R4,#4]
STR             R5, [R4]
POP             {R4-R6,PC}
