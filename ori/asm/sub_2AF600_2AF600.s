PUSH            {R0-R11,LR}
SUB             SP, SP, #0x14; int
MOV             R5, R3
MOV             R8, R0
ADD             R0, SP, #0x48+arg_0
ADD             R4, R2, R5,LSL#6
LDM             R0, {R7,R11}
CMP             R3, R7
BCS             loc_2AF6AC
LDR             R0, [SP,#0x48+var_30]
RSB             R10, R0, R0,LSL#4
ADD             R0, R8, #0x13C00
ADD             R0, R0, #0x5C ; '\'
STR             R0, [SP,#0x48+var_3C]
LDR             R0, [R4,#0x3C]
CMP             R0, #0
BNE             loc_2AF69C
LDR             R6, [R4,#0x10]
CMN             R6, #1
BEQ             loc_2AF69C
LDR             R0, [R8,#4]
MOV             R1, R6
LDR             R0, [R0,#0x40]
ADD             R0, R0, R10,LSL#2
BL              sub_158E18
MOV             R9, R0
MOV             R0, #0
MOV             R1, #0x7F
STR             R0, [SP,#0x48+var_40]; float
STMEA           SP, {R1,R9}
LDR             R0, [R8,#4]; int
LDR             R1, [SP,#0x48+var_30]; int
LDR             R3, [SP,#0x48+var_3C]; int
MOV             R2, R6; int
BL              sub_532794
CMP             R0, #0
STMNE           R4, {R0,R9}
STRNE           R0, [R4,#0x38]
BEQ             loc_2AF6AC
ADD             R5, R5, #1
CMP             R7, R5
ADD             R4, R4, #0x40 ; '@'
BHI             loc_2AF638
CMP             R11, #0
STRNE           R5, [R11]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
