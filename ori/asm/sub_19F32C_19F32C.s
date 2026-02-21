PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
VLDR            S16, =0.0
VSTR            S16, [R0,#8]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x1DC
BL              sub_5A26D0
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_1A5620
LDR             R5, =off_6CE388
MOV             R6, #0
STRB            R6, [R4,#0xC]
LDR             R0, [R5]
BL              sub_1A083C
LDR             R0, [R4,#4]
STRB            R6, [R0,#0x445]
LDR             R4, [R4,#4]
LDR             R0, [R5]
ADD             R4, R4, #0x39C
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x30]
VSTR            S16, [R4]
STR             R0, [R4,#4]
VPOP            {D8}
POP             {R4-R6,PC}
