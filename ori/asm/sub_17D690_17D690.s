LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R2, [R3,#8]
LDR             R1, [R3,#0xC]
LDR             R0, [R0]
CMP             R2, #0
AND             R1, R1, #0xFF
LDR             R0, [R0,#0xB0]
BEQ             loc_17D6BC
BL              sub_195930
B               loc_17D6C4
NOP
BL              sub_195B7C
MOV             R0, #0
POP             {R4,PC}
