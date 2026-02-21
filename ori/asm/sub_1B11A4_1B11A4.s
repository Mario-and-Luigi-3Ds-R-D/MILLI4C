LDR             R0, [R0,#8]
LDRSH           R0, [R0]
CMP             R0, #0x33; switch 51 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B11B0; jumptable 001B11B0 default case, cases 5-16,33-38,44
DCD loc_1B1284, loc_1B1284, loc_1B1284, loc_1B1284; jump table for switch statement
MOV             R0, #1; jumptable 001B11B0 cases 0-4,17-32,39-43,45-50
BX              LR
MOV             R0, #0; jumptable 001B11B0 default case, cases 5-16,33-38,44
BX              LR
