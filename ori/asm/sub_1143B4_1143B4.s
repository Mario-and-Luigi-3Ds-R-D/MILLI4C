PUSH            {R4,R5}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R1]
MOV             R2, R3
LDR             R12, [R1,#0xC]
MOV             R1, R4
POP             {R4,R5}
BX              R12
