PUSH            {R4,LR}
MOV             R4, R0
BL              sub_174EC0
LDR             R0, [R4]
LDR             R1, [R0,#0x18]
MOV             R0, R4
POP             {R4,LR}
BX              R1
