PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDRB            R0, [R0]
CMP             R0, #0
BNE             loc_1E3454
LDR             R6, =off_6D1648
MOV             R0, #1
STRB            R0, [R4]
ADD             R5, R4, #4
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S16, [R0,#0x294]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
LDR             R0, [R6]
ADD             R5, R4, #0x38 ; '8'
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S16, [R0,#0x298]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
LDR             R0, [R6]
ADD             R5, R4, #0x6C ; 'l'
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
VLDR            S16, [R0,#0x29C]
MOV             R0, R5
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
LDR             R0, [R6]
ADD             R4, R4, #0xA0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x2A0]
MOV             R0, R4
BL              sub_5A18EC
STR             R5, [R4,#0xC]
STR             R5, [R4,#4]
VPOP            {D8}
POP             {R4-R6,PC}
