PUSH            {R4-R7,LR}
MOV             R6, R0
SUB             SP, SP, #0x1C
LDR             R0, =off_6CDF98
LDR             R3, [R6,#4]
ADD             R1, SP, #0x30+var_20
MOV             R2, SP
LDR             R0, [R0]
LDR             R0, [R0,#0xC4]
LDR             R12, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x30+var_20]
STR             R12, [SP,#0x30+var_24]
LDR             R12, [R0,#4]
STR             R12, [SP,#0x30+var_1C]
STR             R1, [R12]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x30+var_24]
LDR             R0, [R0,#0x584]
LDR             R1, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x30+var_2C]
STR             R1, [SP,#0x30+var_30]
ADD             R1, R2, #4
LDR             R2, [R0,#4]
STR             R2, [SP,#0x30+var_28]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x30+var_30]
LDR             R1, [SP,#0x30+var_28]
CMP             R0, R3
MOVEQ           R4, #1
MOVNE           R4, #0
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_26B174
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_26B174
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x30+var_2C]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x30+var_1C]
ADD             R1, SP, #0x30+var_20
CMP             R0, R1
BNE             loc_26B1AC
LDR             R0, [SP,#0x30+var_24]
CMP             R0, #0
BEQ             loc_26B1AC
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_20]
CMP             R4, #0
STR             R1, [R0,#4]
STR             R0, [R1]
BEQ             loc_26B20C
LDR             R0, [R6,#0x104]
LDR             R4, [R6,#0x100]
CMP             R0, R4
MOVNE           R7, #2
BEQ             loc_26B20C
LDR             R5, [R4]
LDRB            R0, [R5,#0x3F4]
CMP             R0, #5
BEQ             loc_26B1FC
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x26 ; '&'
MOV             R0, R5
BL              sub_14C548
STRB            R7, [R5,#0x3F4]
LDR             R0, [R6,#0x104]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26B1D4
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
