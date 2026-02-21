PUSH            {R4-R6,LR}
CMP             R1, #0xA; switch 10 cases
MOV             R4, R0
MOV             R5, R1
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1EB570; jumptable 001EB570 default case
DCD loc_1EB5C4; jump table for switch statement
NOP; jumptable 001EB570 case 4
BL              sub_1ED72C
NOP
NOP
B               loc_1EB5C4; jumptable 001EB570 cases 0-3,5-9
LDR             R0, [R4]; jumptable 001EB570 default case
LDR             R2, [R0,#0xC8]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x14C]; jumptable 001EB570 cases 0-3,5-9
MOV             R1, #0x1E00
AND             R1, R1, R5,LSL#9
BIC             R0, R0, #0x1E00
ORR             R0, R0, R1
STR             R0, [R4,#0x14C]
POP             {R4-R6,PC}
