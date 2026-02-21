PUSH            {R4-R6,LR}
ADD             R4, R0, #0x3C000
ADD             R5, R4, #0x180
MOV             R0, R2
MOV             R3, #0
MOV             R2, R1
LDM             R5, {R5,R6}
MOV             R1, R3
BL              sub_300CF8
ORR             R2, R5, R0
STR             R2, [R4,#0x180]!
ORR             R0, R6, R1
STR             R0, [R4,#4]
POP             {R4-R6,PC}
