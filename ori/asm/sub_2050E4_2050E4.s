PUSH            {R4-R8,LR}
MOV             R6, R0
SUB             SP, SP, #0x10
LDR             R8, =off_6CE970
MOV             R5, R1
MOV             R7, R2
MOV             R4, #0
LDR             R0, [R8]
BL              sub_5EE554
CMP             R0, #9
BEQ             loc_2051A4; jumptable 00205118 cases 1-5,8
BGT             loc_205144
CMP             R0, #9; switch 9 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_205118; jumptable 00205118 default case, cases 0,6,7
DCD def_205118; jump table for switch statement
CMP             R0, #0xD
BEQ             loc_2051A4; jumptable 00205118 cases 1-5,8
BGT             loc_205174
CMP             R0, #0xA
MOVEQ           R4, #5
BEQ             def_205118; jumptable 00205118 default case, cases 0,6,7
CMP             R0, #0xB
MOVEQ           R4, #0xC
BEQ             def_205118; jumptable 00205118 default case, cases 0,6,7
CMP             R0, #0xC
BEQ             loc_2051A4; jumptable 00205118 cases 1-5,8
B               def_205118; jumptable 00205118 default case, cases 0,6,7
CMP             R0, #0xE
CMPNE           R0, #0xF
BEQ             loc_2051A4; jumptable 00205118 cases 1-5,8
CMP             R0, #0x80
BNE             def_205118; jumptable 00205118 default case, cases 0,6,7
LDR             R0, [R8]
BL              sub_52FA94
LDRH            R0, [R0,#0x10]
CMP             R0, R5
MOVNE           R4, #4
MOVEQ           R4, #2
B               def_205118; jumptable 00205118 default case, cases 0,6,7
MOV             R4, #3; jumptable 00205118 cases 1-5,8
MOV             R2, #1; jumptable 00205118 default case, cases 0,6,7
MOV             R1, #0
MOV             R0, #3
STMEA           SP, {R0-R2}
MOV             R3, R4
MOV             R2, R7
MOV             R1, R5
MOV             R0, R6
BL              sub_20BE40
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
