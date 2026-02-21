CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
BX              LR; jumptable 001465E4 default case, case 0
DCD def_1465E4; jump table for switch statement
MOV             R0, #2; jumptable 001465E4 case 1
BX              LR
MOV             R0, #1; jumptable 001465E4 case 2
BX              LR
MOV             R0, #4; jumptable 001465E4 case 3
BX              LR
MOV             R0, #3; jumptable 001465E4 case 4
BX              LR
MOV             R0, #6; jumptable 001465E4 case 5
BX              LR
MOV             R0, #5; jumptable 001465E4 case 6
BX              LR
