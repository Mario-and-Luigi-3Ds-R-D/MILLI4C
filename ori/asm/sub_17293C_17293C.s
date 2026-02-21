PUSH            {R4-R8,LR}
BL              sub_1946B8
LDR             R3, =off_6AE0A4
LDR             R12, =off_6AE51C
LDR             R6, =0x2684
MOV             R5, #0xC8
ADD             R4, R12, #0x18
STR             R3, [R0]
STR             R4, [R0,#0x758]
ORR             R7, R6, R5,ASR#5
STR             R12, [R0,#0xE0]
MOV             R1, #0
ADD             R8, R6, #0x14
STRH            R5, [R6,R0]
STRB            R1, [R7,R0]
ADD             R2, R0, #0x2400
STRB            R1, [R8,R0]
VLDR            S0, =0.0
ADD             R0, R0, #0x2400
VSTR            S0, [R2,#0x2D4]
VSTR            S0, [R2,#0x2D8]
ADD             R0, R0, #0x2DC
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R4, #1
STR             R1, [R0,#0x10]
STRB            R4, [R0,#0x14]
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
STRB            R4, [R0,#0x2C]
SUB             R0, R0, #0x2000
SUB             R0, R0, #0x710
ADD             R1, R6, #0xE4
MOV             R2, #0xFFFFFFFF
STR             R2, [R1,R0]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0xE0
STR             R1, [R0,#0x4EC]
POP             {R4-R8,PC}
