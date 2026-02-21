ADD             R0, R0, #0x58 ; 'X'
PUSH            {R4,LR}
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R4, #1
STR             R1, [R0,#0x28]
STRB            R4, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R4, [R0,#0x14]
SUB             R0, R0, #0xB0
POP             {R4,PC}
