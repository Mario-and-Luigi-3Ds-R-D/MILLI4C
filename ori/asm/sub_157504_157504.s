PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#8]
LDR             R4, [R0,#0x18]
MOV             R0, R4
BL              sub_5C5820
CMP             R0, #0
BNE             locret_157548
ADD             R0, R4, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_157548
MOV             R0, R5
BL              sub_155284
MOV             R0, R5
POP             {R4-R6,LR}
B               sub_1547A8
POP             {R4-R6,PC}
