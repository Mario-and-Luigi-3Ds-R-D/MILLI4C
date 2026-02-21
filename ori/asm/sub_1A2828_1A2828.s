MOV             R2, #0xFFFFFF00
PUSH            {R3,LR}
REV             R2, R2
MOV             R1, SP
VLDR            S0, =4.0
ADD             R0, R0, #0x400
STR             R2, [SP,#8+var_8]
BL              sub_4E665C
POP             {R3,PC}
