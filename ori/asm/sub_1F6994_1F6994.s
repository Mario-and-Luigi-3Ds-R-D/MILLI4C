PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R2, R4, #0xC4
VLDR            S0, =0.015
STR             R2, [R4,#0xB0]
VSTR            S0, [R4,#0x114]
MOV             R3, #1
ADD             R1, R0, #0x13800
MOV             R2, #5
STRB            R3, [R4,#0x12C]
STRB            R2, [R4,#0x12E]
ADD             R1, R1, #0x374
ADD             R0, R4, #0xC
STRB            R3, [R4,#0x12D]
STR             R1, [R0,#0xAC]
LDR             R0, [R5]
LDR             R0, [R0,#0x60]
ADD             R1, R0, #0x7E0
ADD             R0, R4, #0xC
BL              sub_19483C
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
MOV             R1, R3
ADD             R0, R4, #0xC
BL              sub_1949CC
MOV             R1, #0
ADD             R0, R4, #0xC
BL              sub_194BC0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R1, R4, #0x1C8
POP             {R4-R6,LR}
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x368
B               sub_2018EC
