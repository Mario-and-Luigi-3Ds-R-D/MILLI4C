PUSH            {R4,LR}
BL              sub_233650
LDR             R3, =off_6B0504
MOV             R2, #0
STR             R2, [R0,#0xA4]
STR             R3, [R0]
STR             R2, [R0,#0xA8]
MOV             R1, #0xFFFFFFFF
STR             R2, [R0,#0xAC]
STRH            R1, [R0,#0xB0]
STRH            R1, [R0,#0xB2]
STRH            R1, [R0,#0xB4]
STRH            R1, [R0,#0xB6]
POP             {R4,PC}
