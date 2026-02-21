PUSH            {R4-R8,LR}
MOV             R4, R0
CMP             R1, #1
LDR             R6, [R4,#8]
MOV             R7, R1
MOV             R8, #0
MOVLT           R7, #1
MOV             R5, #1
MOV             R0, R6
BL              sub_136048
CMP             R0, #0
NOP
BEQ             loc_124344
LDR             R0, [R4,#0x20]
TST             R0, R5
BNE             loc_124330
LDR             R0, [R6,#0x44]
TST             R0, #0x100
BEQ             loc_124338
MOV             R0, R6
BL              sub_12BB58
MOV             R1, R7
MOV             R0, R6
BL              sub_12C3B4
LDR             R2, [R4,#4]
LDR             R1, [R4,#0x20]
LDR             R0, [R4,#8]
ADD             R6, R6, #0x360
ADD             R2, R2, R2,LSL#3
BIC             R1, R1, R5
ADD             R2, R2, R2,LSL#1
MOV             R5, R5,LSL#1
ADD             R0, R0, R2,LSL#5
CMP             R0, R6
STR             R1, [R4,#0x20]
BHI             loc_124304
MOV             R0, R8
POP             {R4-R8,PC}
