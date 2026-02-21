PUSH            {R4,LR}
BL              sub_2D8F20
LDR             R1, =off_6B2798
MOV             R4, #0
STR             R1, [R0]
STRB            R4, [R0,#8]
STRB            R4, [R0,#9]
ADD             R0, R0, #0xC
BL              sub_194BD0
ADD             R0, R0, #0xB8
BL              sub_536F90
ADD             R0, R0, #0x11C
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #1
STR             R2, [R0,#0x28]
STRB            R1, [R0,#0x2C]
SUB             R0, R0, #0x1E0
STR             R4, [R0,#0xB0]
POP             {R4,PC}
