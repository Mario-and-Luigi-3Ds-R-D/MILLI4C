PUSH            {R4-R6,LR}
MOV             R12, R0
MOV             R1, #0
STRB            R1, [R0],#0x8C
MOV             R3, #4
STR             R1, [R0,#0xC]
LDR             R1, =off_6B8AD4
MOV             R2, #8
STR             R1, [R0]
LDR             R1, =sub_203CC8
ADD             R0, R12, #0xA0
BLX             sub_1002F4
SUB             R4, R0, #0xA0
SUB             R0, R0, #0x9C
MOV             R2, #0x80
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x84
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
LDR             R0, =dword_6ED9B8
MOV             R5, #0x4000
ADD             R6, R4, #0x8C
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
MOV             R2, R5
MOV             R0, R6
BL              sub_108CA0
MOV             R0, R4
POP             {R4-R6,PC}
