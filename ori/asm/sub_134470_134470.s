PUSH            {R4-R6,LR}
CMP             R0, R1
MOV             R5, R0
BEQ             loc_1344D0
MOV             R4, R1
LDR             R1, [R1]
STR             R1, [R0]
LDR             R1, [R4,#4]
STR             R1, [R0,#4]
LDR             R1, [R4,#8]
STR             R1, [R0,#8]
ADD             R1, R4, #0xC
ADD             R0, R5, #0xC
BL              sub_13F8CC
ADD             R1, R4, #0x20 ; ' '
ADD             R0, R0, #0x14
BL              sub_13F8CC
ADD             R1, R4, #0x34 ; '4'
ADD             R0, R0, #0x14
BL              sub_13F8CC
LDR             R1, [R4,#0x48]
STR             R1, [R0,#0x14]
LDR             R1, [R4,#0x4C]
STR             R1, [R0,#0x18]
MOV             R0, R5
POP             {R4-R6,PC}
