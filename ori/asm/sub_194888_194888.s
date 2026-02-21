PUSH            {R4-R6,LR}
MOV             R6, #0
STR             R6, [R0,#0xB4]
MOV             R5, R0
MOV             R4, R6
STR             R6, [R0,#0xB8]
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_1948BC
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_1948A0
LDR             R0, [R5,#0xC]
CMP             R0, #0
BEQ             loc_1948EC
BL              sub_110D10
ADD             R0, R5, #0xC
NOP
BL              sub_4BE0F8
MOV             R0, #0
STR             R0, [R5,#0xC]
ADD             R0, R5, #0xC
MOV             R2, #4
MOV             R1, #0
BL              sub_110BE4
STRB            R6, [R5,#0x9E]
LDR             R0, [R5,#0x94]
CMP             R0, #0
BEQ             loc_194918
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R5,#0xA8]
CMP             R0, #0
BLNE            sub_1F6244
LDR             R0, [R5,#0xAC]
CMP             R0, #0
BLNE            sub_1E1E94
LDR             R0, [R5,#0xB0]
CMP             R0, #0
BLNE            sub_29BE24
LDR             R0, [R5,#0x1B4]
BIC             R0, R0, #3
STR             R0, [R5,#0x1B4]
ADD             R0, R5, #0xF8
POP             {R4-R6,LR}
NOP
