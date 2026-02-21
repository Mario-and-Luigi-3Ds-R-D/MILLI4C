LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R1, [R3,#8]
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
BL              sub_537BE0
MOV             R0, #0
POP             {R4,PC}
