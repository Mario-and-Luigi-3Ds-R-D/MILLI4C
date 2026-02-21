PUSH            {R4,LR}
LDR             R1, [R3,#0xC]
ADD             R0, R3, #8
LDR             R0, [R0]
CMP             R1, #0
MOVNE           R3, #1
MOVEQ           R3, #0
CMP             R0, #0
LDR             R0, =off_6D1648
MOVNE           R2, #1
MOVEQ           R2, #0
LDR             R0, [R0]
LDR             R1, [R0]
LDR             R12, [R1,#0x60]
MOV             R1, #0
BLX             R12
MOV             R0, #3
POP             {R4,PC}
