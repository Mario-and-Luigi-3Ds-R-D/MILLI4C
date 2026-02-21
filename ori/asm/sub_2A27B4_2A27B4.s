PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x10
BL              sub_120E7C
LDR             R0, [R4,#4]
POP             {R4,PC}
