PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E4614
LDR             R1, [R4,#0x3D0]
BIC             R1, R1, #1
STR             R1, [R4,#0x3D0]
POP             {R4,LR}
MOV             R1, #0
B               sub_16CA4C
