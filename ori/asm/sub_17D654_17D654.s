MOV             R0, R1
LDR             R1, =off_6D1648
PUSH            {R4,LR}
MOV             R12, R2
MOV             R2, R3
LDR             R1, [R1]
LDR             R1, [R1,#0xEC]
TST             R1, #3
MOVEQ           R0, #0
BEQ             locret_17D688
MOV             R1, R12
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
