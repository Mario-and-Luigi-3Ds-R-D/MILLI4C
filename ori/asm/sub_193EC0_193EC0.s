PUSH            {R4-R6,LR}
BL              sub_2B5C90
LDR             R3, =off_6AFD70
LDR             R1, =0x14408
MOV             R5, #0
STR             R3, [R0]
ADD             R12, R0, #0x14400
VLDR            S0, =1.0
STR             R5, [R1,R0]
ADD             R2, R1, #0x20C
VSTR            S0, [R12,#0x210]
STR             R5, [R2,R0]
ADD             R0, R0, #0x14400
LDR             R1, =sub_37CBE4
MOV             R3, #0x40 ; '@'
MOV             R2, #0x14
ADD             R0, R0, #0x25C
BLX             sub_1002F4
LDR             R1, =0x14B5C
SUB             R0, R0, #0x14400
SUB             R0, R0, #0x25C
ADD             R2, R1, #4
STR             R5, [R1,R0]
ADD             R3, R1, #8
STR             R5, [R2,R0]
MOV             R12, R0
STR             R5, [R3,R0]
ADD             R0, R0, #0x14800
ADD             R0, R0, #0x368
MOV             R3, #0x20 ; ' '
STR             R5, [R0]
ADD             R0, R1, #0x10
LDR             R1, =sub_37CBC8
STR             R5, [R0,R12]
ADD             R0, R12, #0x14000
MOV             R2, #0x24 ; '$'
ADD             R0, R0, #0xB70
BLX             sub_1002F4
STR             R5, [R0,#0x480]
STR             R5, [R0,#0x484]
SUB             R4, R0, #0x14000
STR             R5, [R0,#0x488]
STR             R5, [R0,#0x48C]
STRB            R5, [R0,#0x490]!
MOV             R1, #0xFF
STRB            R5, [R0,#1]
STRB            R1, [R0,#2]
MOV             R1, #1
STRB            R1, [R0,#3]
MOV             R1, #0
ADD             LR, R0, #8
MOV             R6, R1
STM             LR, {R1,R6}
MOV             R3, R1
MOV             R12, R1
ADD             R6, R0, #0x10
STR             R5, [R0,#0x18]
STR             R5, [R0,#0x1C]
LDR             R2, =0x14180
STM             R6, {R3,R12}
SUB             R4, R4, #0xB70
ADD             R1, R4, #0x14400
ADD             R1, R1, #0x1C8
MOV             R3, #0x400
STR             R5, [R0,#0x20]
STR             R3, [R2,R4]
LDR             R0, [R1]
BIC             R2, R0, #1
ADD             R0, R4, #0x14400
ADD             R0, R0, #0x1EC
STR             R2, [R1]
LDR             R1, [R0]
MOV             R2, #0x13C
BIC             R1, R1, #1
STR             R1, [R0]
ADD             R0, R4, #0x14400
MOV             R1, #0
ADD             R0, R0, #0xC
BL              sub_110BE4
ADD             R0, R4, #0x14400
MOV             R2, #0x80
MOV             R1, #0
ADD             R0, R0, #0x148
BL              sub_110BE4
MOV             R0, R4
POP             {R4-R6,PC}
