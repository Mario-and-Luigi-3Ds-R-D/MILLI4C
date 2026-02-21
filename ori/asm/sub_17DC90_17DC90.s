PUSH            {R4,LR}
LDR             R1, [R3,#0x10]
ADD             R0, R3, #8
LDR             R12, =off_6D1648
CMP             R1, #0
LDR             R1, [R0,#4]
MOVNE           R3, #1
MOVEQ           R3, #0
CMP             R1, #0
LDR             R1, [R0]
LDR             R0, [R12]
MOVNE           R2, #1
MOVEQ           R2, #0
LDR             R12, [R0]
LDR             R12, [R12,#0x58]
BLX             R12
MOV             R0, #3
POP             {R4,PC}
