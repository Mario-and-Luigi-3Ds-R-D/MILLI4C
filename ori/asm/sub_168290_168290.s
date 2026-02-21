PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_1E4614
CMP             R0, R4
BNE             loc_1682C4
LDR             R0, [R5]
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x3F8]
POP             {R4-R6,LR}
BX              R1
LDR             R0, [R4]
LDR             R1, [R0,#0x370]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R1
