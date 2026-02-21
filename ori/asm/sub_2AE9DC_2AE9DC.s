PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0x4C
ADD             R10, R0, R1,LSL#2
ADD             R1, R1, R6
LDR             R0, =0x13C70
ADD             R7, R1, #0x14000
ADD             R1, R10, #0x13C00
ADD             R1, R1, #0x9C
LDR             R0, [R0,R10]
STR             R1, [SP,#0x70+var_38]
ADD             R1, R10, #0x13C00
ADD             R11, R10, #0x13C00
ADD             R1, R1, #0xA4
CMP             R0, #0
ADD             R11, R11, #0x94
STR             R1, [SP,#0x70+var_3C]
BEQ             loc_2AEAA0
LDR             R1, [R0,#0xC]
MOV             R4, #0
MOV             R5, R4
ADD             R9, R0, R1
ADD             R0, R6, #0x13C00
LDR             R8, [R9],#4
ADD             R0, R0, #0x5C ; '\'
STR             R0, [SP,#0x70+var_58]
CMP             R8, #0
MOVEQ           R0, #0
STREQ           R0, [SP,#0x70+var_54]
MOVNE           R0, R9
MOVNE           R1, R8
BEQ             loc_2AEACC
LDR             R2, [R0],#4
TST             R2, #0xFF000
ADDNE           R4, R4, #1
ADDEQ           R5, R5, #1
SUBS            R1, R1, #1
BNE             loc_2AEA5C
ADDS            R0, R4, R5
STR             R0, [SP,#0x70+var_54]
BEQ             loc_2AEACC
MOV             R3, #0
LDR             R1, [SP,#0x70+var_58]
MOV             R0, R0,LSL#1
MOV             R2, R3
BL              sub_1143B4
NOP
NOP
B               loc_2AEAD0
MOV             R0, #0
STR             R0, [R11]
STRB            R0, [R7,#0x287]
LDR             R1, [SP,#0x70+var_38]
STR             R0, [R1]
STRB            R0, [R7,#0x289]
LDR             R1, [SP,#0x70+var_3C]
STR             R0, [R1]
STRB            R0, [R7,#0x28B]
ADD             SP, SP, #0x4C ; 'L'
POP             {R4-R11,PC}
MOV             R0, #0
ADD             R10, R10, #0x13C00
ADD             R10, R10, #0x8C
STR             R0, [SP,#0x70+var_5C]
STR             R0, [R10]
CMP             R4, #0
MOVEQ           R0, #0
ADD             R10, R6, #0x14000
STREQ           R0, [R11]
BEQ             loc_2AEB74
ADD             R0, R4, R4,LSL#1
MOV             R1, #8
ADD             R0, R1, R0,LSL#5
MOV             R3, #0
LDR             R1, [SP,#0x70+var_58]
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
MOVEQ           R3, #0
BEQ             loc_2AEB40
ADD             R0, R0, #8
SUB             R12, R0, #8
MOV             R1, #0x60 ; '`'
STM             R12, {R1,R4}
MOV             R2, R1
LDR             R1, =sub_1E4DE4
MOV             R3, R4
BLX             sub_1002F4
MOV             R3, R0
LDR             R0, =0x13C84
STR             R3, [R11]
LDRB            R1, [R10,#0x285]
LDR             R0, [R0,R6]
STR             R8, [SP,#0x70+var_68]
STRD            R0, R1, [SP,#0x70+var_64]
STMEA           SP, {R4,R9}
LDR             R0, [R6]
LDR             R1, [SP,#0x70+var_5C]
LDR             R2, [SP,#0x70+var_54]
LDR             R12, [R0,#0x140]
MOV             R0, R6
BLX             R12
CMP             R5, #0
STRB            R4, [R7,#0x287]
BEQ             loc_2AEBF4
MOV             R3, #0
LDR             R1, [SP,#0x70+var_58]
MOV             R0, R5,LSL#6
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_2AEBB0
LDR             R1, =sub_232E2C
MOV             R3, R5
MOV             R2, #0x40 ; '@'
BLX             sub_1002F4
LDR             R1, [SP,#0x70+var_38]
LDR             R2, =0x13C88
MOV             R3, R0
STR             R0, [R1]
LDRB            R1, [R10,#0x286]
LDR             R2, [R2,R6]
STR             R8, [SP,#0x70+var_68]
STR             R1, [SP,#0x70+var_60]
STR             R2, [SP,#0x70+var_64]
STMEA           SP, {R5,R9}
LDR             R1, [R6]
LDR             R2, [SP,#0x70+var_54]
MOV             R0, R6
LDR             R12, [R1,#0x144]
LDR             R1, [SP,#0x70+var_5C]
BLX             R12
B               loc_2AEC00
LDR             R1, [SP,#0x70+var_38]
MOV             R0, #0
STR             R0, [R1]
ADD             R0, R9, R8,LSL#2
STRB            R5, [R7,#0x289]
LDRH            R1, [R0],#2
STRB            R1, [R7,#0x28B]
LDR             R1, [SP,#0x70+var_3C]
STR             R0, [R1]
ADD             SP, SP, #0x4C ; 'L'
POP             {R4-R11,PC}
