PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xD]
CMP             R0, #0xC; switch 12 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
POP             {R4-R6,PC}; jumptable 001FF1C4 default case, cases 0,3,4,9
DCD def_1FF1C4; jump table for switch statement
MOV             R0, R4; jumptable 001FF1C4 case 1
POP             {R4-R6,LR}
B               sub_1FE364
MOV             R0, R4; jumptable 001FF1C4 case 2
POP             {R4-R6,LR}
B               sub_1FEC98
ADD             R0, R4, #0x1EC; jumptable 001FF1C4 case 5
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1FF1C4; jumptable 001FF1C4 default case, cases 0,3,4,9
LDR             R5, [R4]
LDR             R0, [R5,#0xC]
CMP             R0, #0
BEQ             loc_1FF258
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#0xC]
CMP             R0, #0
BEQ             loc_1FF258
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R5,#0xC]
LDRB            R0, [R4,#0xC]
MOV             R2, #0
CMP             R0, #0
LDR             R0, =off_6CDC90
LDR             R0, [R0]
LDREQ           R1, [R0,#0x24]
LDRNE           R1, [R0,#0x20]
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #0x10
BL              sub_14C548
MOV             R0, #3
STRB            R0, [R4,#0xD]
POP             {R4-R6,PC}
ADD             R0, R4, #0x3AC; jumptable 001FF1C4 case 7
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #4
BGE             loc_1FF294
POP             {R4-R6,PC}
ADD             R0, R4, #0x1EC; jumptable 001FF1C4 case 6
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1FF1C4; jumptable 001FF1C4 default case, cases 0,3,4,9
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xD
ADD             R0, R4, #0x10
BL              sub_14C548
MOV             R0, #4
STRB            R0, [R4,#0xD]
POP             {R4-R6,PC}
MOV             R0, R4; jumptable 001FF1C4 case 8
POP             {R4-R6,LR}
B               sub_1FEDD0
ADD             R0, R4, #0x3AC; jumptable 001FF1C4 case 10
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #4
STRBGE          R0, [R4,#0xD]
POP             {R4-R6,PC}
MOV             R0, R4; jumptable 001FF1C4 case 11
POP             {R4-R6,LR}
B               sub_1FE7BC
