PUSH            {R4-R6,LR}
ADD             R4, R0, #0x3C000
LDRB            R12, [R1,#0xDC]
ADD             R5, R4, #0x178
MOV             R3, #0
MOV             R0, R2
LDM             R5, {R5,R6}
MOV             R1, R3
MOV             R2, R12
BL              sub_300CF8
ADD             R4, R4, #0x178
ORR             R0, R0, R5
ORR             R1, R1, R6
STM             R4, {R0,R1}
POP             {R4-R6,PC}
