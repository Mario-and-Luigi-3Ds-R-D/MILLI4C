PUSH            {R4-R6,LR}
MOV             R1, #9
ADD             R5, R0, #0x400
MOV             R4, R0
ADD             R5, R5, #8
STRB            R1, [R0,#0xC]
BL              sub_4635D8
MOV             R6, R0
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
MOV             R3, #0x100
STM             R5, {R0-R2}
MOV             R1, #1
ADD             R0, R4, #0x14
STRB            R1, [R4,#0x106]
POP             {R4-R6,LR}
MOV             R2, #0
MOV             R1, R2
NOP
