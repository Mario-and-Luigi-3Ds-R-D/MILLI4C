PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0x94; float
MOV             R8, R1
LDRB            R0, [R0,#0x284]
CMP             R0, #1
MOVNE           R0, #1
BNE             loc_1CF254
MOV             R7, #1
MOV             R4, #0
MOV             R9, R4
MOV             R11, R7
MOV             R10, #2
ADD             R5, R6, R4,LSL#5
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_1CF23C
LDRB            R0, [R5,#0x1C]
CMP             R0, #0
BEQ             loc_1CF17C
CMP             R0, #1
BEQ             loc_1CF1FC
B               loc_1CF23C
STR             R9, [SP,#0xB8+var_B0]
STR             R9, [SP,#0xB8+var_AC]
STRH            R9, [SP,#0xB8+var_A8]
LDR             R1, [R5,#8]
ADD             R3, SP, #0xB8+var_A8
CMP             R1, #0
MOVEQ           R0, R9
BEQ             loc_1CF1B8
LDRB            R2, [R5,#0xC]
MOV             R0, R1
CMP             R2, #1
BNE             loc_1CF1B8
MOV             R2, #0
MOV             R0, R3
BL              sub_10D1D0
LDR             R1, [R6,#0x280]
MOV             R2, R0; int
MOV             R3, #0; int
STMEA           SP, {R1,R9}
ADD             R1, SP, #0xB8+var_B0; int
MOV             R0, R8; int
BL              sub_4E2084
CMP             R0, #0
NOP
BEQ             loc_1CF1F4
LDR             R0, [SP,#0xB8+var_AC]
STR             R0, [R5,#0x14]
LDR             R0, [SP,#0xB8+var_B0]
STRB            R11, [R5,#0x1C]
STR             R0, [R5,#0x18]
MOV             R7, #0
B               loc_1CF23C
LDR             R1, [R5,#0x14]
MOV             R0, R8
BL              sub_4E1D08
CMP             R0, #0
NOP
BEQ             loc_1CF1F4
LDR             R0, [R5,#0x14]
MOV             R1, #1
BL              sub_10D594
STR             R0, [R5,#0x10]
LDR             R1, [R5,#0x14]
MOV             R0, R8
BL              sub_4E2370
LDR             R0, [R5,#0x10]
STR             R0, [R5]
STRB            R10, [R5,#0x1C]
ADD             R4, R4, #1
CMP             R4, #0x14
BLT             loc_1CF154
CMP             R7, #0
MOV             R0, R7
STRBNE          R10, [R6,#0x284]
ADD             SP, SP, #0x94
POP             {R4-R11,PC}
