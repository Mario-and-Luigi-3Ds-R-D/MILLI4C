PUSH            {R0-R11,LR}
SUB             SP, SP, #0x14; int
MOV             R4, R3
MOV             R7, R0
MOV             R8, R1
LDR             R11, [SP,#0x48+arg_0]
BL              sub_5864A4
LDR             R0, [R0]
CMP             R0, #0
MOVEQ           R10, #0xCB
MOVNE           R10, #0x118
MOV             R0, #0
CMP             R4, R11
STR             R0, [SP,#0x48+var_3C]
RSBLT           R0, R0, R0,LSL#4
STRLT           R0, [SP,#0x48+var_38]
BGE             loc_1ED304
ADD             R9, R4, R4,LSL#1
LDR             R0, [R8,R9,LSL#2]
ADD             R5, R0, R10
CMN             R5, #1
BEQ             loc_1ED2F8
LDR             R0, [R7,#0x10]
MOV             R1, R5
LDR             R2, [R0,#0x40]
LDR             R0, [SP,#0x48+var_38]
ADD             R0, R2, R0,LSL#2
BL              sub_158E18
MOVS            R6, R0
NOP
BEQ             loc_1ED2CC
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #0
BEQ             loc_1ED2A0
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, R1,LSL#2
LDR             R0, [R0,#8]
CMP             R0, #0
BNE             loc_1ED2CC
MOV             R0, #0
STMEA           SP, {R0,R6}
STR             R0, [SP,#0x48+var_40]; float
LDR             R3, =dword_6ED9B8; int
LDR             R0, [R7,#0x10]; int
LDR             R1, [SP,#0x48+var_3C]; int
MOV             R2, R5; int
BL              sub_532794
CMP             R0, #0
NOP
BEQ             loc_1ED304
ADD             R1, R8, R9,LSL#2
LDR             R3, [R7,#0x78]
LDR             R12, [R1,#8]
MOV             R2, #8
MOV             R5, #0xC
ADD             R2, R2, R12,LSL#6
STR             R0, [R3,R2]
LDR             R0, [R1,#8]
LDR             R1, [R7,#0x78]
ADD             R0, R5, R0,LSL#6
STR             R6, [R1,R0]
ADD             R4, R4, #1
CMP             R4, R11
BLT             loc_1ED248
LDR             R0, [SP,#0x48+arg_4]
CMP             R0, #0
STRNE           R4, [R0]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
