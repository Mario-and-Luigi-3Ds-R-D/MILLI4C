PUSH            {R4-R6,LR}
MOV             R4, R0
LDRSB           R0, [R0,#0xD]
SUB             SP, SP, #0x18
MOV             R5, R1
CMP             R0, #0
CMPNE           R0, #1
BNE             loc_121980
LDR             R0, [R4]
CMP             R0, #0
LDRNE           R0, [R4,#8]
CMPNE           R0, #0
BEQ             loc_121980
MOV             R0, #1
STRH            R5, [SP,#0x28+var_26]
STRH            R0, [SP,#0x28+var_28]
LDRSB           R6, [R4,#0xD]
BL              sub_129050
MOV             R2, SP
MOV             R1, R6
BL              sub_1331BC
BICS            R1, R5, R0
STRBEQ          R5, [R4,#0xE]
LDRB            R1, [R4,#0xE]
CMP             R1, #0
BNE             loc_121978
LDR             R1, =unk_710168
LDRB            R1, [R1,#(byte_710181 - 0x710168)]
STRB            R1, [R4,#0xF]
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
ADD             SP, SP, #0x18
MOV             R0, #0
POP             {R4-R6,PC}
