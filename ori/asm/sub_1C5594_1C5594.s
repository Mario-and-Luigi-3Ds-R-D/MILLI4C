PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R0, R1
ADD             R8, R4, #0x3F4
LDR             R9, =off_6CE118
VPUSH           {D8}
SUB             SP, SP, #0xC
LDM             R1, {R1-R3}
VLDR            S16, =0.000015259
STM             R8, {R1-R3}
LDRB            R1, [R4,#0x410]
CMP             R1, #6
BEQ             loc_1C5654
CMP             R1, #1
BNE             loc_1C57C8
MOV             R0, #0
STRB            R0, [R4,#0xF3]
LDR             R0, [R9]
ADD             R0, R0, #0x1400
ADD             R0, R0, #0x38 ; '8'
LDRB            R0, [R0]
CMP             R0, #2
ADDCS           R0, R0, #0x1D
ANDCS           R5, R0, #0xFF
MOVCC           R5, #0x1E
MOV             R0, R4
BL              sub_5C55B8
CMP             R0, R5
BEQ             loc_1C57C8
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R5
MOV             R0, R4
BL              sub_14C548
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, [R9]
LDR             R0, [R0,#0xC]
VCVT.F32.U32    S0, S0
VLDR            S1, [R0,#0xC]
ADD             SP, SP, #0xC
MOV             R0, R4
VMUL.F32        S0, S0, S16
VPOP            {D8}
POP             {R4-R9,LR}
VMUL.F32        S0, S0, S1
B               sub_14D7F4
ADD             R8, R4, #0x400
VLDR            S17, =0.5
LDRH            R1, [R8,#0xC]
CMP             R1, #0
BEQ             loc_1C5700
BL              sub_47ECF4
VMOV.F32        S1, S17
MOV             R0, #8
BL              sub_4801C4
LDR             R1, [R4,#0x420]
MOV             R7, R0
CMP             R1, R7
BEQ             loc_1C57C8
BL              sub_4635D8
MOV             R1, R0
MOV             R0, R4
BL              sub_14E9C8
ADD             R0, R4, #0x3F4
NOP
BL              sub_47ECF4
VMOV.F32        S1, S17
MOV             R0, #0x18
BL              sub_4801C4
SUB             R1, R0, #0x10
VLDR            S0, =0.0
CMP             R1, #3
BHI             loc_1C57D4
LDR             R2, [R9]
LDRH            R0, [R8,#0xC]
MOV             R1, SP
LDR             R2, [R2,#0xEAC]
RSB             R3, R0, R0,LSL#3
RSB             R0, R3, R0,LSL#6
ADD             R0, R2, R0,LSL#2
LDR             R0, [R0,#0x24]
VSTR            S0, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
STR             R0, [SP,#0x30+var_28]
MOV             R0, R4
BL              sub_14E9C8
NOP
NOP
B               loc_1C5814
NOP
BL              sub_47ECF4
VMOV.F32        S1, S17
MOV             R0, #8
BL              sub_4801C4
LDR             R1, [R4,#0x420]
MOV             R5, R0
CMP             R1, R5
BEQ             loc_1C57C8
CMP             R5, #8; switch 8 cases
LDRCC           PC, [PC,R5,LSL#2]; switch jump
B               def_1C5728; jumptable 001C5728 default case
DCD loc_1C5750; jump table for switch statement
MOV             R6, #8; jumptable 001C5728 cases 0,1,3-5,7
B               loc_1C575C
MOV             R6, #9; jumptable 001C5728 case 2
MOV             R7, #0
B               def_1C5728; jumptable 001C5728 default case
MOV             R6, #9; jumptable 001C5728 case 6
MOV             R7, #1
MOV             R0, R4; jumptable 001C5728 default case
BL              sub_5C55B8
CMP             R0, R6
NOP
BEQ             loc_1C57C0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
MOV             R0, R4
BL              sub_14C548
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
VMOV            S0, R0
LDR             R1, [R9]
LDR             R0, [R1,#0xC]
VCVT.F32.U32    S1, S0
VLDR            S0, [R0,#8]
MOV             R0, R4
VMLA.F32        S0, S1, S16
BL              sub_14D7F4
STRB            R7, [R4,#0xF3]
STR             R5, [R4,#0x420]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
SUB             R0, R0, #4
CMP             R0, #3
BHI             loc_1C5814
LDR             R2, [R9]
LDRH            R0, [R8,#0xC]
MOV             R1, SP
LDR             R2, [R2,#0xEAC]
RSB             R3, R0, R0,LSL#3
RSB             R0, R3, R0,LSL#6
ADD             R0, R2, R0,LSL#2
LDR             R0, [R0,#0x20]
VSTR            S0, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
STR             R0, [SP,#0x30+var_28]
MOV             R0, R4
BL              sub_14E9C8
CMP             R7, #8; switch 8 cases
LDRCC           PC, [PC,R7,LSL#2]; switch jump
B               def_1C5818; jumptable 001C5818 default case
DCD loc_1C5840; jump table for switch statement
LDR             R0, =dword_6D1F40; jumptable 001C5818 case 0
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOV             R5, R0,LSR#16
B               loc_1C5878
LDR             R0, =dword_6D1F40; jumptable 001C5818 case 1
BL              sub_546DB0
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
ADD             R5, R0, #3
B               loc_1C5878
MOV             R5, #5; jumptable 001C5818 case 2
B               loc_1C5878
MOV             R5, #6; jumptable 001C5818 case 3
MOV             R6, #0
B               def_1C5818; jumptable 001C5818 default case
DCFS 0.000015259
DCD off_6CE118
DCD dword_6D1F40
DCFS 0.5
DCFS 0.0
MOV             R5, #7; jumptable 001C5818 case 4
MOV             R6, #0
B               def_1C5818; jumptable 001C5818 default case
MOV             R5, #6; jumptable 001C5818 case 5
B               loc_1C58AC
MOV             R5, #5; jumptable 001C5818 case 6
MOV             R6, #1
B               def_1C5818; jumptable 001C5818 default case
LDR             R0, =dword_6D1F40; jumptable 001C5818 case 7
BL              sub_546DB0
MOV             R0, R0,LSL#1
MOV             R6, #1
MOV             R0, R0,LSR#16
ADD             R5, R0, #3
MOV             R0, R4; jumptable 001C5818 default case
BL              sub_5C55B8
CMP             R0, R5
NOP
BEQ             loc_1C5924
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R5
MOV             R0, R4
BL              sub_14C548
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, [R9]
LDR             R0, [R0,#0xC]
VCVT.F32.U32    S0, S0
VLDR            S1, [R0,#8]
MOV             R0, R4
VMUL.F32        S0, S0, S16
VMUL.F32        S0, S0, S1
BL              sub_14D7F4
STRB            R6, [R4,#0xF3]
STR             R7, [R4,#0x420]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R9,PC}
