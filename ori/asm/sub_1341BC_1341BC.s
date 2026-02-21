PUSH            {R4-R6,LR}
MOV             R5, #0
MOV             R1, #9
STM             R0, {R1,R5}
MOV             R4, R0
STR             R5, [R0,#8]!
MOV             R1, #0x100
ADD             R0, R0, #4
BL              sub_13599C
ADD             R0, R0, #0x14
BL              sub_12BA3C
ADD             R0, R0, #0x14
BL              sub_12BA3C
STR             R5, [R4,#0x4C]
POP             {R4-R6,PC}
