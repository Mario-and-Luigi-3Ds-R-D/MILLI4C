PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R1, [R0]
LDR             R0, [R4]
LDR             R1, [R1,#0xC8]
TST             R1, #7
BEQ             loc_190574
LDR             R1, [R0,#0xEC]
MOV             R0, R4
BLX             R1
B               loc_190584
LDR             R2, [R0,#0xDC]
MOV             R1, #0
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DCEC
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
