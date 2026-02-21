PUSH            {R4-R11,LR}
MOV             R5, R3
SUB             SP, SP, #0x14; int
MOV             R9, R0
ADD             R0, R3, R5,LSL#3
LDRD            R10, R11, [SP,#0x38+arg_0]
ADD             R6, R2, R0,LSL#2
ADD             R0, R3, R5,LSL#1
CMP             R3, R10
ADD             R4, R1, R0,LSL#5
ADDCC           R0, R9, #0x13C00
ADDCC           R0, R0, #0x5C ; '\'
STRCC           R0, [SP,#0x38+var_2C]
BCS             loc_2B0068
LDR             R0, [R4,#0x5C]
CMP             R0, #0
BNE             loc_2B0054
LDR             R0, [R6,#4]
CMP             R0, #0
BEQ             loc_2AFF94
LDR             R1, [R6]
CMP             R1, #0
BEQ             loc_2AFF94
MOV             R3, #0
LDR             R1, [SP,#0x38+var_2C]
MOV             R7, R0
MOV             R2, R3
BL              sub_1143B4
LDM             R6, {R1,R2}
MOV             R8, R0
BL              sub_1103A4
NOP
NOP
B               loc_2B004C
LDR             R0, [R4,#0x34]
AND             R1, R0, #0xFF000
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0x10]
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2AFFB8; jumptable 002AFFB8 default case, cases 0,1
DCD def_2AFFB8; jump table for switch statement
MOV             R8, #1; jumptable 002AFFB8 case 2
B               loc_2AFFFC
MOV             R8, #2; jumptable 002AFFB8 case 3
B               loc_2AFFFC
MOV             R8, #3; jumptable 002AFFB8 case 4
B               loc_2AFFFC
MOV             R8, #4; jumptable 002AFFB8 case 5
B               loc_2AFFFC
MOV             R8, #0; jumptable 002AFFB8 default case, cases 0,1
LDR             R0, [R9,#4]
LDR             R1, [R4,#0x38]
RSB             R2, R8, R8,LSL#4
LDR             R0, [R0,#0x40]
LDR             R1, [R1]
ADD             R0, R0, R2,LSL#2
BL              sub_158E18
MOV             R7, R0
MOV             R0, #0
STMEA           SP, {R0,R7}
STR             R0, [SP,#0x38+var_30]; float
LDR             R1, [R4,#0x38]
LDR             R0, [R9,#4]; int
LDR             R3, [SP,#0x38+var_2C]; int
LDR             R2, [R1]; int
MOV             R1, R8; int
BL              sub_532794
MOVS            R8, R0
NOP
BEQ             loc_2B0068
STR             R7, [R4,#4]
STR             R8, [R4]
ADD             R5, R5, #1
CMP             R5, R10
ADD             R4, R4, #0x60 ; '`'
ADD             R6, R6, #0x24 ; '$'
BCC             loc_2AFF44
CMP             R11, #0
STRNE           R5, [R11]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
