PUSH            {R4,R5,LR}
MOV             R5, R0
LDRB            R0, [R0,#0xC]
SUB             SP, SP, #0x14
MOV             R4, R1
CMP             R0, #0
BEQ             loc_12189C
LDRSB           R0, [R5,#0xD]
CMN             R0, #1
BEQ             loc_1218A8
MOV             R0, #0
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
CMP             R4, #0
CMPNE           R4, #1
BNE             loc_12189C
BL              sub_129050
MOV             R2, R4
MOV             R1, #0
BL              sub_132E40
CMP             R0, #0
NOP
BEQ             loc_1218A0
LDR             R1, [R5,#4]
MOV             R0, #2
STRH            R0, [SP,#0x20+var_20]
MOV             R1, R1,ROR#16
STR             R1, [SP,#0x20+var_18]
BL              sub_129050
MOV             R2, SP
MOV             R1, R4
BL              sub_1331BC
CMP             R0, #0
STRBNE          R4, [R5,#0xD]
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
