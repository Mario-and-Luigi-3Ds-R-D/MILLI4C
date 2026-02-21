PUSH            {R4,LR}
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
LDR             R0, [R4]
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
MOVNE           R0, #1
POP             {R4,PC}
