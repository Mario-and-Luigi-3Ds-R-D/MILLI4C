PUSH            {R3-R11,LR}
MOV             R8, R0
MOV             R9, #0
LDRB            R1, [R0,#0x28]
LDR             R0, [R0,#0x18]
LDR             R10, =off_6CE970
LDR             R11, =0xFFE683CC
LDR             R7, =off_643200
LDR             R4, [R0]
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1CE054; jumptable 001CE054 default case, cases 0,1
DCD def_1CE054; jump table for switch statement
LDRH            R0, [R4,#0x10]; jumptable 001CE054 cases 2,3
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             def_1CE054; jumptable 001CE054 default case, cases 0,1
MOV             R0, R4
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             def_1CE054; jumptable 001CE054 default case, cases 0,1
MOV             R0, R4
BL              sub_147AD8
STR             R0, [R4,#0x13C]
NOP
B               def_1CE054; jumptable 001CE054 default case, cases 0,1
LDRH            R0, [R4,#0x10]; jumptable 001CE054 case 4
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             def_1CE054; jumptable 001CE054 default case, cases 0,1
MOV             R6, R4
MOV             R0, R4
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             def_1CE054; jumptable 001CE054 default case, cases 0,1
MOV             R5, R6
MOV             R0, R6
MOV             R0, #0x810000
MOV             R4, R0
MOV             R0, R5
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R4
MOV             R2, #0
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1CE1A0
MOV             R1, #1
STRB            R1, [R0,#4]
STR             R5, [R0,#8]
STR             R7, [R0]
STRB            R9, [R0,#0xC]
LDR             R7, [R5,#0x18]
MOV             R4, R0
MOV             R2, R1
MOV             R3, #0x100
MOV             R1, #0x2D ; '-'
MOV             R0, R5
STR             R9, [SP,#0x28+var_28]
BL              sub_4E3CA0
MOV             R2, #0xFFFFFFFF
MOV             R1, R2
MOV             R0, R7
BL              sub_5C55C8
VMOV            S0, R0
MOV             R1, #1
ADD             R0, R7, #0x1DC
VCVT.F32.S32    S0, S0
BL              sub_5A2708
LDRB            R0, [R5,#0x495]
CMP             R0, #0
BEQ             loc_1CE268
B               loc_1CE260
LDR             R0, [R10]
LDRH            R1, [R5,#0x10]
MOV             R3, #0
SUB             R0, R0, R11
BL              sub_503808
NOP
NOP
B               loc_1CE1A4
MOV             R4, #0
STR             R4, [R6,#0x13C]
B               def_1CE054; jumptable 001CE054 default case, cases 0,1
MOV             R6, R4; jumptable 001CE054 case 5
MOV             R0, R6
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             def_1CE054; jumptable 001CE054 default case, cases 0,1
MOV             R5, R6
MOV             R0, R6
MOV             R0, #0x810000
MOV             R4, R0
MOV             R0, R5
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R4
MOV             R2, #0
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1CE1A0
MOV             R1, #1
STRB            R1, [R0,#4]
STR             R5, [R0,#8]
STR             R7, [R0]
STRB            R9, [R0,#0xC]
LDR             R7, [R5,#0x18]
MOV             R4, R0
MOV             R2, R1
MOV             R3, #0x100
MOV             R1, #0x2D ; '-'
MOV             R0, R5
STR             R9, [SP,#0x28+var_28]
BL              sub_4E3CA0
MOV             R2, #0xFFFFFFFF
MOV             R1, R2
MOV             R0, R7
BL              sub_5C55C8
VMOV            S0, R0
MOV             R1, #1
ADD             R0, R7, #0x1DC
VCVT.F32.S32    S0, S0
BL              sub_5A2708
LDRB            R0, [R5,#0x495]
CMP             R0, #0
BEQ             loc_1CE268
LDR             R2, =0x30027
B               loc_1CE180
LDR             R2, =0x30026
B               loc_1CE180
MOV             R5, R4; jumptable 001CE054 case 6
MOV             R0, R5
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             def_1CE054; jumptable 001CE054 default case, cases 0,1
MOV             R0, R5
MOV             R0, #0x810000
MOV             R4, R0
MOV             R0, R5
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R4
MOV             R2, #0
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_1CE318
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6431EC
MOV             R4, R0
MOV             R6, R5
STR             R1, [R0]
STR             R5, [R0,#8]
STRB            R9, [R0,#0xC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x26 ; '&'
MOV             R0, R6
STR             R9, [SP,#0x28+var_28]
BL              sub_4E3CA0
LDRB            R0, [R6,#0x495]
LDRH            R1, [R6,#0x10]
MOV             R3, #0
CMP             R0, #0
LDR             R0, [R10]
LDREQ           R2, =0x30028
LDRNE           R2, =0x30029
SUB             R0, R0, R11
BL              sub_503808
STR             R4, [R5,#0x13C]
MOV             R0, R8; jumptable 001CE054 default case, cases 0,1
POP             {R3-R11,LR}
MOV             R1, #0
B               sub_1CD544
