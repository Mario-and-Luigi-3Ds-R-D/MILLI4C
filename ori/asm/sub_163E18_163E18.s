PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_5C8540
CMP             R0, #0
BEQ             loc_163E48
LDR             R0, [R5]
LDR             R1, [R0]
LDR             R2, [R1,#0xDC]
MOV             R1, R4
BLX             R2
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_18D774
