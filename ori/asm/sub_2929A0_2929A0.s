PUSH            {R4-R6,LR}
ADD             R1, R0, #0x12400
ADD             R5, R0, #0x12400
ADD             R1, R1, #0x3D8
ADD             R5, R5, #0x3DC
LDR             R4, [R1]
LDR             R0, [R5]
CMP             R0, R4
BEQ             locret_2929DC
LDR             R0, [R4]
BL              sub_2993D8
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_2929C4
POP             {R4-R6,PC}
