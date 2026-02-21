SUB             R2, R0, #0x200
LDR             R0, =dword_700750
PUSH            {R4,LR}
CMP             R2, #0xF; switch 15 cases
LDR             R0, [R0,#(off_7007EC - 0x700750)]
LDRCC           PC, [PC,R2,LSL#2]; switch jump
POP             {R4,PC}; jumptable 0010B95C default case
DCD loc_10B9A0; jump table for switch statement
LDR             R0, [R0,#0x2C]; jumptable 0010B95C case 0
B               loc_10BA9C
LDR             R2, =dword_700750; jumptable 0010B95C case 1
LDR             R3, [R2,#(dword_7007F0 - 0x700750)]
CMP             R3, R0
BNE             loc_10B9C8
LDRB            R0, [R2,#(byte_700761 - 0x700750)]
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_10BA9C
MOV             R0, #0
B               loc_10BA9C
LDR             R3, =dword_6D2418; jumptable 0010B95C case 2
LDR             R2, [R0,#4]
LDR             R3, [R3]
SUB             R2, R3, R2
STR             R2, [R0,#0xC]
STR             R2, [R1]
POP             {R4,PC}
LDR             R0, [R0,#0x20]; jumptable 0010B95C case 3
B               loc_10BA9C
LDR             R0, [R0,#8]; jumptable 0010B95C case 4
B               loc_10BA9C
LDR             R0, [R0,#0x1C]; jumptable 0010B95C case 5
B               loc_10BA9C
LDR             R0, [R0,#4]; jumptable 0010B95C case 6
B               loc_10BA9C
CMP             R0, #0; jumptable 0010B95C case 7
LDRNE           R0, [R0]
B               loc_10BA9C
LDR             R0, =dword_6D2418; jumptable 0010B95C case 8
LDR             R0, [R0]
B               loc_10BA9C
LDR             R0, [R0,#0x10]; jumptable 0010B95C case 9
B               loc_10BA9C
LDR             R0, [R0,#0x28]; jumptable 0010B95C case 10
B               loc_10BA9C
LDR             R0, [R0,#0x18]; jumptable 0010B95C case 11
B               loc_10BA9C
LDR             R2, [R0,#0x28]; jumptable 0010B95C case 12
LDR             R3, [R0,#0x20]
CMP             R3, R2
BLE             def_10B95C; jumptable 0010B95C default case
LDR             R0, [R0,#0x18]
RSB             R2, R2, R2,LSL#3
LDRB            R0, [R0,R2,LSL#2]
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
POP             {R4,PC}; jumptable 0010BA5C default case
DCD loc_10BA78; jump table for switch statement
MOV             R0, #0x310; jumptable 0010BA5C case 0
B               loc_10BA9C
LDR             R0, =0x311; jumptable 0010BA5C case 1
B               loc_10BA9C
LDR             R0, =0x312; jumptable 0010BA5C case 2
B               loc_10BA9C
LDR             R0, =0x313; jumptable 0010BA5C case 3
B               loc_10BA9C
MOV             R0, #0x314; jumptable 0010BA5C case 4
STR             R0, [R1]
POP             {R4,PC}
LDR             R2, [R0,#0x20]; jumptable 0010B95C case 13
LDR             R3, [R0,#0x28]
CMP             R2, R3
BLE             def_10B95C; jumptable 0010B95C default case
LDR             R2, [R0,#0x18]
RSB             R3, R3, R3,LSL#3
LDRB            R12, [R2,R3,LSL#2]
CMP             R12, #1
BNE             def_10B95C; jumptable 0010B95C default case
MOV             LR, #4
ADD             R3, LR, R3,LSL#2
MOV             R12, #8
LDR             R2, [R2,R3]
STR             R2, [R1]
LDR             R2, [R0,#0x28]
LDR             R0, [R0,#0x18]
RSB             R2, R2, R2,LSL#3
ADD             R2, R12, R2,LSL#2
LDR             R0, [R0,R2]
STR             R0, [R1,#4]
POP             {R4,PC}
LDR             R0, =sub_400058; jumptable 0010B95C case 14
POP             {R4,LR}
MOV             R2, #4
B               sub_119EF8
