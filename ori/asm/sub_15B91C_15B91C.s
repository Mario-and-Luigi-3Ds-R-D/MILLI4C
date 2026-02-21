LDR             R0, =off_6D1648
PUSH            {R4,LR}
MOV             R4, R3
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#8]
CMP             R1, #0
MOVNE           R1, #1
BL              sub_163DD4
MOV             R0, #0
POP             {R4,PC}
