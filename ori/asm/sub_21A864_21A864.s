PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
BL              sub_5EC8D8
CMP             R0, #0
BNE             locret_21A890
MOV             R2, #1
MOV             R0, R4
POP             {R4,LR}
MOV             R1, R2
B               loc_21B50C
POP             {R4,PC}
