PUSH            {R4-R6,LR}
VPUSH           {D8}
BL              sub_2D8F20
LDR             R1, =off_6B39E8
VLDR            S16, =0.0
STR             R1, [R0]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
ADD             R0, R0, #0x14
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
VLDR            S0, =-1.0
SUB             R0, R0, #0x14
MOV             R5, #0
VSTR            S0, [R0,#0x6C]
VSTR            S0, [R0,#0x70]
VSTR            S0, [R0,#0x74]
VSTR            S0, [R0,#0x78]
VSTR            S16, [R0,#0x7C]
VSTR            S16, [R0,#0x80]
VSTR            S16, [R0,#0x84]
VSTR            S16, [R0,#0x88]
VSTR            S16, [R0,#0x8C]
VSTR            S16, [R0,#0x90]
VSTR            S16, [R0,#0x94]
VSTR            S16, [R0,#0x98]
STRB            R5, [R0,#0x9C]
STRB            R5, [R0,#0x9D]
VSTR            S16, [R0,#0xA0]
VSTR            S16, [R0,#0xA4]
VSTR            S16, [R0,#0xA8]
VSTR            S16, [R0,#0xAC]
VSTR            S16, [R0,#0xB0]
VSTR            S16, [R0,#0xB4]
VSTR            S16, [R0,#0xB8]
VSTR            S16, [R0,#0xBC]
VSTR            S16, [R0,#0xC0]
VSTR            S16, [R0,#0xC4]
VSTR            S16, [R0,#0xC8]
VSTR            S16, [R0,#0xCC]
VSTR            S16, [R0,#0xD0]
ADD             R0, R0, #0xD4
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
SUB             R0, R0, #0xD4
STR             R5, [R0,#0x10C]
VPOP            {D8}
POP             {R4-R6,PC}
