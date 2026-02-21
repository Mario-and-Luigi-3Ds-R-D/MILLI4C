PUSH            {R0-R11,LR}
SUB             SP, SP, #0x14; int
MOV             R4, R3
MOV             R6, R1
MOV             R8, R0
ADD             R0, SP, #0x48+arg_0
LDM             R0, {R9,R11}
CMP             R3, R9
BGE             loc_1EC85C
ADD             R7, R4, R4,LSL#1
LDR             R0, =0xFFFFF
LDR             R5, [R6,R7,LSL#2]
CMP             R5, R0
BEQ             loc_1EC850
LDR             R0, [R8,#0x54]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
MOV             R10, R0
LDR             R0, [R0,#0x10]
CMN             R0, #1
MOVEQ           R5, #0
MOVEQ           R0, R5
BEQ             loc_1EC82C
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #0
BEQ             loc_1EC780
ADD             R1, R4, R4,LSL#3
ADD             R1, R0, R1,LSL#2
LDR             R0, [R1,#0x18]
CMP             R0, #0
LDRNE           R5, [R1,#0x1C]
BNE             loc_1EC82C
LDR             R0, [R8,#0x10]
AND             R1, R5, #0xFF000
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1EC798; jumptable 001EC798 default case, cases 0,1
DCD def_1EC798; jump table for switch statement
MOV             R0, #1; jumptable 001EC798 case 2
B               loc_1EC7DC
MOV             R0, #2; jumptable 001EC798 case 3
B               loc_1EC7DC
MOV             R0, #3; jumptable 001EC798 case 4
B               loc_1EC7DC
MOV             R0, #4; jumptable 001EC798 case 5
B               loc_1EC7DC
MOV             R0, #0; jumptable 001EC798 default case, cases 0,1
STR             R0, [SP,#0x48+var_3C]
LDR             R1, [R8,#0x10]
LDR             R2, [R10,#0x10]
RSB             R0, R0, R0,LSL#4
LDR             R1, [R1,#0x40]
ADD             R0, R1, R0,LSL#2
MOV             R1, R2
BL              sub_158E18
MOV             R5, R0
MOV             R1, #0
STMEA           SP, {R1,R5}
STR             R1, [SP,#0x48+var_40]; float
LDR             R2, [R10,#0x10]; int
LDR             R3, =dword_6ED9B8; int
LDR             R0, [R8,#0x10]; int
LDR             R1, [SP,#0x48+var_3C]; int
BL              sub_532794
CMP             R0, #0
NOP
BEQ             loc_1EC85C
ADD             R1, R6, R7,LSL#2
LDR             R2, [R1,#8]
ADD             R2, R2, R2,LSL#1
ADD             R2, R11, R2,LSL#5
STR             R0, [R2,#0x18]
LDR             R0, [R1,#8]
ADD             R0, R0, R0,LSL#1
ADD             R0, R11, R0,LSL#5
STR             R5, [R0,#0x1C]
ADD             R4, R4, #1
CMP             R4, R9
BLT             loc_1EC71C
LDR             R0, [SP,#0x48+arg_8]
CMP             R0, #0
STRNE           R4, [R0]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R11,PC}
