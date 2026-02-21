PUSH            {R4-R6,LR}
MOV             R5, R0
BL              sub_2BF4EC
ADD             R0, R5, #0x13800
ADD             R0, R0, #0x2EC
BL              sub_2BF4EC
MOV             R4, #0
LDR             R0, =0x1D07
MUL             R1, R4, R0
ADD             R0, R5, R1,LSL#2
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
BL              sub_546240
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_1C7A94
LDR             R4, =0x44A5C
ADD             R0, R5, R4
NOP
ADD             R0, R5, R4
NOP
BL              sub_2C29B8
RSB             R1, R4, R4,ASR#19
ADD             R4, R0, R1
ADD             R0, R4, #0x27400
LDR             R2, =0x741C
LDR             R1, =sub_546490
MOV             R3, #4
ADD             R0, R0, #0x1D8
BLX             sub_1009D8
ADD             R0, R4, #0x13800
ADD             R0, R0, #0x2EC
BL              sub_2C05AC
POP             {R4-R6,LR}
SUB             R0, R0, #0x13800
SUB             R0, R0, #0x2EC
B               sub_2C05AC
