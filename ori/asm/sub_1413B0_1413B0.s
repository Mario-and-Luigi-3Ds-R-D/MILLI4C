PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
CMP             R0, #9
BEQ             locret_1413F8
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             locret_1413F8
MOV             R1, #1
ADD             R0, R4, #0xC
BL              sub_141408
MOV             R1, #1
ADD             R0, R4, #0x20 ; ' '
BL              sub_141408
ADD             R0, R4, #0x34 ; '4'
POP             {R4,LR}
MOV             R1, #1
B               sub_141408
POP             {R4,PC}
