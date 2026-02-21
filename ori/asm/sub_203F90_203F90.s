PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, =off_6CE970
MOV             R4, R1
LDR             R1, [R2,#8]
MOV             R5, R2
LDR             R2, [R0]
AND             R1, R1, #0xFF
VLDR            S0, =0.0
ADD             R0, R2, #0x100000
CMP             R1, #5; switch 5 cases
ADD             R0, R0, #0xC400
ADD             R2, R2, #0x10C000
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_203FC4; jumptable 00203FC4 default case
DCD loc_203FE0; jump table for switch statement
VLDR            S0, [R0,#0xB8]; jumptable 00203FC4 case 0
B               def_203FC4; jumptable 00203FC4 default case
VLDR            S0, [R0,#0xEC]; jumptable 00203FC4 case 1
B               def_203FC4; jumptable 00203FC4 default case
VLDR            S0, [R0,#0x120]; jumptable 00203FC4 case 2
B               def_203FC4; jumptable 00203FC4 default case
LDR             R0, [R2,#0x314]; jumptable 00203FC4 case 3
BL              sub_5E8254
NOP
NOP
B               def_203FC4; jumptable 00203FC4 default case
LDR             R0, [R2,#0x314]; jumptable 00203FC4 case 4
BL              sub_5E8230
CMP             R4, #0; jumptable 00203FC4 default case
LDRH            R0, [R5,#2]
ADDNE           R2, R4, #4
MOVEQ           R2, #0
MOV             R1, R6
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
