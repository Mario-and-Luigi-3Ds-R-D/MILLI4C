PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
ADD             R0, R0, #4
BL              sub_120F40
CMP             R5, #0
MOVNE           R1, #0xFFFFFFFE
MOVEQ           R1, #0xFFFFFFFF
LDREX           R0, [R4]
STREX           R2, R1, [R4]
CMP             R2, #0
BNE             loc_120E68
POP             {R4-R6,PC}
