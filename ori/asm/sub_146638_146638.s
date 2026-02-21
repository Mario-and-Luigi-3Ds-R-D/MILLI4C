CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 0014663C default case
DCD loc_146658; jump table for switch statement
MOV             R1, R0; jumptable 0014663C case 0
LDR             R0, =sub_49A000
B               sub_49A2BC
MOV             R1, R0; jumptable 0014663C case 1
LDR             R0, =sub_499F64
B               sub_49A2BC
MOV             R1, R0; jumptable 0014663C case 2
LDR             R0, =sub_49A148
B               sub_49A2BC
MOV             R1, R0; jumptable 0014663C case 3
LDR             R0, =sub_49A09C
B               sub_49A2BC
MOV             R1, R0; jumptable 0014663C case 4
LDR             R0, =sub_49A1E4
B               sub_49A2BC
