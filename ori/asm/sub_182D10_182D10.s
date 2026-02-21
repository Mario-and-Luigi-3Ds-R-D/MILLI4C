LDR             R1, =off_6D1648
ADD             R0, R3, #8
PUSH            {R4,LR}
LDR             R3, [R1]
LDM             R0, {R1,R2}
LDR             R0, [R3,#0x9C]
MOV             R3, #0
BL              sub_3215BC
MOV             R0, #0
POP             {R4,PC}
