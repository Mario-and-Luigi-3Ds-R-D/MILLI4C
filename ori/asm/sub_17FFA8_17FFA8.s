PUSH            {R4-R6,LR}
ADD             R6, R3, #8
LDR             R0, [R0,#4]
MOV             R4, #0
ADD             R0, R0, #0x15000
LDR             R5, [R0,#0x18]
AND             R0, R4, #0xFF
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_17FFC8; jumptable 0017FFC8 default case
DCD loc_17FFE4; jump table for switch statement
LDR             R0, [R5,#0x94]; jumptable 0017FFC8 case 0
B               loc_180010
LDR             R0, [R5,#0x98]; jumptable 0017FFC8 case 1
B               loc_180010
LDR             R0, [R5,#0x9C]; jumptable 0017FFC8 case 2
B               loc_180010
LDR             R0, [R5,#0xA0]; jumptable 0017FFC8 case 3
B               loc_180010
LDR             R0, [R5,#0xA4]; jumptable 0017FFC8 case 4
B               loc_180010
MOV             R0, #0; jumptable 0017FFC8 default case
LDR             R1, [R6]
LDR             R2, [R0]
CMP             R1, #0
MOVNE           R1, #1
LDR             R2, [R2,#0x144]
BLX             R2
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_17FFC0
MOV             R0, #0
POP             {R4-R6,PC}
