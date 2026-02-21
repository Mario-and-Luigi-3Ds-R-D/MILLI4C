PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R0, [R5]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x330
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_29231C
LDR             R0, [R5]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x3D8
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_29231C
LDR             R0, [R4,#4]
LDR             R1, =0x12C10
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_292314
POP             {R4-R6,LR}
B               sub_292EFC
POP             {R4-R6,LR}
B               sub_2929E0
POP             {R4-R6,PC}
