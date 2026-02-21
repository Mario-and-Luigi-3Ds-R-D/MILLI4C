PUSH            {R4-R11,LR}
MOV             R6, R3
CMP             R2, R6
SUB             SP, SP, #0xC; int
MOV             R8, R0
LDRLT           R11, =0xFFFFF
MOV             R7, R1
MOV             R4, R2
BGE             loc_1F0560
ADD             R0, R4, R4,LSL#3
ADD             R5, R7, R0,LSL#2
LDR             R9, [R5,#0x20]
CMP             R9, R11
LDRNE           R0, [R5,#0x10]
CMPNE           R0, #0
BEQ             loc_1F0554
LDR             R0, [R8,#0x54]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R9
BLX             R2
MOV             R10, R0
LDR             R0, [R8,#0x10]
AND             R1, R9, #0xFF000
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1F04E8; jumptable 001F04E8 default case, cases 0,1
DCD def_1F04E8; jump table for switch statement
MOV             R1, #0; jumptable 001F04E8 default case, cases 0,1
B               loc_1F052C
MOV             R1, #1; jumptable 001F04E8 case 2
B               loc_1F052C
MOV             R1, #2; jumptable 001F04E8 case 3
B               loc_1F052C
MOV             R1, #3; jumptable 001F04E8 case 4
B               loc_1F052C
MOV             R1, #4; jumptable 001F04E8 case 5
LDR             R0, [R5,#0x14]
MOV             R2, #0
STMEA           SP, {R0,R2}
LDR             R3, [R5,#0x10]; int
LDR             R2, [R10,#8]; int
LDR             R0, [R8,#0x10]; int
BL              sub_532898
CMP             R0, #0
NOP
BEQ             loc_1F0560
ADD             R4, R4, #1
CMP             R6, R4
BGT             loc_1F049C
LDR             R0, [SP,#0x30+arg_0]
CMP             R0, #0
STRNE           R4, [R0]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
