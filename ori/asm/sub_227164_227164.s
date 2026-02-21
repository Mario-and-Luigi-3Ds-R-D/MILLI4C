PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2EC
LDR             R0, [R0]
BL              sub_225358
LDR             R0, =0x126F0
LDR             R0, [R0,R4]
BL              sub_225358
ADD             R4, R4, #0x12400
ADD             R4, R4, #0x2E8
LDR             R0, [R4]
POP             {R4,LR}
B               sub_2281FC
