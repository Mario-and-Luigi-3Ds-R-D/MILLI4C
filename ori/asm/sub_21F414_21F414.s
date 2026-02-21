PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B2D98
MOV             R5, #0
MOV             R2, #0x18
STM             R4, {R0,R5}
MOV             R1, R5
STR             R5, [R4,#8]
STR             R5, [R4,#0xC]
STRB            R5, [R4,#0x110]
STRB            R5, [R4,#0x111]
STRB            R5, [R4,#0x112]
STRB            R5, [R4,#0x113]
STR             R5, [R4,#0x170]
ADD             R0, R4, #0x124
STRB            R5, [R4,#0x174]
BL              sub_110BE4
MOV             R6, #0xFFFFFFFF
STR             R6, [R4,#0x134]
LDR             R0, [R4,#0x138]
MOV             R2, #8
MOV             R1, #0
ORR             R0, R0, #0x3000000
ORR             R0, R0, #0x43 ; 'C'
STR             R0, [R4,#0x138]
ADD             R0, R4, #0x13C
BL              sub_110BE4
ADD             R0, R4, #0x100
STR             R5, [R4,#0x144]
STRH            R6, [R0,#0x48]
STR             R5, [R4,#0x14C]
STRH            R6, [R0,#0x50]
STRH            R5, [R0,#0x52]
VLDR            S0, =0.02
ADD             R1, R4, #0x400
STR             R6, [R4,#0x154]
VLDR            S1, =0.2
STR             R6, [R4,#0x158]
VSTR            S0, [R1,#0x278]
VSTR            S1, [R1,#0x27C]
MOV             R0, R4
POP             {R4-R6,PC}
