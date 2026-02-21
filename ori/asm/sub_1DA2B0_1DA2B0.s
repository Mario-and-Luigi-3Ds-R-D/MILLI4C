PUSH            {R4-R6,LR}
BL              sub_14CB8C
LDR             R1, =off_6B1744
MOV             R5, #0
STR             R1, [R0],#0x100
STR             R5, [R0],#4
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
MOV             R6, #1
ADD             R1, R0, #0x58 ; 'X'
STRB            R6, [R0,#0x2C]
MOV             R0, #0xFFFFFFFF
VLDR            S0, =0.0
REV             R2, R0
ADD             R0, R1, #0x1C
STR             R2, [R1]
STR             R2, [R1,#4]
STR             R2, [R1,#8]
VSTR            S0, [R1,#0xC]
VSTR            S0, [R1,#0x10]
VSTR            S0, [R1,#0x14]
VSTR            S0, [R1,#0x18]
BL              sub_5A2F28
SUB             R4, R0, #0x178
STR             R5, [R0,#0x24]
STR             R5, [R0,#0x30]
MOV             R0, #4
STRB            R6, [R4,#0x1AC]
STRB            R0, [R4,#0x1AD]
STRB            R5, [R4,#0x1AE]
STRB            R6, [R4,#0x1AF]
ADD             R1, R4, #0x1B4
STR             R5, [R4,#0x1B0]
STR             R1, [R4,#0x1B8]
STR             R1, [R4,#0x1B4]
MOV             R1, #2
MOV             R0, R4
STR             R5, [R4,#0x1BC]
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_14B798
MOV             R0, R4
POP             {R4-R6,PC}
