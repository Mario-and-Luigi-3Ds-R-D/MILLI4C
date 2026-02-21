MOV             R1, #0
PUSH            {R4,LR}
MOV             R2, #9
STR             R1, [R0,#4]
STR             R2, [R0]
STR             R1, [R0,#8]
MOV             R1, #0x100
ADD             R0, R0, #0xC
BL              sub_13599C
ADD             R0, R0, #0x14
BL              sub_12BA3C
ADD             R0, R0, #0x14
BL              sub_12BA3C
SUB             R0, R0, #0x34 ; '4'
POP             {R4,PC}
