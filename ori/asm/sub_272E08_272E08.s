PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
MOV             R5, #0
STRB            R5, [R0,#0x4C9]
LDR             R0, [R4,#0x3FC]
CMP             R0, #0
BEQ             locret_272E30
BL              sub_533330
STR             R5, [R4,#0x3FC]
POP             {R4-R6,PC}
