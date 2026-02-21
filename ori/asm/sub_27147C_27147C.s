PUSH            {R4-R8,LR}
MOV             R5, R1
ADD             R0, R0, #0x10
VPUSH           {D8}
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R6, #1
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
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
STRB            R6, [R0,#0x14]
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
STRB            R6, [R0,#0x14]
ADD             R0, R0, #0x64 ; 'd'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
MOV             R7, #0
STRB            R6, [R0,#0x14]
SUB             R4, R0, #0xDC
STRB            R7, [R0,#-0xD8]
SUB             R0, R0, #0x98
BL              sub_5A18EC
VLDR            S17, =1.0
ADD             R0, R4, #0x10
VSTR            S17, [R4,#0x50]
VSTR            S17, [R4,#0x48]
BL              sub_5A18EC
VLDR            S16, =0.0
ADD             R0, R4, #0x78 ; 'x'
VSTR            S16, [R4,#0x1C]
VSTR            S16, [R4,#0x14]
BL              sub_5A18EC
VSTR            S16, [R4,#0x84]
VSTR            S16, [R4,#0x7C]
LDR             R1, =off_63EF64
STR             R5, [R4]
STRB            R7, [R4,#0xAC]
VSTR            S17, [R4,#0xBC]
STRB            R6, [R4,#0xAD]
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4,#8]
STRB            R6, [R4,#0xAF]
STRB            R6, [R4,#0xD8]
VSTR            S16, [R4,#0xB4]
VSTR            S16, [R4,#0xC8]
STRB            R7, [R4,#0xAE]
ADD             R0, R4, #0xDC
STRB            R7, [R4,#0xB0]
BL              sub_5A18EC
VSTR            S17, [R4,#0xE8]
VSTR            S17, [R4,#0xE0]
VSTR            S16, [R4,#0x110]
VSTR            S16, [R4,#0xB8]
STRB            R6, [R4,#0xD8]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,PC}
