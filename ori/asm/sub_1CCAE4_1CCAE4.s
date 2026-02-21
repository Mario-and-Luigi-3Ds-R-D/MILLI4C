PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R1, =sub_4DBBF8
MOV             R3, #0x11
MOV             R2, #0xC
STRB            R5, [R0],#4
BLX             sub_1002F4
SUB             R4, R0, #4
LDR             R0, =unk_6E8618
STR             R5, [R4,#0xD0]
STR             R5, [R4,#0xD4]
STR             R5, [R4,#0xD8]
STR             R5, [R4,#0xDC]
STR             R5, [R4,#0xE0]
STR             R0, [R4,#0xE8]
LDR             R0, =dword_6E7CD0
STR             R5, [R4,#0xE4]
BL              sub_5F10B0
STRH            R0, [R4,#0xEC]
MOV             R0, R4
POP             {R4-R6,PC}
