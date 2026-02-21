LDR             R1, =off_6D1648
ADD             R0, R3, #8
PUSH            {R4,LR}
LDR             R3, [R1]
LDM             R0, {R1,R2}
LDR             R0, [R3,#0xA4]
BL              sub_37CE48
MOV             R0, #0
POP             {R4,PC}
