LDR             R1, =0x2686
LDRB            R1, [R1,R0]
CMP             R1, #6; switch 6 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 0016A58C default case, cases 2,3
DCD loc_16A5AC; jump table for switch statement
NOP; jumptable 0016A58C cases 0,4,5
B               sub_174300
LDR             R1, [R0]; jumptable 0016A58C case 1
LDR             R1, [R1,#0x460]
BX              R1
