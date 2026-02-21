PUSH            {R4,LR}
LDR             R0, [R0,#0x1B4]
MOV             R4, R1
TST             R0, #0x400000
BEQ             locret_19BB9C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x204]
MOV             R1, R4
POP             {R4,LR}
BX              R2
POP             {R4,PC}
