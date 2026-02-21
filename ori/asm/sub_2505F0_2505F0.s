PUSH            {R4-R6,LR}
MOV             R4, R0
SUB             SP, SP, #0x80
MOV             R0, #0
STRB            R0, [R4,#0x1C]
LDR             R0, =dword_6E2378
LDR             R0, [R0,#(dword_6E237C - 0x6E2378)]
BL              sub_4FA910
LDR             R6, =off_6CE970
LDR             R1, [R0,#0x58]
MOV             R2, #0
LDR             R0, [R6]
ADD             R0, R0, #0x24000
ADD             R0, R0, #0xED0
BL              sub_1CF2E0
MOV             R5, R0
MOV             R0, SP
BL              sub_1CF444
LDR             R1, [R5,#4]
MOV             R2, R5
MOV             R0, SP
BL              sub_1CF414
MOV             R1, R0
LDR             R0, [R6]
LDR             R2, [R5]
ADD             R0, R0, #0x1E0
BL              sub_4E1E3C
STR             R0, [R4,#0x14]
ADD             SP, SP, #0x80
POP             {R4-R6,PC}
