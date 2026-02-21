PUSH            {R0-R11,LR}
SUB             SP, SP, #0x14; int
MOV             R4, R2
MOV             R5, R3
MOV             R10, R0
LDR             R7, [SP,#0x48+arg_0]
BL              sub_5864A4
LDR             R0, [R0]
ADD             R4, R4, R5,LSL#6
CMP             R0, #0
MOVEQ           R9, #0xCB
MOVNE           R9, #0x118
CMP             R5, R7
BCS             loc_2AF5EC
LDR             R0, [SP,#0x48+var_30]
RSB             R11, R0, R0,LSL#4
ADD             R0, R10, #0x13C00
ADD             R0, R0, #0x5C ; '\'
STR             R0, [SP,#0x48+var_3C]
LDR             R0, [R4,#0x3C]
CMP             R0, #0
BNE             loc_2AF5DC
LDR             R0, [R4,#0x10]
ADD             R6, R0, R9
CMN             R6, #1
BEQ             loc_2AF5DC
LDR             R0, [R10,#4]
MOV             R1, R6
LDR             R0, [R0,#0x40]
ADD             R0, R0, R11,LSL#2
BL              sub_158E18
MOVS            R8, R0
NOP
BEQ             loc_2AF5D4
MOV             R0, #0
MOV             R1, #0x7F
STR             R0, [SP,#0x48+var_40]; float
STMEA           SP, {R1,R8}
LDR             R0, [R10,#4]; int
LDR             R1, [SP,#0x48+var_30]; int
LDR             R3, [SP,#0x48+var_3C]; int
MOV             R2, R6; int
BL              sub_532794
CMP             R0, #0
NOP
BEQ             loc_2AF5EC
ADD             R1, R4, #8
STM             R1, {R0,R8}
ADD             R5, R5, #1
CMP             R5, R7
ADD             R4, R4, #0x40 ; '@'
BCC             loc_2AF568
LDR             R0, [SP,#0x48+arg_4]
CMP             R0, #0
STRNE           R5, [R0]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
