MOV             R2, #0
MOV             R1, R0
LDR             R0, =dword_6D306C
LDR             R0, [R0]
LDR             R3, [R0]
LDR             R3, [R3,#0xC]
LDR             LR, =sub_127B34
BX              R3
