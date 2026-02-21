LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R1, [R2,#8]
LDR             R0, [R0]
AND             R1, R1, #0xFF
CMP             R1, #3; switch 3 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2055E0; jumptable 002055E0 default case
DCD loc_2055F4; jump table for switch statement
LDR             R1, =0x10C4B4; jumptable 002055E0 case 0
ADD             R0, R0, R1
BL              sub_5A18EC
NOP
NOP
B               def_2055E0; jumptable 002055E0 default case
LDR             R1, =0x10C4E8; jumptable 002055E0 case 1
ADD             R0, R0, R1
BL              sub_5A18EC
NOP
NOP
B               def_2055E0; jumptable 002055E0 default case
LDR             R1, =0x10C51C; jumptable 002055E0 case 2
ADD             R0, R0, R1
BL              sub_5A18EC
MOV             R0, #0; jumptable 002055E0 default case
POP             {R4,PC}
