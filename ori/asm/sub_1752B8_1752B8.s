MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, R1
MOV             R5, R2
MOV             R1, R2
BL              sub_2D1D50
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x310]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R2
