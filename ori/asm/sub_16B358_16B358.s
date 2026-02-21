LDR             R2, =0x2686
PUSH            {R4,LR}
LDRB            R3, [R2,R0]
MOV             R2, #0
CMP             R3, #5; switch 5 cases
LDRCC           PC, [PC,R3,LSL#2]; switch jump
B               def_16B36C; jumptable 0016B36C default case
DCD loc_16B388; jump table for switch statement
LDR             R2, [R0]; jumptable 0016B36C cases 0,4
LDR             R2, [R2,#0x444]
BLX             R2
MOV             R2, R0
B               def_16B36C; jumptable 0016B36C default case
LDR             R2, [R0]; jumptable 0016B36C case 1
LDR             R2, [R2,#0x448]
BLX             R2
MOV             R2, R0
B               def_16B36C; jumptable 0016B36C default case
LDR             R2, [R0]; jumptable 0016B36C cases 2,3
LDR             R2, [R2,#0x44C]
BLX             R2
MOV             R2, R0
MOV             R0, R2; jumptable 0016B36C default case
POP             {R4,PC}
