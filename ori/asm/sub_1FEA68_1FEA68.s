PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CDC90
MOV             R1, #2
MOV             R0, #0
STRB            R1, [R4,#0xD]
STRB            R0, [R4,#0xE]
LDR             R0, [R6]
ADD             R0, R0, #0x12000
ADD             R0, R0, #0x6E0
LDR             R0, [R0,#0x1C]
LDR             R5, [R0,#-0xC]
MOV             R0, R5
BL              sub_1FC798
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
ADD             R0, R5, #4
BL              sub_14C548
MOV             R1, R4
MOV             R0, R5
BL              sub_1FC858
ADD             R5, R4, #0x400
LDR             R0, [R6]
ADD             R5, R5, #0xC
BL              sub_1F9D54
MOV             R0, #1
VSTR            S0, [R5]
MOV             R2, R0
STR             R0, [R5,#4]
ADD             R0, R4, #0x10
POP             {R4-R6,LR}
MOV             R3, #0x100
MOV             R1, #2
B               sub_14C548
