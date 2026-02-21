PUSH            {R4,LR}
LDR             R4, =byte_6D4B6C
LDRB            R0, [R4]
CMP             R0, #0
BEQ             locret_10ECD4
MOV             R0, #0
STRB            R0, [R4]
LDR             R2, =sub_119AA0
LDR             R1, =sub_119B34
LDR             R0, =sub_119AEC
BL              sub_119440
BL              sub_129050
BL              sub_121F24
LDR             R0, =byte_70EE18
BL              sub_119A34
LDR             R0, =dword_710418
BL              sub_11993C
LDRB            R0, [R4,#(byte_6D4B6F - 0x6D4B6C)]
CMP             R0, #0
BNE             loc_10ECD0
LDR             R0, =dword_70EE68
MOV             R1, #0
BL              sub_122720
MOV             R0, #0
POP             {R4,PC}
