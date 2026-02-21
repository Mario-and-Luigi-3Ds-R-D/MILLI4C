PUSH            {R1-R7,LR}
MOVS            R5, #0
MOV             R7, SP
LDR             R6, =sub_2FF5D4
LDR             R4, [SP,#0x20+arg_0]
STM             R7!, {R4-R6}
BL              sub_103610
POP             {R1-R7,PC}
