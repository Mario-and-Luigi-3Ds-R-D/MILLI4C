PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R1, =off_6CE970
MOV             R6, R0
LDR             R0, [R2,#8]
MOV             R5, R2
LDR             R1, [R1]
AND             R2, R0, #0xFF
CMP             R2, #5; switch 5 cases
MOV             R0, #0
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_205670; jumptable 00205670 default case
DCD loc_20568C; jump table for switch statement
LDR             R0, =0x10C4B4; jumptable 00205670 case 0
ADD             R0, R0, R1
BL              sub_5F1964
NOP
NOP
B               def_205670; jumptable 00205670 default case
LDR             R0, =0x10C4E8; jumptable 00205670 case 1
ADD             R0, R0, R1
BL              sub_5F1964
NOP
NOP
B               def_205670; jumptable 00205670 default case
LDR             R0, =0x10C51C; jumptable 00205670 case 2
ADD             R0, R0, R1
BL              sub_5F1964
CMP             R0, #0; jumptable 00205670 default case
BEQ             loc_2056F0; jumptable 00205670 cases 3,4
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R5
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
MOV             R0, #0; jumptable 00205670 cases 3,4
POP             {R4-R6,PC}
