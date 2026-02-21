AND             R12, R1, #0xFF000
CMP             R12, #0x30000
MOV             R3, #0xFFFFFFFF
MOVEQ           R3, #0x10
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
BGT             loc_1CF340
MOV             R12, R12,LSR#12
SUB             R12, R12, #0x23 ; '#'
CMP             R12, #0xD; switch 13 cases
LDRCC           PC, [PC,R12,LSL#2]; switch jump
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
DCD loc_1CF3B0; jump table for switch statement
CMP             R12, #0x60000
MOVEQ           R3, #0x13
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
BGT             loc_1CF380
CMP             R12, #0x31000
MOVEQ           R3, #0x11
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
CMP             R12, #0x32000
MOVEQ           R3, #0x12
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
CMP             R12, #0x40000
MOVEQ           R3, #4
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
CMP             R12, #0x41000
MOVEQ           R3, #5
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
CMP             R12, #0xA1000
MOVEQ           R3, #3
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
CMP             R12, #0xC0000
MOVEQ           R3, #1
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
CMP             R12, #0xC1000
MOVEQ           R3, #0
BEQ             def_1CF304; jumptable 001CF304 default case, cases 6-8
CMP             R12, #0xC2000
MOVEQ           R3, #2
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #6; jumptable 001CF304 case 0
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #7; jumptable 001CF304 case 1
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #8; jumptable 001CF304 case 2
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #9; jumptable 001CF304 case 3
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #0xA; jumptable 001CF304 case 4
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #0xB; jumptable 001CF304 case 5
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #0xC; jumptable 001CF304 case 9
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #0xD; jumptable 001CF304 case 10
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #0xE; jumptable 001CF304 case 11
B               def_1CF304; jumptable 001CF304 default case, cases 6-8
MOV             R3, #0xF; jumptable 001CF304 case 12
CMP             R2, #0; jumptable 001CF304 default case, cases 6-8
MOVNE           R1, R1,LSL#20
ADD             R0, R0, R3,LSL#5
MOVNE           R1, R1,LSR#20
STRNE           R1, [R2]
BX              LR
