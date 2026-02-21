PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R0, R1
BL              sub_13F914
ADD             R0, R5, #0x2C4
ADD             R1, R5, #0x2D4
LDR             R2, [R0]
CMP             R2, R4
BNE             loc_13F314
MOV             R1, #0
STR             R1, [R0]
POP             {R4-R6,PC}
ADD             R0, R0, #4
CMP             R0, R1
BNE             loc_13F2FC
POP             {R4-R6,PC}
