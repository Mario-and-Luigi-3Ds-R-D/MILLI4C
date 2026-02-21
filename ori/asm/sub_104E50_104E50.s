PUSH            {R4-R8,LR}
MOV             R6, R0
ADD             R4, R0, #0x138
LDR             R0, [R0,#0x138]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_104EA4
LDR             R0, =0x8D40
MOV             R1, #0
BL              sub_116200
MOV             R1, R4
MOV             R0, #1
BL              sub_10A4C4
ADD             R1, R4, #4
MOV             R0, #2
BL              sub_10A6A0
STR             R7, [R4],#4
MOV             R0, R4
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
MOV             R4, #0
ADD             R0, R4, R4,LSL#1
ADD             R0, R6, R0,LSL#3
ADD             R5, R0, #0x14C
LDR             R0, [R0,#0x154]
CMP             R0, #0
BEQ             loc_104EE4
MOV             R0, #0
BL              sub_10B008
ADD             R1, R5, #8
MOV             R0, #2
BL              sub_10B33C
ADD             R0, R5, #8
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_104EA8
BL              sub_10B578
LDR             R0, [R6,#0xC]
CMP             R0, #0
BEQ             loc_104F08
BL              sub_110D10
STR             R7, [R6,#0xC]
ADD             R0, R6, #0x14
BL              sub_106BE8
ADD             R0, R6, #0xA0
POP             {R4-R8,LR}
B               sub_106BE8
