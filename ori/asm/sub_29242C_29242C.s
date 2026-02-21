PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#4]
MOV             R2, #3
MOV             R1, #0
ADD             R0, R0, #0x12C00
ADD             R0, R0, #0x1C
STRB            R2, [R0]
STRB            R1, [R5,#8]
LDR             R0, [R5,#4]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_292480
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
BL              sub_284C48
LDR             R0, [R5,#4]
LDR             R0, [R0,#0x4C]
BL              sub_287294
LDR             R0, [R5,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
BL              sub_284B64
LDR             R0, [R5,#4]
LDR             R0, [R0,#8]
CMP             R0, #0
BLNE            sub_28E950
LDR             R0, [R5,#4]
ADD             R1, R0, #0x12400
ADD             R0, R0, #0x12400
ADD             R1, R1, #0x3D8
ADD             R0, R0, #0x3DC
LDR             R4, [R1]
LDR             R0, [R0]
CMP             R0, R4
BEQ             locret_2924EC
LDR             R0, [R4]
BL              sub_29962C
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3DC
LDR             R0, [R0]
CMP             R0, R4
BNE             loc_2924C8
POP             {R4-R6,PC}
