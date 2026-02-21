PUSH            {R4,LR}
LDR             R1, [R3,#0xC]
ADD             R0, R3, #8
LDR             R0, [R0]
CMP             R1, #0
MOVNE           R2, #1
MOVEQ           R2, #0
CMP             R0, #0
LDR             R0, =off_6D1648
MOVEQ           R1, #1
MOVNE           R1, #0
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R3, [R0]
LDR             R3, [R3,#0xFC]
BLX             R3
MOV             R0, #0
POP             {R4,PC}
