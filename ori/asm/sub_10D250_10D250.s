PUSH            {R4,LR}
BL              sub_117110
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x2EC
BL              sub_117110
ADD             R0, R0, #0x13800
LDR             R2, =0x741C
LDR             R1, =sub_11CAF4
MOV             R3, #4
ADD             R0, R0, #0x2EC
BLX             sub_1002F4
LDR             R1, =0x44A5C
SUB             R0, R0, #0x27400
SUB             R0, R0, #0x1D8
ADD             R0, R0, R1
BL              sub_120480
LDR             R1, =0xFFFBB5A4
ADD             R0, R0, R1
POP             {R4,PC}
