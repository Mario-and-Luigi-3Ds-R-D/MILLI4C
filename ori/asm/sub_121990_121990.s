PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0x14
LDRB            R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_121A50
LDRSB           R0, [R5,#0xD]
MOV             R4, R5
CMP             R0, #0
CMPNE           R0, #1
BNE             loc_121A3C
CMP             R0, #0
CMPNE           R0, #1
MOV             R6, #0
BNE             loc_121A20
LDR             R0, [R5]
CMP             R0, #0
LDRNE           R0, [R4,#8]
CMPNE           R0, #0
BEQ             loc_121A20
MOV             R0, #1
STRH            R6, [SP,#0x28+var_26]
STRH            R0, [SP,#0x28+var_28]
LDRSB           R7, [R4,#0xD]
BL              sub_129050
MOV             R2, SP
MOV             R1, R7
BL              sub_1331BC
BICS            R0, R6, R0
STRBEQ          R6, [R4,#0xE]
LDRB            R0, [R4,#0xE]
CMP             R0, #0
BNE             loc_121A20
LDR             R0, =unk_710168
LDRB            R1, [R0,#(byte_710181 - 0x710168)]
STRB            R1, [R4,#0xF]
LDRSB           R6, [R4,#0xD]
BL              sub_129050
MOV             R2, R6
MOV             R1, #0
BL              sub_12905C
MOV             R0, #0xFF
STRB            R0, [R4,#0xD]
MOV             R0, #0
STR             R0, [R5]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
STRB            R0, [R5,#0xC]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
