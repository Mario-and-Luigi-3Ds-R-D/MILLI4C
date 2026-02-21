PUSH            {R4,LR}
BL              sub_2D8F20
LDR             R1, =off_6B28E4
STR             R1, [R0],#8
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
VLDR            S0, =0.0
SUB             R0, R0, #8
MOV             R1, #0
VSTR            S0, [R0,#0x3C]
STRH            R1, [R0,#0x68]
STRH            R1, [R0,#0x6A]
STRH            R1, [R0,#0x6C]
STRH            R1, [R0,#0x70]
POP             {R4,PC}
