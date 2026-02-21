PUSH            {R4-R10,LR}
MOV             R5, R3
MOV             R8, R1
MOV             R9, R2
STRB            R1, [R0]
STR             R3, [R0,#4]!
ADD             R0, R0, #4
BL              sub_14F198
SUB             R4, R0, #8
MOV             R0, #1
CMP             R8, #5; switch 5 cases
STRB            R0, [R4,#0x3FC]
LDRCC           PC, [PC,R8,LSL#2]; switch jump
B               def_284660; jumptable 00284660 default case
DCD loc_28467C; jump table for switch statement
LDR             R6, [R5]; jumptable 00284660 case 0
MOV             R7, #0xA
B               def_284660; jumptable 00284660 default case
LDR             R6, [R5,#4]; jumptable 00284660 case 1
MOV             R7, #8
B               def_284660; jumptable 00284660 default case
LDR             R6, [R5,#8]; jumptable 00284660 case 2
MOV             R7, #6
B               def_284660; jumptable 00284660 default case
LDR             R6, [R5,#0xC]; jumptable 00284660 case 3
MOV             R7, #7
B               def_284660; jumptable 00284660 default case
LDR             R6, [R5,#0x10]; jumptable 00284660 case 4
MOV             R7, #0xB
ADD             R5, R4, #8; jumptable 00284660 default case
MOV             R1, #1
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R6
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R5
BL              sub_14B798
MOV             R0, #0
STRB            R0, [R5,#0xF1]
MOV             R1, #2
ADD             R0, R4, #8
BL              sub_14C450
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R7, #0xFF
ADD             R0, R4, #8
BL              sub_14C548
MOV             R1, R9
ADD             R0, R4, #8
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #8
BL              sub_14C3E8
MOV             R0, R4
POP             {R4-R10,PC}
