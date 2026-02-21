PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R6, #0
VPUSH           {D8}
MOV             R1, #0x150
STR             R6, [R0],#4
BL              sub_2FFE8C
VLDR            S16, =0.0
MOV             R4, #0
ADD             R0, R5, R4
STRB            R6, [R0,#0x154]
RSB             R0, R4, R4,LSL#3
ADD             R0, R5, R0,LSL#4
ADD             R0, R0, #0x160
BL              sub_118650
ADD             R0, R4, R4,LSL#2
ADD             R4, R4, #1
ADD             R0, R5, R0,LSL#2
CMP             R4, #0xC
STRB            R6, [R0,#0x6A0]!
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
BCC             loc_118604
VPOP            {D8}
POP             {R4-R6,PC}
