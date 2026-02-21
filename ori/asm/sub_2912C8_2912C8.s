PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
BL              sub_284C48
LDR             R0, [R6,#4]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
BL              sub_284B64
LDR             R0, [R6,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x4C]
BL              sub_287294
MOV             R0, #0
STRB            R0, [R6,#8]
LDR             R0, [R6,#4]
LDR             R0, [R0,#4]
ADD             R5, R0, #0x12400
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3D8
ADD             R5, R5, #0x3DC
LDR             R4, [R0]
LDR             R0, [R5]
CMP             R0, R4
BEQ             loc_291358
LDR             R0, [R4]
BL              sub_2995F8
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_291340
LDR             R0, [R6,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#8]
CMP             R1, #0
BNE             locret_291374
POP             {R4-R6,LR}
B               sub_292330
POP             {R4-R6,PC}
