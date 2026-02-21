PUSH            {R4-R6,LR}
ADD             R4, R0, #4
MOV             R3, #0x17
STM             R4, {R1,R2}
STRB            R3, [R0,#0xC]
ADD             R0, R0, #0x10
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
MOV             R5, #0
STRB            R1, [R0,#0x14]
STR             R5, [R0,#0x40]
STRB            R5, [R0,#0x6C]
SUB             R4, R0, #0x10
STRB            R5, [R0,#0x74]
LDR             R0, =off_6CE970
MOV             R3, R5
MOV             R2, R5
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
BEQ             loc_268BD0
LDR             R1, =off_6C0770
STM             R0, {R1,R5}
STR             R0, [R4]
MOV             R0, R4
POP             {R4-R6,PC}
