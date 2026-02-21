PUSH            {R4-R8,LR}
BL              sub_1F34E4
LDR             R1, =off_6B14DC
MOV             R3, #0x23 ; '#'
MOV             R2, #0x60 ; '`'
STR             R1, [R0]
ADD             R0, R0, #0x4000
LDR             R1, =sub_1E4DE4
ADD             R0, R0, #0x250
BLX             sub_1002F4
LDR             R1, =sub_232E2C
MOV             R3, #5
MOV             R2, #0x40 ; '@'
ADD             R0, R0, #0xD20
BLX             sub_1002F4
SUB             R0, R0, #0x4000
LDR             R7, =0x50B0
SUB             R0, R0, #0xF70
MOV             R6, #0
MOV             R1, #0x23 ; '#'
STRB            R6, [R7,R0]
LDR             R6, =unk_6ED454
STR             R1, [R0,#0x5C]
MOV             R4, #1
STR             R6, [R0,#0x58]
ADD             R5, R0, #0x4000
STRB            R4, [R0,#0x3E]
ADD             R5, R5, #0x250
STR             R5, [R0,#0x60]
ADD             R12, R0, #0x4000
ADD             R4, R0, #0x70 ; 'p'
STRH            R1, [R0,#0x64]
MOV             R2, #5
ADD             R12, R12, #0xF70
ADD             R1, R6, #0x1A4
STM             R4, {R1,R2,R12}
MOV             R3, #0x2F ; '/'
STRH            R2, [R0,#0x7C]
ADD             R2, R0, #0x80
ADD             R1, R6, #0x1E0
STM             R2, {R1,R3}
ADD             R2, R0, #0x128
VLDR            S0, =-20.0
VLDR            S1, =0.0
VSTR            S0, [R0,#0x124]
VLDR            S2, =80.0
VLDR            S0, =320.0
VSTM            R2, {S1-S2}
ADD             R2, R0, #0x130
VLDR            S2, =-80.0
VSTM            R2, {S0-S2}
VSTR            S0, [R0,#0x13C]
POP             {R4-R8,PC}
