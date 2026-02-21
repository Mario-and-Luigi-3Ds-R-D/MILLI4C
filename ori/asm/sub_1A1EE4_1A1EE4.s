PUSH            {R4-R8,LR}
MOV             R1, #0
STR             R1, [R0]
ADD             R1, R0, #4
STR             R1, [R0,#8]
STR             R1, [R0,#4]
MOV             R1, #2
ADD             R0, R0, #0x10
BL              sub_19E180
LDR             R1, =off_6CE970
LDR             R2, =sub_10D4F0
SUB             R4, R0, #0x10
MOV             R6, #0
LDR             R1, [R1]
LDR             R7, =off_6CE388
ADD             R5, R4, #0x10
LDR             R0, [R1,R2]
STR             R0, [R4,#0x5C]
STR             R6, [R4,#0x64]
STRB            R6, [R4,#0xC]
MOV             R0, #1
STRB            R6, [R4,#0xD]
STRB            R0, [R4,#0x2D]
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
ADD             R1, R0, #0x1C
LDR             R0, [R0,#0x24]
LDM             R1, {R1,R2}
STR             R0, [R5,#0x14]
ADD             R5, R5, #0xC
STM             R5, {R1,R2}
LDR             R0, [R7]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x18]
STR             R0, [R4,#0x40]
LDR             R0, [R4,#0x5C]
ADD             R1, R0, #0x24 ; '$'
ADD             R0, R4, #0x10
BL              sub_19E0C4
MOV             R0, R4
STRB            R6, [R4,#0xE]
POP             {R4-R8,PC}
