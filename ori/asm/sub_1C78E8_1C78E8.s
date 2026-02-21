PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =0x44A58
MOV             R4, R1
ADD             R6, R5, R0
MOV             R0, R5
STRB            R2, [R6]
MOV             R2, #0x400
BL              sub_2BEE30
ADD             R0, R5, #0x13800
LDR             R2, =0x401
MOV             R1, R4
ADD             R0, R0, #0x2EC
BL              sub_2BEE30
LDRB            R0, [R6]
MOV             R4, #0
CMP             R0, #0
BLE             loc_1C795C
LDR             R0, =0x1D07
SMULBB          R0, R4, R0
ADD             R0, R5, R0,LSL#2
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
BL              sub_5459B4
LDRB            R0, [R6]
ADD             R1, R4, #1
SXTH            R4, R1
CMP             R0, R4
BGT             loc_1C7930
LDR             R0, =0x44A5C
ADD             R0, R0, R5
BL              sub_2C2340
ADD             R0, R5, #0x4A000
MOV             R3, #0xFF
MOV             R1, #0
STRB            R3, [R0,#0x2E4]
MOV             R2, #0xFFFFFFFF
STRB            R1, [R0,#0x2E5]
STR             R2, [R0,#0x2E8]
STRB            R1, [R0,#0x2EC]
POP             {R4-R6,PC}
