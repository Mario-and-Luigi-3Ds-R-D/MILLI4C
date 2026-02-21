PUSH            {R4,R5}
LDR             R2, [R0,#0x1C]
MOV             R3, #0
MOV             R1, R3
CMP             R2, #5; switch 5 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_12A198; jumptable 0012A198 default case
DCD loc_12A1B4; jump table for switch statement
MOV             R1, #4; jumptable 0012A198 case 0
B               def_12A198; jumptable 0012A198 default case
MOV             R1, #3; jumptable 0012A198 case 1
B               def_12A198; jumptable 0012A198 default case
MOV             R1, #2; jumptable 0012A198 cases 2-4
CMP             R1, #3; jumptable 0012A198 default case
MOVHI           R1, #3
MOV             R2, #0
MOV             R1, R1,LSL#8
STR             R2, [R0,#0x18]
STR             R2, [R0,#0x14]
LDR             R2, [R0,#0x10]
ADD             R1, R1, R1,LSL#2
ADD             R3, R3, R1,LSL#6
CMP             R2, #5; switch 5 cases
MOV             R1, #0
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_12A1F4; jumptable 0012A1F4 default case
DCD loc_12A210; jump table for switch statement
MOV             R1, #4; jumptable 0012A1F4 case 0
B               def_12A1F4; jumptable 0012A1F4 default case
MOV             R1, #3; jumptable 0012A1F4 case 1
B               def_12A1F4; jumptable 0012A1F4 default case
MOV             R1, #2; jumptable 0012A1F4 cases 2-4
CMP             R1, #3; jumptable 0012A1F4 default case
MOVHI           R12, #3
MOVLS           R12, R1
STR             R3, [R0,#0xC]
MOV             R4, R12,LSL#8
STR             R3, [R0,#8]
LDRB            R12, [R0,#4]
ADD             R5, R4, R4,LSL#3
ADD             R4, R5, R4,LSL#4
CMP             R12, #0
ADD             R3, R3, R4,LSL#4
BEQ             loc_12A2AC
CMP             R2, #5; switch 5 cases
MOV             R1, #0
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_12A25C; jumptable 0012A25C default case
DCD loc_12A278; jump table for switch statement
MOV             R1, #4; jumptable 0012A25C case 0
B               def_12A25C; jumptable 0012A25C default case
MOV             R1, #3; jumptable 0012A25C case 1
B               def_12A25C; jumptable 0012A25C default case
MOV             R1, #2; jumptable 0012A25C cases 2-4
CMP             R1, #3; jumptable 0012A25C default case
MOVHI           R2, #3
MOVLS           R2, R1
STR             R3, [R0,#0xC]
MOV             R2, R2,LSL#8
ADD             R12, R2, R2,LSL#3
ADD             R2, R12, R2,LSL#4
ADD             R3, R3, R2,LSL#4
CMP             R1, #3
MOVHI           R1, #3
MOV             R1, R1,LSL#8
RSB             R1, R1, R1,LSL#3
ADD             R1, R3, R1,LSL#4
STR             R1, [R0]
POP             {R4,R5}
BX              LR
