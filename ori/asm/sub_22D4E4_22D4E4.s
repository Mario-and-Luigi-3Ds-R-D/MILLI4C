PUSH            {R4,LR}
MOV             R4, R0
NOP
LDR             R0, [R4]
LDR             R1, [R0,#0x40]
MOV             R0, R4
POP             {R4,LR}
BX              R1
