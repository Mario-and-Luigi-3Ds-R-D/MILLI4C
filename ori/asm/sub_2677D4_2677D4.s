PUSH            {R4-R6,LR}
VPUSH           {D8}
STR             R1, [R0]
LDR             R1, =off_6CE970
LDR             R1, [R1]
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x214
STR             R1, [R0,#8]!
ADD             R0, R0, #4
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R5, #1
STR             R1, [R0,#0x10]
STRB            R5, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
SUB             R4, R0, #0x40 ; '@'
STRB            R5, [R0,#0x14]
SUB             R0, R0, #0x34 ; '4'
BL              sub_5A18EC
VLDR            S16, =0.0
ADD             R0, R4, #0x40 ; '@'
VSTR            S16, [R4,#0x18]
VSTR            S16, [R4,#0x10]
BL              sub_5A18EC
VSTR            S16, [R4,#0x4C]
MOV             R0, #7
VSTR            S16, [R4,#0x44]
STRB            R0, [R4,#4]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
