PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R5, R2
MOV             R7, R0
ADD             R0, R2, R5,LSL#1
LDR             R10, [SP,#0x38+arg_0]
MOV             R9, R3
CMP             R2, R9
ADD             R4, R1, R0,LSL#5
BCS             loc_2AD760
ADD             R0, R7, #0x13C00
ADD             R0, R0, #0x5C ; '\'
MOV             R11, #0
STR             R0, [SP,#0x38+var_2C]
LDR             R0, [R4,#0x5C]
CMP             R0, #0
BEQ             loc_2AD770
ADD             R5, R5, #1
CMP             R9, R5
ADD             R4, R4, #0x60 ; '`'
BHI             loc_2AD744
CMP             R10, #0
STRNE           R5, [R10]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
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
B               def_2AD794; jumptable 002AD794 default case, cases 0,1
DCD def_2AD794; jump table for switch statement
MOV             R8, #1; jumptable 002AD794 case 2
B               loc_2AD7D8
MOV             R8, #2; jumptable 002AD794 case 3
B               loc_2AD7D8
MOV             R8, #3; jumptable 002AD794 case 4
B               loc_2AD7D8
MOV             R8, #4; jumptable 002AD794 case 5
B               loc_2AD7D8
MOV             R8, #0; jumptable 002AD794 default case, cases 0,1
LDR             R0, [R7,#4]
LDR             R1, [R4,#0x38]
RSB             R2, R8, R8,LSL#4
LDR             R0, [R0,#0x40]
LDR             R1, [R1]
ADD             R0, R0, R2,LSL#2
BL              sub_158E18
MOV             R6, R0
ADD             R0, SP, #0x38+var_34
STR             R11, [SP,#0x38+var_38]; int
STM             R0, {R6,R11}
LDR             R1, [R4,#0x38]
LDR             R0, [R7,#4]; int
LDR             R3, [SP,#0x38+var_2C]; int
LDR             R2, [R1]; int
MOV             R1, R8; int
BL              sub_532794
CMP             R0, #0
STMNE           R4, {R0,R6}
BEQ             loc_2AD760
B               loc_2AD750
