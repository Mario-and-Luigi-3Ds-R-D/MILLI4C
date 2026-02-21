PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R6, R2
BL              sub_14CB8C
LDR             R1, =off_6B3FF0
MOV             R8, #0
ADD             R4, R0, #0x100
STR             R1, [R0]
STRB            R8, [R0,#0xFD]
STRB            R8, [R0,#0xFE]
STRB            R8, [R0,#0xFF]
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R4
BL              sub_5A2B98
LDR             R4, =off_6B7BFC
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R9, #1
STR             R1, [R0,#0x28]
ADD             R7, R0, #0x58 ; 'X'
STRB            R9, [R0,#0x2C]
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R7
BL              sub_5A2B98
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R9, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A2BD0
LDR             R1, =sub_5A39D0
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R4, [R0],#0x30
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R9, [R0,#0x2C]
SUB             R0, R0, #0x1B0
ADD             R1, R0, #0x208
ADD             R0, R0, #0x210
STM             R1, {R5,R6}
BL              sub_5931A8
ADD             R0, R0, #0x104
BL              sub_5931A8
ADD             R0, R0, #0x104
BL              sub_5931A8
ADD             R0, R0, #0x104
BL              sub_5931A8
LDR             R1, =sub_29FC1C
MOV             R3, #0x64 ; 'd'
MOV             R2, #0x14
ADD             R0, R0, #0x104
BLX             sub_1002F4
SUB             R5, R0, #0x620
ADD             R0, R0, #0x7D0
BL              sub_2A0B44
LDR             R2, =off_6BC630
LDR             R1, =0x7510
STR             R2, [R0]
STR             R5, [R1,R0]
ADD             R0, R0, #0x7400
ADD             R0, R0, #0x114
SUB             R4, R0, #0x8000
STR             R8, [R0]
SUB             R0, R0, #0x304
SUB             R4, R4, #0x304
STR             R8, [R0,#0x308]
STR             R8, [R0,#0x30C]
MOV             R1, #2
MOV             R0, R4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
MOV             R0, R4
POP             {R4-R10,PC}
