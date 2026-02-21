SUB             R1, R0, #0x100
CMP             R1, #6; switch 6 cases
MOV             R0, #1
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 0010D54C default case
DCD loc_10D56C; jump table for switch statement
MOV             R0, #4; jumptable 0010D54C cases 0,2
BX              LR
MOV             R0, #0x80; jumptable 0010D54C case 1
BX              LR
LDR             R0, =byte_6CEDC8; jumptable 0010D54C case 3
LDRB            R0, [R0]
BX              LR
MOV             R0, #0x10; jumptable 0010D54C cases 4,5
BX              LR
