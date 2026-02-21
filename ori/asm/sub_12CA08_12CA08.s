PUSH            {R3-R7,LR}
MOV             R4, R0
MOV             R6, R1
LDRB            R5, [R0,#0x6C]
LDR             R2, [R0,#0x1C]
LDR             R0, [R0,#4]
MOV             R1, R5
BL              sub_136824
MOV             R1, R0
LDR             R0, [R4,#4]
MOV             R2, #0x60 ; '`'
ADD             R2, R2, R5,LSL#3
ADD             R2, R2, R0
LDR             R3, [R0,#0xC]
LDRH            R2, [R2]
LDR             R5, =dword_6D2418
ADD             R0, R0, R3
ADD             R0, R0, R2,LSL#3
ADD             R3, R0, R1,LSL#3
LDRSB           R0, [R4,#0x72]
LDR             R2, [R5]
MOV             R1, R6
STR             R0, [SP,#0x18+var_18]
MOV             R0, R4
BL              sub_136908
STR             R0, [R5]
POP             {R3-R7,PC}
