PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, #0
ADD             R0, R4, #0x150
ADD             R1, R4, #0x190
LDR             R2, [R0]
CMP             R2, #0
BEQ             loc_13F94C
STR             R5, [R0]
MOV             R0, R2
BL              sub_1361A4
NOP
NOP
B               loc_13F920
ADD             R0, R0, #4
CMP             R0, R1
BNE             loc_13F928
POP             {R4-R6,PC}
