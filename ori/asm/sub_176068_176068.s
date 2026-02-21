LDR             R1, =off_6D1648
PUSH            {R4,LR}
ADD             R0, R3, #8
LDR             R1, [R1]
LDR             R3, [R1,#0xC4]
LDM             R0, {R1,R2}
LDR             R0, [R3,#4]
BL              sub_537C18
MOV             R0, #0
POP             {R4,PC}
