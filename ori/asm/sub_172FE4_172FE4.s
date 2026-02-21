ADD             R1, R0, #0x400
PUSH            {R4,LR}
MOV             R4, R0
ADD             R1, R1, #0x358
BL              sub_1E6AB4
LDR             R0, [R4]
LDR             R1, [R0,#0x358]
MOV             R0, R4
POP             {R4,LR}
BX              R1
