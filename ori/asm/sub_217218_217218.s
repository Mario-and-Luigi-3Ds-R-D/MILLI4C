PUSH            {R4-R6,LR}
MOV             R5, R0
ADD             R4, R0, #0x1B8
MOV             R6, R1
MOV             R0, R4
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
ADD             R5, R5, #0x5C ; '\'
STM             R3, {R0-R2}
STM             R4, {R0-R2}
LDM             R6, {R0-R2}
STM             R5, {R0-R2}
POP             {R4-R6,PC}
