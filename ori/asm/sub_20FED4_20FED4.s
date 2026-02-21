PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, =off_6CE970
CMP             R1, #9; switch 9 cases
MOV             R4, R1
LDR             R0, [R6]
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_20FEEC; jumptable 0020FEEC default case, cases 0,7
DCD def_20FEEC; jump table for switch statement
ADD             R0, R0, #0x190000; jumptable 0020FEEC case 1
ADD             R0, R0, #0x7A00
POP             {R4-R6,PC}
MOV             R0, R5; jumptable 0020FEEC cases 2-4,6,8
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             def_20FEEC; jumptable 0020FEEC default case, cases 0,7
LDR             R0, [R6]
MOV             R1, R5
BL              sub_52F508
CMP             R0, #0
NOP
BEQ             def_20FEEC; jumptable 0020FEEC default case, cases 0,7
SUB             R1, R4, #2
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_20FEEC; jumptable 0020FEEC default case, cases 0,7
DCD loc_20FF7C; jump table for switch statement
LDR             R0, [R0,#0x1FC]; jumptable 0020FF58 cases 0,1
POP             {R4-R6,PC}
LDR             R0, [R0,#0x200]; jumptable 0020FF58 case 2
POP             {R4-R6,PC}
LDR             R0, [R0,#0x204]; jumptable 0020FF58 case 4
POP             {R4-R6,PC}
LDR             R0, [R0,#0x208]; jumptable 0020FF58 case 6
POP             {R4-R6,PC}
MOV             R1, R5; jumptable 0020FEEC case 5
POP             {R4-R6,LR}
MOV             R2, #0
B               sub_528CFC
MOV             R0, #0; jumptable 0020FEEC default case, cases 0,7
POP             {R4-R6,PC}
