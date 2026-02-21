PUSH            {R4-R6,LR}
BL              sub_18A29C
LDR             R1, =off_6ADAF4
MOV             R4, #0
STR             R1, [R0]
LDR             R1, =off_6B96F0
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x58 ; 'X'
STM             R0!, {R1,R4}
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R5, #1
STR             R1, [R0,#0x10]
STRB            R5, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
STRB            R5, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_59CE14
ADD             R0, R0, #0x88
BL              sub_50DF08
SUB             R1, R0, #0x14400
ADD             R0, R0, #0x800
ADD             R0, R0, #0x28C
SUB             R1, R1, #0x174
STRB            R5, [R0,#0xA1]
STRB            R5, [R0,#0xA2]
STRB            R4, [R0,#0xA3]
STRB            R4, [R0,#0xA4]
STRB            R5, [R0,#0xA6]
STRB            R5, [R0,#0xA7]
STR             R4, [R0,#0xA8]
ADD             R0, R1, #0x15000
ADD             R0, R0, #0xDC
BL              sub_599784
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x4C ; 'L'
BL              sub_599784
MOV             R1, #0
SUB             R4, R0, #0x28800
ADD             R0, R0, #0x13000
ADD             R0, R0, #0x850
MOV             R2, R1
MOV             R3, R1
MOV             R12, R1
STM             R0, {R1-R3,R12}
SUB             R4, R4, #0x128
ADD             R0, R4, #0x15000
MOV             R2, #0x10
ADD             R0, R0, #0x88
BL              sub_110BE4
ADD             R0, R4, #0x15000
MOV             R2, #8
MOV             R1, #0
ADD             R0, R0, #0x98
BL              sub_110BE4
MOV             R0, R4
MOV             R1, R5
BL              sub_2B01F8
MOV             R0, R4
POP             {R4-R6,PC}
