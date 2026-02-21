PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R1, =off_6B0A78
MOV             R3, #1
VPUSH           {D8}
MOV             R2, #4
STM             R0, {R1,R5}
ADD             R0, R0, #0xC
LDR             R1, =sub_14379C
BLX             sub_1002F4
SUB             R0, R0, #0xC
MOV             R1, #0xFF
STR             R5, [R0,#0x90]
STR             R5, [R0,#0x94]
STR             R5, [R0,#0x98]
STRH            R5, [R0,#0x9C]
STRB            R5, [R0,#0x9E]
STRB            R1, [R0,#0x9F]
STRH            R5, [R0,#0xA0]
STRH            R5, [R0,#0xA2]
STR             R5, [R0,#0xA4]
STR             R5, [R0,#0xA8]
STR             R5, [R0,#0xAC]
STR             R5, [R0,#0xB0]
VLDR            S16, =0.0
STR             R5, [R0,#0xB4]
STR             R5, [R0,#0xB8]
VSTR            S16, [R0,#0xBC]
VSTR            S16, [R0,#0xC0]
VSTR            S16, [R0,#0xC4]
VSTR            S16, [R0,#0xC8]
VSTR            S16, [R0,#0xCC]
VSTR            S16, [R0,#0xD0]
STR             R5, [R0,#0xD4]
STRH            R5, [R0,#0xDC]
STRB            R5, [R0,#0xDE]
VSTR            S16, [R0,#0xE0]
VSTR            S16, [R0,#0xE4]
VSTR            S16, [R0,#0xE8]
ADD             R0, R0, #0xF8
BL              sub_194BD0
SUB             R4, R0, #0xF8
ADD             R0, R0, #8
VSTR            S16, [R4,#0x1CC]
MOV             R1, #0xFFFFFFFF
STRH            R5, [R0,#0xD0]
STRH            R1, [R0,#0xD2]
MOV             R0, #0x400000
STR             R0, [R4,#0x1B4]
MOV             R2, #0x80
MOV             R1, #0
ADD             R0, R4, #0x10
BL              sub_110BE4
MOV             R2, #0xFF
MOV             R1, #0x11
ADD             R0, R4, #0x1B8
BL              sub_116B10
ADD             R0, R4, #0xC
MOV             R2, #4
MOV             R1, #0
BL              sub_110BE4
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,PC}
