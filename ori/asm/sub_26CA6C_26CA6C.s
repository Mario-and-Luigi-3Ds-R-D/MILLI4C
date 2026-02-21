LDR             R1, =off_6CDF98
PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x1C]
LDR             R1, [R1]
LDR             R1, [R1,#0x124]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0x19C]
BL              sub_26FC38
MOV             R0, #3
STRB            R0, [R4,#0x18]
POP             {R4,PC}
