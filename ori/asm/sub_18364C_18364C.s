PUSH            {R4-R6,LR}
ADD             R4, R3, #8
LDR             R5, =off_6D1648
LDM             R4, {R1,R2}
LDR             R0, [R5]
LDR             R0, [R0,#0x9C]
BL              sub_3215F0
LDR             R0, [R4]
CMP             R0, #0
BNE             loc_183680
LDR             R0, [R5]
LDR             R1, [R4,#4]
STR             R1, [R0,#0x148]
MOV             R0, #0
POP             {R4-R6,PC}
