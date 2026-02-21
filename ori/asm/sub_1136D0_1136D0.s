PUSH            {R4-R6,LR}
LDR             R5, =byte_6D4158
LDR             R2, [R5,#(dword_6D415C - 0x6D4158)]
CMP             R2, #0
BNE             loc_113774
LDR             R2, =dword_7017C4
LDR             R3, =off_6C3040
MOV             R6, #0
STR             R2, [R5,#(dword_6D415C - 0x6D4158)]
STR             R3, [R2]
STR             R6, [R2,#(dword_7017D0 - 0x7017C4)]
STR             R6, [R2,#(dword_7017D4 - 0x7017C4)]
STRD            R0, R1, [R2,#(dword_7017C8 - 0x7017C4)]
ADD             R4, R2, #0x14
MOV             R12, #0x800
ADD             R0, R2, #0x1C
STM             R4, {R0,R12}
ADD             R0, R0, #0x8000
BL              sub_118AE8
LDR             R4, [R5,#(dword_6D415C - 0x6D4158)]
MOV             R1, #0
ADD             R0, R4, #0x14
LDM             R0, {R0,R2}
MOV             R2, R2,LSL#4
BL              sub_12B588
LDR             R0, [R4,#0x14]
STR             R6, [R4,#0x10]
LDR             R2, [R4,#4]
MOV             R3, #0x1000
MOV             R1, #1
STRD            R2, R3, [R0]
LDR             R2, [R4,#0x10]
ADD             R2, R2, #0x1000
STR             R2, [R4,#0x10]
LDR             R2, [R4,#8]
LDR             R3, [R0,#4]
SUB             R2, R2, R3
STR             R2, [R0,#8]
STRB            R1, [R0,#0xC]
LDR             R0, [R4,#0x10]
STR             R0, [R4,#0xC]
LDR             R0, [R5,#(dword_6D415C - 0x6D4158)]
POP             {R4-R6,PC}
