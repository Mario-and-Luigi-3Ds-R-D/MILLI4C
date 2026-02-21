LDR             R1, =0x2686
LDRB            R1, [R1,R0]
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 00171C94 default case, cases 2,3
DCD loc_171CB0; jump table for switch statement
NOP; jumptable 00171C94 cases 0,4
B               sub_580AA0
LDR             R1, [R0]; jumptable 00171C94 case 1
LDR             R1, [R1,#0x420]
BX              R1
