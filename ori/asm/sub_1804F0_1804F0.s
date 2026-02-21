PUSH            {R4,LR}
LDR             R0, [R3,#8]
CMP             R0, #0
LDR             R0, =off_6D1648
MOVEQ           R1, #1
MOVNE           R1, #0
LDR             R0, [R0]
BL              sub_1EFD70
MOV             R0, #0
POP             {R4,PC}
