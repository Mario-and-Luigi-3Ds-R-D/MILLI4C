PUSH            {R4-R8,LR}
MOV             R6, #1
LDRB            R1, [R0,#0x84]
LDR             R7, [SP,#0x18+arg_0]
ADD             R1, R0, R1,LSL#4
ADD             R4, R1, #4
SUB             R1, R2, #0x100
CMP             R1, #6; switch 6 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2A0DB4; jumptable 002A0DB4 default case
DCD loc_2A0DDC; jump table for switch statement
MOV             R6, #0x80; jumptable 002A0DB4 case 1
B               def_2A0DB4; jumptable 002A0DB4 default case
MOV             R6, #4; jumptable 002A0DB4 cases 0,2
B               def_2A0DB4; jumptable 002A0DB4 default case
LDR             R1, =byte_6CEDC8; jumptable 002A0DB4 case 3
LDRB            R6, [R1]
B               def_2A0DB4; jumptable 002A0DB4 default case
MOV             R6, #0x10; jumptable 002A0DB4 cases 4,5
LDRB            R1, [R0,#0x84]; jumptable 002A0DB4 default case
SUB             R2, R6, #1
TST             R6, R2
ADD             R0, R0, R1,LSL#4
LDR             R5, [R0,#4]
BEQ             loc_2A0E44
MOV             R1, R6
MOV             R0, R5
BL              sub_127F6C
CMP             R1, #0
ADDNE           R0, R0, #1
MULNE           R5, R0, R6
STR             R5, [R4]
LDR             R1, [R4,#0xC]
LDR             R0, [R4]
ADD             R1, R1, #1
ADD             R2, R0, R7
STR             R1, [R4,#0xC]
STR             R2, [R4]
POP             {R4-R8,PC}
ADD             R1, R5, R2
BIC             R0, R1, R2
STR             R0, [R4]
B               loc_2A0E28
