PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R7, #0
VPUSH           {D8}
STRB            R7, [R0,#0x24]
STRB            R7, [R0,#0x25]
LDR             R0, [R0,#0x3C]
LDR             R5, [R6,#0x38]
CMP             R0, R5
BEQ             loc_2993C8
MOV             R8, #1
VLDR            S16, =0.0
MOV             R9, #7
LDR             R4, [R5]
LDRB            R0, [R4,#6]
STRB            R8, [R4,#4]
STRB            R7, [R4,#3]
CMP             R0, #2
CMPNE           R0, #9
BNE             loc_2993B8
STRB            R9, [R4,#6]
STRB            R7, [R4,#1]
LDR             R0, [R4,#0x2C]
ADD             R0, R0, #0xEC
VLDM            R0, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VSTR            S16, [R4,#0x3E4]
VSTR            S0, [R4,#0x3E8]
LDR             R0, [R6,#0x3C]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_299378
VPOP            {D8}
POP             {R4-R10,PC}
