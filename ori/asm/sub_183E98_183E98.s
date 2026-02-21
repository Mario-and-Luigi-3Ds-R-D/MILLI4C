LDR             R1, =off_6D1648
PUSH            {R4,LR}
ADD             R0, R3, #8
LDR             R12, [R1]
LDM             R0, {R1-R3}
LDR             R0, [R12,#0xA4]
BL              sub_37D5E8
MOV             R0, #0
POP             {R4,PC}
