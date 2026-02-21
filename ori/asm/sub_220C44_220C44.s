PUSH            {R4,LR}
MOV             R4, R0
BL              sub_2211A8
CMP             R0, #0
BNE             locret_220C64
MOV             R0, R4
POP             {R4,LR}
B               sub_2CF4BC
POP             {R4,PC}
