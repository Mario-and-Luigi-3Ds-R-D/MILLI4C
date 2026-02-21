PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0xC4
VLDR            S0, =0.015
STR             R0, [R4,#0xB0]
VSTR            S0, [R4,#0x114]
MOV             R3, #1
MOV             R2, #5
STRB            R3, [R4,#0x12C]
STRB            R2, [R4,#0x12E]
ADD             R0, R4, #0xC
STRB            R3, [R4,#0x12D]
STR             R1, [R0,#0xAC]
LDR             R0, =off_6D1648
LDR             R0, [R0]
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
ADD             R0, R4, #0xC
POP             {R4,LR}
MOV             R1, #0
B               sub_194BC0
