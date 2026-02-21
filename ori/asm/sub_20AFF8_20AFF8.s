PUSH            {R4-R6,LR}
ADD             R1, R2, #8
VPUSH           {D8}
LDR             R0, [R2,#0x10]
LDM             R1, {R1,R3}
VLDR            S16, [R2,#0x74]
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
AND             R5, R3, #0xFF
LDR             R0, [R0]
BL              sub_52A63C
LDR             R0, [R0,#0x110]
RSB             R1, R5, R5,LSL#3
CMP             R4, #9; switch 9 cases
ADD             R0, R0, R1,LSL#3
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_20B038; jumptable 0020B038 default case
DCD loc_20B064; jump table for switch statement
ADD             R0, R0, R4,LSL#2; jumptable 0020B038 cases 0-2
VSTR            S16, [R0]
B               def_20B038; jumptable 0020B038 default case
ADD             R0, R0, R4,LSL#2; jumptable 0020B038 cases 3-5
VSTR            S16, [R0,#0xC]
B               def_20B038; jumptable 0020B038 default case
ADD             R0, R0, R4,LSL#2; jumptable 0020B038 cases 6-8
VSTR            S16, [R0,#0x14]
MOV             R0, #0; jumptable 0020B038 default case
VPOP            {D8}
POP             {R4-R6,PC}
