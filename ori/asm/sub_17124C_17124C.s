LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
LDRH            R1, [R0,#0x4A]
ORR             R1, R1, #4
STRH            R1, [R0,#0x4A]
POP             {R4,PC}
