PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #0
STRB            R0, [R4]
STR             R0, [R4,#4]
STR             R0, [R4,#0x18]
ADD             R0, R4, #8
MOV             R2, #0x10
MOV             R1, #0
BL              sub_110BE4
MOV             R0, R4
POP             {R4,PC}
