LDR             R0, [R0,#8]
LDRSH           R0, [R0]
SUB             R0, R0, #0x16
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1BE704; jumptable 001BE704 default case, case 1
DCD loc_1BE724; jump table for switch statement
MOV             R0, #0; jumptable 001BE704 cases 0,2-5
BX              LR
MOV             R0, #1; jumptable 001BE704 default case, case 1
BX              LR
