PUSH            {R4-R8,LR}
BL              sub_1F34E4
LDR             R1, =off_6B19BC
MOV             R3, #0x20 ; ' '
MOV             R2, #0x60 ; '`'
STR             R1, [R0]
ADD             R0, R0, #0x4000
LDR             R1, =sub_1E4DE4
ADD             R0, R0, #0x250
BLX             sub_1002F4
LDR             R1, =sub_232E2C
MOV             R3, #3
MOV             R2, #0x40 ; '@'
ADD             R0, R0, #0xC00
BLX             sub_1002F4
LDR             R1, =sub_3A1188
MOV             R3, #4
MOV             R2, #0xC
ADD             R0, R0, #0xC0
BLX             sub_1002F4
SUB             R0, R0, #0x4000
LDR             R8, =0x4F48
SUB             R0, R0, #0xF10
MOV             R7, #0
MOV             R5, #1
STRB            R7, [R8,R0]
STRB            R5, [R0,#0x3E]
LDR             R5, =unk_6ED6FC
ADD             R6, R0, #0x4000
ADD             R7, R0, #0x5C ; '\'
MOV             R4, #0x1C
ADD             R6, R6, #0x250
STR             R5, [R0,#0x58]
STM             R7, {R4,R6}
MOV             R3, #0x20 ; ' '
STRH            R3, [R0,#0x64]
ADD             R3, R5, #0x180
ADD             R12, R0, #0x4000
ADD             R4, R0, #0x74 ; 't'
STR             R3, [R0,#0x70]
MOV             R1, #3
ADD             R12, R12, #0xE50
STM             R4, {R1,R12}
ADD             R3, R0, #0x80
STRH            R1, [R0,#0x7C]
MOV             R2, #0xD
ADD             R1, R5, #0x1A4
STM             R3, {R1,R2}
ADD             R2, R0, #0x134
VLDR            S0, =0.0
VLDR            S1, =-80.0
VSTR            S0, [R0,#0x124]
VLDR            S2, =470.0
VSTR            S0, [R0,#0x128]
VSTR            S1, [R0,#0x12C]
VSTR            S2, [R0,#0x130]
VSTM            R2, {S0-S2}
POP             {R4-R8,PC}
