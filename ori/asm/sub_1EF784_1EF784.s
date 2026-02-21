PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R0,#0xA0]
LDR             R1, =0x1462C
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x38]
CMP             R1, #3
BEQ             loc_1EF7B4
BL              sub_221A40
LDR             R0, [R6,#0xA0]
POP             {R4-R6,LR}
B               sub_2D4074
NOP
BL              sub_59D118
LDR             R0, [R6]
MOV             R1, #4
LDR             R2, [R0,#0xC4]
MOV             R0, R6
BLX             R2
MOV             R4, #0
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x98]
BLX             R1
LDR             R0, [R5,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x9C]
BLX             R1
LDR             R0, [R5,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1EF7D4
LDR             R0, [R6]
MOV             R1, #4
LDR             R2, [R0,#0xBC]
MOV             R0, R6
POP             {R4-R6,LR}
BX              R2
