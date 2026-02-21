MOV             R3, R0
MOV             R2, R0,LSL#8
MOV             R12, R0,LSL#16
CMP             R1, #0xA; switch 10 cases
MOV             R0, R0,LSR#24
MOV             R2, R2,LSR#24
MOV             R12, R12,LSR#24
AND             R3, R3, #0xFF
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_130DD8; jumptable 00130DD8 default case
DCD loc_130E08; jump table for switch statement
MOV             R1, R3,LSL#24; jumptable 00130DD8 case 0
ORR             R1, R1, R12,LSL#16
ORR             R1, R1, R2,LSL#8
ORR             R0, R0, R1
BX              LR; jumptable 00130DD8 case 8
MOV             R0, R3,LSL#16; jumptable 00130DD8 case 1
ORR             R0, R0, R12,LSL#8
ORR             R0, R0, R2
BX              LR
MOV             R1, R3,LSR#3; jumptable 00130DD8 case 2
MOV             R3, R12,LSR#3
CMP             R0, #0x7F
MOV             R1, R1,LSL#11
MOV             R2, R2,LSR#3
ORR             R1, R1, R3,LSL#6
ORR             R1, R1, R2,LSL#1
MOVHI           R0, #1
MOVLS           R0, #0
ORR             R0, R0, R1
BX              LR
MOV             R0, R3,LSR#3; jumptable 00130DD8 case 3
MOV             R1, R12,LSR#2
MOV             R0, R0,LSL#11
ORR             R0, R0, R1,LSL#5
ORR             R0, R0, R2,LSR#3
BX              LR
MOV             R1, R3,LSR#4; jumptable 00130DD8 case 4
MOV             R3, R12,LSR#4
MOV             R1, R1,LSL#12
BIC             R2, R2, #0xF
ORR             R1, R1, R3,LSL#8
ORR             R1, R1, R2
B               loc_130ED4
ADD             R1, R12, R3,LSR#1; jumptable 00130DD8 case 5
ADD             R1, R1, R2,LSR#1
AND             R3, R2, #1
ORR             R1, R3, R1,LSR#1
ORR             R0, R0, R1,LSL#8
BX              LR
ORR             R0, R12, R3,LSL#8; jumptable 00130DD8 case 6
BX              LR
ADD             R0, R12, R3,LSR#1; jumptable 00130DD8 case 7
ADD             R0, R0, R2,LSR#1
AND             R1, R2, #1
ORR             R0, R1, R0,LSR#1
BX              LR
ADD             R1, R12, R3,LSR#1; jumptable 00130DD8 case 9
ADD             R1, R1, R2,LSR#1
AND             R3, R2, #1
ORR             R1, R3, R1,LSR#1
AND             R1, R1, #0xF0
ORR             R0, R1, R0,LSR#4
BX              LR
MOV             R0, #0; jumptable 00130DD8 default case
BX              LR
