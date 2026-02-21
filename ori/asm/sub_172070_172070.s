LDR             R1, =0x2686
LDRB            R1, [R1,R0]
CMP             R1, #6; switch 6 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 0017207C default case
DCD loc_17209C; jump table for switch statement
NOP; jumptable 0017207C cases 0,5
B               sub_540954
LDR             R1, [R0]; jumptable 0017207C case 1
LDR             R1, [R1,#0x454]
BX              R1
LDR             R1, [R0]; jumptable 0017207C cases 2,3
LDR             R1, [R1,#0x458]
BX              R1
LDR             R1, [R0]; jumptable 0017207C case 4
LDR             R1, [R1,#0x45C]
BX              R1
