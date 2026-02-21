PUSH            {R4,LR}
LDR             R0, [R3,#0xC]
LDR             R1, [R3,#8]
CMP             R0, #0
LDR             R0, =off_6D1648
UXTH            R1, R1
MOVNE           R2, #1
MOVEQ           R2, #0
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R3, [R0]
LDR             R3, [R3,#0x94]
BLX             R3
MOV             R0, #0
POP             {R4,PC}
