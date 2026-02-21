PUSH            {R4,LR}
MOV             R4, R0
BL              sub_2255DC
MOV             R0, #4
MOV             R1, #0
STRB            R0, [R4,#0x3FC]
STR             R1, [R4,#0x400]
LDRB            R0, [R4,#0x47C]
STRB            R0, [R4,#0xFE]
POP             {R4,PC}
