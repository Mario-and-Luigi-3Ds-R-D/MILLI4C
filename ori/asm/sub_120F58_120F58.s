PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
CMP             R0, #1
BEQ             loc_120F90
LDR             R0, [R4]
CMP             R0, #0
MOVEQ           R0, #0xFFFFFFFF
BNE             locret_120F8C
LDREX           R1, [R4]
STREX           R2, R0, [R4]
CMP             R2, #0
BNE             loc_120F7C
POP             {R4-R6,PC}
ADD             R5, R4, #4
MOV             R0, R5
BL              sub_128238
MOV             R0, #0xFFFFFFFE
LDREX           R1, [R4]
STREX           R1, R0, [R4]
CMP             R1, #0
BNE             loc_120FA0
MOV             R0, R5
POP             {R4-R6,LR}
NOP
