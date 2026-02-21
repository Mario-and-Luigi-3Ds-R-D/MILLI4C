PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
BL              sub_573FBC
LDM             R4, {R0-R2}
ADD             R5, R5, #0x800
ADD             R5, R5, #0x2CC
STM             R5, {R0-R2}
POP             {R4-R6,PC}
