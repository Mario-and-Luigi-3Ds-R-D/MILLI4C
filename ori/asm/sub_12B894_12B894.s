PUSH            {R4-R6,LR}
CMP             R1, #1
MOV             R4, R1
MOV             R5, R0
MOVLT           R4, #1
MOV             R6, #0
BL              sub_1348B4
LDR             R1, [R5,#0x18]
MOV             R1, R1,LSL#30
ORRS            R0, R0, R1,LSR#31
BNE             loc_12B908
LDR             R0, [R5,#0x24]
CMP             R0, #0
BEQ             loc_12B8F8
CMP             R0, R4
SUBGE           R0, R0, R4
STRGE           R0, [R5,#0x24]
BGE             loc_12B908
MOV             R2, #0
SUB             R1, R4, R0
MOV             R0, R5
STR             R2, [R5,#0x24]
BL              sub_134914
MOV             R6, R0
B               loc_12B908
MOV             R1, R4
MOV             R0, R5
BL              sub_134914
MOV             R6, R0
MOV             R0, R6
POP             {R4-R6,PC}
