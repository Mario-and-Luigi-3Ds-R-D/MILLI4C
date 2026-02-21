PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE388
LDRB            R1, [R0,#8]
LDR             R0, [R6]
CMP             R1, #6; switch 6 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
POP             {R4-R6,PC}; jumptable 001A3E98 default case
DCD loc_1A3EB8; jump table for switch statement
LDR             R0, [R4,#0xC]; jumptable 001A3E98 case 0
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1A3E98; jumptable 001A3E98 default case
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x1C
BL              sub_14C548
MOV             R0, #2
NOP
B               loc_1A3F38
LDR             R1, [R4,#0x18]; jumptable 001A3E98 case 2
CMP             R1, #0
BNE             def_1A3E98; jumptable 001A3E98 default case
LDR             R1, [R4,#0x10]
ADD             R1, R1, #1
STR             R1, [R4,#0x10]
BL              sub_5C686C
LDR             R1, [R4,#0x10]
CMP             R0, R1
BNE             def_1A3E98; jumptable 001A3E98 default case
LDR             R5, [R4,#0xC]
LDR             R0, [R6]
ADD             R5, R5, #0x39C
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x358]
VLDR            S0, =0.0
VSTR            S0, [R5]
STR             R0, [R5,#4]
MOV             R0, #1
STRB            R0, [R4,#8]
POP             {R4-R6,PC}
LDR             R0, [R4,#0xC]; jumptable 001A3E98 case 1
MOV             R12, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1A3E98; jumptable 001A3E98 default case
MOV             R0, #3
STRB            R0, [R4,#8]
POP             {R4-R6,LR}
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1D
MOV             R0, R12
B               sub_14C548
LDR             R0, [R4,#0xC]; jumptable 001A3E98 case 3
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1A3E98; jumptable 001A3E98 default case
LDR             R0, [R6]
BL              sub_19F638
MOV             R0, #4
STRB            R0, [R4,#8]
LDR             R0, [R4,#0xC]
POP             {R4-R6,LR}
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x1E
B               sub_14C548
NOP; jumptable 001A3E98 case 4
BL              sub_5C6638
CMP             R0, #0
NOP
BNE             def_1A3E98; jumptable 001A3E98 default case
MOV             R0, #5
STRB            R0, [R4,#8]
LDR             R0, [R4,#0xC]
POP             {R4-R6,LR}
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1F
B               sub_14C548
LDR             R0, [R4,#0xC]; jumptable 001A3E98 case 5
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1A3E98; jumptable 001A3E98 default case
MOV             R2, #0
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C548
LDR             R0, [R4,#4]
NOP
BL              sub_61E634
POP             {R4-R6,PC}
