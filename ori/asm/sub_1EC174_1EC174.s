PUSH            {R0-R11,LR}
SUB             SP, SP, #0x14; int
MOV             R4, R3
MOV             R6, R0
MOV             R7, R1
LDR             R9, [SP,#0x48+arg_0]
CMP             R3, R9
BGE             loc_1EC2EC
ADD             R0, R4, R4,LSL#1
LDR             R1, =0xFFFFF
LDR             R5, [R7,R0,LSL#2]
CMP             R5, R1
BEQ             loc_1EC2E0
ADD             R8, R7, R0,LSL#2
LDR             R0, [R6,#0x54]
LDR             R10, [R8,#8]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
STR             R0, [SP,#0x48+var_3C]
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #0
BEQ             loc_1EC1EC
ADD             R1, R4, R4,LSL#3
ADD             R1, R0, R1,LSL#2
LDR             R0, [R1,#8]
CMP             R0, #0
LDRNE           R5, [R1,#0xC]
BNE             loc_1EC2B8
LDR             R0, [R6,#0x10]
AND             R1, R5, #0xFF000
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1EC204; jumptable 001EC204 default case, cases 0,1
DCD def_1EC204; jump table for switch statement
MOV             R11, #1; jumptable 001EC204 case 2
B               loc_1EC248
MOV             R11, #2; jumptable 001EC204 case 3
B               loc_1EC248
MOV             R11, #3; jumptable 001EC204 case 4
B               loc_1EC248
MOV             R11, #4; jumptable 001EC204 case 5
B               loc_1EC248
MOV             R11, #0; jumptable 001EC204 default case, cases 0,1
LDR             R0, [R6,#0x10]
LDR             R1, [SP,#0x48+var_3C]
RSB             R2, R11, R11,LSL#4
LDR             R0, [R0,#0x40]
LDR             R1, [R1,#4]
ADD             R0, R0, R2,LSL#2
BL              sub_158E18
MOV             R5, R0
SUB             R0, R10, #8
CMP             R0, #2
BCC             loc_1EC284
LDR             R0, [R8,#4]
CMP             R0, #0x10000
MOVEQ           R0, #0x7F
BEQ             loc_1EC288
LDR             R0, =0x800007
MOV             R1, #0
STR             R1, [SP,#0x48+var_40]; float
STMEA           SP, {R0,R5}
LDR             R0, [SP,#0x48+var_3C]
LDR             R3, =dword_6ED9B8; int
MOV             R1, R11; int
LDR             R2, [R0,#4]; int
LDR             R0, [R6,#0x10]; int
BL              sub_532794
CMP             R0, #0
NOP
BEQ             loc_1EC2EC
LDR             R1, [R8,#8]
ADD             R2, R1, R1,LSL#1
LDR             R1, [SP,#0x48+arg_4]
ADD             R1, R1, R2,LSL#5
STR             R0, [R1,#8]
LDR             R0, [R8,#8]
ADD             R1, R0, R0,LSL#1
LDR             R0, [SP,#0x48+arg_4]
ADD             R0, R0, R1,LSL#5
STR             R5, [R0,#0xC]
ADD             R4, R4, #1
CMP             R4, R9
BLT             loc_1EC194
LDR             R0, [SP,#0x48+arg_8]
CMP             R0, #0
STRNE           R4, [R0]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
