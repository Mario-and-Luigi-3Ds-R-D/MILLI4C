NOP
PUSH            {R3,LR}
MOV             R0, #0
STRB            R0, [SP,#8+var_8]
MOV             R0, SP
BL              sub_119208
LDRB            R0, [SP,#8+var_8]
POP             {R3,PC}
