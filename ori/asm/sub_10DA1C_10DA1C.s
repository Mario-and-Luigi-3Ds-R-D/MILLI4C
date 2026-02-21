PUSH            {R4-R8,LR}
MOV             R5, R3
MOV             R4, R0
LDR             R3, [R1,#4]
MOV             R6, R2
MOV             R2, #0
ANDS            R12, R3, #0xFF
STRB            R12, [R4,#8]
STR             R2, [R4,#0x29C]
ADD             R0, R1, #8
STR             R2, [R4,#0x2A0]
BEQ             loc_10DA68
LDR             R3, [R0],#4
ADD             R7, R4, R2,LSL#2
SUBS            R12, R12, #1
ADD             R3, R3, R1
ADD             R2, R2, #1
STR             R3, [R7,#0xC]
BNE             loc_10DA4C
LDR             R2, [R0,#8]
ADD             R2, R2, R0
STR             R2, [R4,#0x8C]
LDR             R2, [R0,#0xC]
STR             R2, [R4,#0x90]
LDR             R1, [R0,#0x14]
LDR             R2, [R0,#0x10]
CMP             R1, #0
ADD             R0, R0, R2
MOVNE           R2, #0
STR             R1, [R4,#0x294]
BEQ             loc_10DAB0
LDR             R3, [R0],#8
ADD             R12, R4, R2,LSL#2
SUBS            R1, R1, #1
ADD             R2, R2, #1
STR             R3, [R12,#0x94]
BNE             loc_10DA98
LDRB            R7, [R4,#0x298]
MOV             R0, R4
BL              sub_11843C
CMP             R5, #0
STR             R5, [R4,#4]
MOV             R0, R4
MOVGE           R1, #3
STR             R6, [R4]
STRBGE          R1, [R0,#0x298]
LDR             R3, [R4,#4]
MOV             R5, R4
MOV             R2, R6
ADD             R1, R4, #0x2A4
BL              sub_117964
SUB             R0, R0, R5
SUB             R0, R0, #0x2A4
MOV             R0, R0,ASR#2
STR             R0, [R5,#0x364]
LDR             R0, [R4,#4]
CMP             R0, #0
STRBLT          R7, [R4,#0x298]
POP             {R4-R8,PC}
