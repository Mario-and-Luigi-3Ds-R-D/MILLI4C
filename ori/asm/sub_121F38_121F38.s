PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0]
CMP             R0, #0
BNE             locret_121F5C
ADD             R0, R4, #0x34 ; '4'
BL              sub_118AE8
MOV             R0, #1
STRB            R0, [R4]
POP             {R4,PC}
