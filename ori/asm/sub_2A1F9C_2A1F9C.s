PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xF4]
ADD             R2, R4, #0xB0
CMP             R0, R2
BNE             loc_2A1FC8
CMP             R1, #0x13
BNE             def_2A1FCC; jumptable 002A1FCC default case, cases 2,7,8,11,12,15,17,18
POP             {R4-R6,LR}
MOV             R0, R2
B               sub_47C15C
CMP             R1, #0x14; switch 20 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
POP             {R4-R6,PC}; jumptable 002A1FCC default case, cases 2,7,8,11,12,15,17,18
DCD loc_2A2024; jump table for switch statement
CMP             R0, #0; jumptable 002A1FCC case 0
MOV             R6, #0
ADD             R5, R4, #0x64 ; 'd'
BEQ             loc_2A2168
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
B               loc_2A2168
CMP             R0, #0; jumptable 002A1FCC case 16
MOV             R6, #0
ADD             R5, R4, #0xCC
BEQ             loc_2A2168
B               loc_2A2034
CMP             R0, #0; jumptable 002A1FCC cases 1,3
MOV             R6, #0
ADD             R5, R4, #0x1C
BEQ             loc_2A2168
B               loc_2A2034
ADD             R1, R4, #0x6C ; 'l'; jumptable 002A1FCC case 6
CMP             R0, R1
BNE             def_2A1FCC; jumptable 002A1FCC default case, cases 2,7,8,11,12,15,17,18
LDR             R0, [R4,#0x70]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xB
LDR             R0, [R0,#0x10]
POP             {R4-R6,LR}
B               sub_14C430
ADD             R1, R4, #0xCC; jumptable 002A1FCC case 4
CMP             R0, R1
BNE             loc_2A20BC
LDR             R0, [R4,#0xD0]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xB
LDR             R0, [R0,#0x10]
POP             {R4-R6,LR}
B               sub_14C430
CMP             R0, #0
MOV             R6, #0
ADD             R5, R4, #0x1C
BEQ             loc_2A2168
B               loc_2A2034
CMP             R0, #0; jumptable 002A1FCC case 5
MOV             R6, #0
ADD             R5, R4, #0x6C ; 'l'
BEQ             loc_2A2168
B               loc_2A2034
ADD             R1, R4, #0x6C ; 'l'; jumptable 002A1FCC case 13
CMP             R0, R1
BNE             def_2A1FCC; jumptable 002A1FCC default case, cases 2,7,8,11,12,15,17,18
LDR             R0, [R4,#0x70]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xA
LDR             R0, [R0,#0x10]
POP             {R4-R6,LR}
B               sub_14C430
ADD             R1, R4, #0x6C ; 'l'; jumptable 002A1FCC case 9
CMP             R0, R1
BNE             def_2A1FCC; jumptable 002A1FCC default case, cases 2,7,8,11,12,15,17,18
CMP             R0, #0
MOV             R6, #0
ADD             R5, R4, #0x24 ; '$'
BEQ             loc_2A2168
B               loc_2A2034
LDR             R0, [R4,#0x10]; jumptable 002A1FCC case 10
POP             {R4-R6,LR}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xA
B               sub_14C430
CMP             R0, #0; jumptable 002A1FCC case 14
MOV             R6, #0
MOV             R5, R2
BEQ             loc_2A2168
B               loc_2A2034
CMP             R0, #0; jumptable 002A1FCC case 19
MOV             R6, #0
ADD             R5, R4, #0xD8
BNE             loc_2A2034
STR             R5, [R4,#0xF4]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
POP             {R4-R6,LR}
BX              R2
