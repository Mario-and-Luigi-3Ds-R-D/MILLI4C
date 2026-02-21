LDR             R2, =off_67E548
PUSH            {R4-R6,LR}
MOV             R6, #0
MOV             R3, #1
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
MOV             R2, #0x17C
STR             R6, [R0,#8]!
LDR             R1, =sub_1E9F04
ADD             R0, R0, #4
BLX             sub_1002F4
SUB             R4, R0, #0xC
LDR             R1, =0xFFFF
ADD             R0, R0, #0x17C
MOV             R2, #4
BL              sub_110BE4
STRB            R6, [R4,#0x18C]
ADD             R0, R4, #0x194
STRB            R6, [R4,#0x18D]
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
STRB            R1, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A2BD0
LDR             R1, =off_6B7C0C
MOV             R3, #2
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #2
STR             R2, [R0,#0x28]
STRB            R1, [R0,#0x2C]
STRB            R6, [R0,#0x80]
SUB             R5, R0, #0x1C8
ADD             R4, R0, #0x80
STRH            R6, [R0,#0x82]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0xC]
ADD             R4, R4, #4
MOV             R0, R5
STM             R4, {R1,R2}
POP             {R4-R6,PC}
