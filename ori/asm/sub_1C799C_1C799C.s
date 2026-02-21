PUSH            {R4-R6,LR}
MOV             R5, R0
BL              sub_2BF4EC
ADD             R0, R5, #0x13800
ADD             R0, R0, #0x2EC
BL              sub_2BF4EC
MOV             R4, #0
LDR             R0, =0x1D07
MUL             R0, R4, R0
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
BL              sub_546240
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_1C79B8
LDR             R0, =0x44A5C
ADD             R0, R0, R5
POP             {R4-R6,LR}
B               nullsub_122
