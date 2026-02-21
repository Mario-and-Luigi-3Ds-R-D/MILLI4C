PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #0
STR             R0, [R4,#0x80]
STR             R0, [R4,#0x84]
STR             R0, [R4,#0x88]
MOV             R0, R4
MOV             R2, #0x80
MOV             R1, #0
BL              sub_110BE4
MOV             R0, R4
POP             {R4,PC}
