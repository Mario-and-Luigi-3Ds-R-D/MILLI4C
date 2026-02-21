PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R12, [R0,#0x104]
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
LDR             R1, [R0,#0x108]
MOV             R0, R4
POP             {R4,LR}
BX              R1
