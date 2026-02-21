PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14; int
MOV             R6, R0
MOV             R8, R1
MOV             R11, R2
LDR             R0, [SP,#0x38+arg_0]
MOV             R4, R3
CMP             R3, R0
MOV             R0, #0
STR             R0, [SP,#0x38+var_2C]
RSBLT           R0, R0, R0,LSL#4
STRLT           R0, [SP,#0x38+var_28]
BGE             loc_1ED464
ADD             R9, R4, R4,LSL#1
LDR             R5, [R8,R9,LSL#2]
CMN             R5, #1
BEQ             loc_1ED454
CMP             R11, #0
BEQ             loc_1ED3C0
ADD             R0, R4, R4,LSL#2
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R11,R0,LSL#2]
CMP             R0, #0
BEQ             loc_1ED3C0
LDR             R0, [SP,#0x38+var_38]
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
ADD             R0, R11, R0,LSL#2
LDR             R10, [R0,#4]
MOV             R0, R10
BL              sub_1143B4
MOV             R7, R0
LDR             R0, [SP,#0x38+var_38]
MOV             R2, R10
LDR             R1, [R11,R0,LSL#2]
MOV             R0, R7
BL              sub_1103A4
NOP
NOP
B               loc_1ED408
LDR             R0, [R6,#0x10]
LDR             R1, [R0,#0x40]
LDR             R0, [SP,#0x38+var_28]
ADD             R0, R1, R0,LSL#2
MOV             R1, R5
BL              sub_158E18
MOV             R10, R0
MOV             R0, #0
STMEA           SP, {R0,R10}
STR             R0, [SP,#0x38+var_30]; float
LDR             R3, =dword_6ED9B8; int
LDR             R0, [R6,#0x10]; int
LDR             R1, [SP,#0x38+var_2C]; int
MOV             R2, R5; int
BL              sub_532794
MOVS            R7, R0
NOP
BEQ             loc_1ED464
ADD             R0, R8, R9,LSL#2
LDR             R3, [R6,#0x78]
LDR             R12, [R0,#8]
MOV             R1, #0x10
MOV             R2, #4
ADD             R1, R1, R12,LSL#6
STR             R5, [R3,R1]
LDR             R1, [R6,#0x78]
LDR             R3, [R0,#8]
STR             R7, [R1,R3,LSL#6]
LDR             R1, [R0,#8]
LDR             R3, [R6,#0x78]
ADD             R1, R2, R1,LSL#6
STR             R10, [R3,R1]
LDR             R2, [R0,#8]
LDR             R0, [R6,#0x78]
MOV             R1, #0x38 ; '8'
ADD             R1, R1, R2,LSL#6
STR             R7, [R0,R1]
LDR             R0, [SP,#0x38+arg_0]
ADD             R4, R4, #1
CMP             R4, R0
BLT             loc_1ED350
LDR             R0, [SP,#0x38+arg_4]
CMP             R0, #0
STRNE           R4, [R0]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
