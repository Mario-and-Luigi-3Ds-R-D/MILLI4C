PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R7, #2
LDRB            R0, [R0,#0xC]
LDR             R6, =off_6CE388
CMP             R0, #1
BEQ             loc_1A1364
CMP             R0, #4
BNE             loc_1A1400
B               loc_1A13A4
LDR             R0, [R4,#0x10]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1A1400
LDR             R0, [R4,#0x10]
BL              sub_5C55B8
ADD             R0, R0, #1
AND             R1, R0, #0xFF
LDR             R0, [R4,#0x10]
MOV             R3, #0x100
MOV             R2, #0
BL              sub_14C548
STRB            R7, [R4,#0xC]
NOP
B               loc_1A1400
LDR             R0, [R4,#0x10]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_1A1400
LDR             R5, [R4,#0x10]
LDR             R0, [R6]
LDR             R0, [R0,#0x9C]
NOP
NOP
BL              sub_1A634C
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
MOV             R2, #0
LDR             R0, [R4,#0x10]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C548
STRB            R7, [R4,#0xC]
LDRB            R0, [R4,#8]
LDR             R10, =0x3000A
LDR             R9, =0xFFE683CC
LDR             R5, =off_6CE970
CMP             R0, #6; switch 6 cases
MOV             R8, #3
LDRCC           PC, [PC,R0,LSL#2]; switch jump
POP             {R4-R10,PC}; jumptable 001A1418 default case, case 0
DCD def_1A1418; jump table for switch statement
LDR             R0, [R5]; jumptable 001A1418 case 2
MOV             R1, #4
MOV             R2, #0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
MOV             R3, #1
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #0x10000000
TSTEQ           R0, #0x20000000
BNE             loc_1A146C
TST             R0, #0x40000000
TSTEQ           R0, #0x80000000
BEQ             def_1A1418; jumptable 001A1418 default case, case 0
TST             R0, #0x10000000
MOVNE           R1, R2
BNE             loc_1A1498
TST             R0, #0x20000000
MOVNE           R1, R3
BNE             loc_1A1498
TST             R0, #0x40000000
MOVNE           R1, R8
BNE             loc_1A1498
TST             R0, #0x80000000
MOVNE           R1, R7
MOV             R0, R4
POP             {R4-R10,LR}
B               sub_1A1640
LDR             R0, [R4,#4]; jumptable 001A1418 case 1
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1A1418; jumptable 001A1418 default case, case 0
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R10
LDR             R1, [R0,#0x5C]
LDR             R0, [R5]
SUB             R0, R0, R9
BL              sub_503720
LDR             R0, [R4,#0x10]
ADD             R5, R4, #0xC
BL              sub_5C55B8
ADD             R0, R0, #1
AND             R1, R0, #0xFF
LDR             R0, [R5,#4]
MOV             R3, #0x100
MOV             R2, #1
BL              sub_14C548
LDRB            R0, [R5]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #4
STRB            R0, [R5]
STRB            R8, [R4,#8]
LDR             R0, [R4,#4]
LDR             R4, [R0,#0x5C]
LDR             R0, [R6]
ADD             R4, R4, #0x39C
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0xC]
VLDR            S0, =0.0
VSTR            S0, [R4]
STR             R0, [R4,#4]
POP             {R4-R10,PC}
LDR             R0, [R4,#4]; jumptable 001A1418 case 3
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1A1418; jumptable 001A1418 default case, case 0
MOV             R0, R4
POP             {R4-R10,LR}
B               sub_1A11C8
LDR             R0, [R4,#4]; jumptable 001A1418 case 4
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1A1418; jumptable 001A1418 default case, case 0
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R10
LDR             R1, [R0,#0x5C]
LDR             R0, [R5]
SUB             R0, R0, R9
BL              sub_503720
LDR             R0, [R4,#0x10]
ADD             R5, R4, #0xC
BL              sub_5C55B8
ADD             R0, R0, #1
AND             R1, R0, #0xFF
LDR             R0, [R5,#4]
MOV             R3, #0x100
MOV             R2, #1
BL              sub_14C548
LDRB            R0, [R5]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #4
STRB            R0, [R5]
MOV             R0, #5
STRB            R0, [R4,#8]
POP             {R4-R10,PC}
LDRB            R0, [R4,#0xC]; jumptable 001A1418 case 5
CMP             R0, #2
BNE             def_1A1418; jumptable 001A1418 default case, case 0
LDR             R0, [R6]
LDR             R0, [R0,#0x4C8]
MOV             R5, R0
LDR             R0, [R6]
BL              sub_5C686C
CMP             R5, R0
NOP
BNE             loc_1A161C
LDR             R0, [R4,#4]
BL              sub_61E4FC
POP             {R4-R10,PC}
LDR             R0, [R6]
BL              sub_1A2638
STRB            R7, [R4,#8]
POP             {R4-R10,PC}
