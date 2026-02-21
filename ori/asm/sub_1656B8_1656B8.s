LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xF10
LDR             R0, [R0]
CMP             R0, #0
MOVNE           R0, #0
MOVEQ           R0, #1
POP             {R4,PC}
