PUSH            {R4,LR}
LDR             R0, [R3,#8]
CMP             R0, #0
LDR             R0, =off_6D1648
MOVNE           R1, #1
MOVEQ           R1, #0
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R2, [R0]
LDR             R2, [R2,#0xF4]
BLX             R2
MOV             R0, #0
POP             {R4,PC}
